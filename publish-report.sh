#!/usr/bin/env bash
# Publish a finished deep-dive to the public GitHub Pages site.
#
# This repo stays PRIVATE: it holds the research notes, the working files and the
# ~931 MB of source filings. The site repo is a separate PUBLIC repo that holds
# nothing but the finished reports and a generated index. Copying one report
# across is the whole publish step.
#
# Usage:
#   ./publish-report.sh <path-to-report.html> "<Company Name>" <YYYY-MM-DD> "<one-line note>"
#   ./publish-report.sh --rebuild-index          # regenerate index.html from the manifest
#   ./publish-report.sh --list                   # show what is currently published
#
# Site repo location (override with SITE=...):
SITE="${SITE:-$HOME/Documents/1_Claude_AI/GitHub-Repos/equity-deep-dives}"
set -euo pipefail

MANIFEST="$SITE/reports.json"
# The page markup, kept beside this script rather than inside it.
TEMPLATE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/site/site-template.html"

die() { echo "error: $*" >&2; exit 1; }

# ---------- slug: "South West Pinnacle Exploration" -> "south-west-pinnacle-exploration"
slugify() {
  printf '%s' "$1" | tr '[:upper:]' '[:lower:]' \
    | sed 's/&/and/g; s/[^a-z0-9]\{1,\}/-/g; s/^-//; s/-$//'
}

# ---------- index.html, generated from reports.json + site-template.html ----------
# The look is the bahi khata direction recorded in the site repo's surface brief:
# a vermilion cloth binding board against unbleached ledger paper, column rules
# that bound the columns rather than crossing the text, and one type size across
# the whole register so rank is carried by weight, case, reversal and rule.
# The markup lives in site-template.html beside this script. Token replacement
# only, so the template's CSS braces need no escaping.
rebuild_index() {
  [ -f "$MANIFEST" ] || die "no manifest at $MANIFEST"
  [ -f "$TEMPLATE" ] || die "no template at $TEMPLATE"
  python3 - "$MANIFEST" "$TEMPLATE" "$SITE/index.html" <<'PY'
import json, sys, html
from datetime import date

manifest, template, out = sys.argv[1], sys.argv[2], sys.argv[3]
rows = json.load(open(manifest))
rows.sort(key=lambda r: r["date"], reverse=True)

MONTHS = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]

def pretty(d):
    y, m, dd = d.split("-")
    return f"{dd} {MONTHS[int(m)-1]} {y}"

def esc(s):
    return html.escape(str(s), quote=True)

# The folio is the order each entry was written, so the oldest is folio 1 and it
# never renumbers when a newer entry goes in above it.
total = len(rows)
trs = []
for i, r in enumerate(rows):
    folio = total - i
    trs.append(
        # data-k carries the sort key, so the client never has to parse a
        # displayed value: a padded number, a casefolded name, an ISO date.
        '        <tr>'
        f'<td class="n" data-k="{folio:03d}">{folio:02d}</td>'
        f'<td class="co" data-k="{esc(r["company"].casefold())}">'
        f'<a href="{esc(r["file"])}">{esc(r["company"])}</a></td>'
        f'<td class="note">{esc(r.get("note",""))}</td>'
        f'<td class="d" data-k="{esc(r["date"])}">{esc(pretty(r["date"]))}</td>'
        '</tr>'
    )

opened = pretty(rows[-1]["date"]) if rows else "not yet"
latest = pretty(rows[0]["date"]) if rows else "not yet"

doc = open(template).read()
for token, value in {
    "{{ROWS}}":   "\n".join(trs),
    "{{COUNT}}":  str(total),
    "{{OPENED}}": opened,
    "{{LATEST}}": latest,
    "{{BUILT}}":  pretty(date.today().isoformat()),
}.items():
    doc = doc.replace(token, value)

if "{{" in doc:
    sys.exit("error: template still has an unreplaced token")

open(out, "w").write(doc)
print(f"index.html rebuilt: {total} entr{'y' if total == 1 else 'ies'}")
PY
}


# ---------- modes ----------
[ -d "$SITE" ] || die "site repo not found at: $SITE (set SITE=... to override)"

case "${1:-}" in
  --rebuild-index) rebuild_index; exit 0 ;;
  --list)
    [ -f "$MANIFEST" ] || die "no manifest yet"
    python3 - "$MANIFEST" <<'PY'
import json, sys
rows = sorted(json.load(open(sys.argv[1])), key=lambda r: r["date"], reverse=True)
for r in rows:
    print(f'{r["date"]}  {r["company"]:34s}  {r["file"]}')
print(f'{len(rows)} report(s)')
PY
    exit 0 ;;
  --remove)
    # Unpublish an entry: drop its manifest rows, delete its files, rebuild.
    # Matches on company name or on a published filename, case-insensitively.
    WHAT="${2:?usage: $0 --remove \"<Company>\" | <file.html>}"
    [ -f "$MANIFEST" ] || die "no manifest yet"
    gone=$(python3 - "$MANIFEST" "$WHAT" <<'PY'
import json, sys
manifest, what = sys.argv[1], sys.argv[2]
rows = json.load(open(manifest))
key = what.strip().lower()
hit = [r for r in rows if r["company"].strip().lower() == key or r["file"].lower() == key]
if not hit:
    sys.exit(f'error: nothing published under "{what}"')
keep = [r for r in rows if r not in hit]
json.dump(keep, open(manifest, "w"), indent=2, ensure_ascii=False)
open(manifest, "a").write("\n")
print("\n".join(r["file"] for r in hit))
PY
    ) || exit 1
    printf '%s\n' "$gone" | while IFS= read -r f; do
      [ -n "$f" ] || continue
      rm -f -- "$SITE/$f" && echo "unpublished: $f"
    done
    rebuild_index
    echo "next: commit and push in $SITE"
    exit 0 ;;
  "") die "usage: $0 <report.html> \"<Company>\" <YYYY-MM-DD> \"<note>\"
       $0 --remove \"<Company>\" | <file.html>
       $0 --list | --rebuild-index" ;;
esac

SRC="$1"
COMPANY="${2:?company name required}"
DATE="${3:?date required as YYYY-MM-DD}"
NOTE="${4:-}"

[ -f "$SRC" ] || die "report not found: $SRC"
printf '%s' "$DATE" | grep -qE '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' || die "date must be YYYY-MM-DD, got: $DATE"

# Refuse to publish a file carrying a publish key, an ht-ml URL or a local path.
if grep -qiE 'update_key|ht-ml\.app|/Users/' "$SRC"; then
  die "refusing to publish: $SRC contains a publish key, an ht-ml.app URL or a local path"
fi

SLUG="$(slugify "$COMPANY")"
DEST_NAME="$SLUG-$DATE.html"
cp "$SRC" "$SITE/$DEST_NAME"

# Upsert the manifest row (one row per company+date).
python3 - "$MANIFEST" "$DEST_NAME" "$COMPANY" "$DATE" "$NOTE" <<'PY'
import json, os, sys
manifest, fname, company, date, note = sys.argv[1:6]
rows = json.load(open(manifest)) if os.path.exists(manifest) else []
rows = [r for r in rows if r["file"] != fname]
rows.append({"company": company, "date": date, "file": fname, "note": note})
rows.sort(key=lambda r: r["date"], reverse=True)
json.dump(rows, open(manifest, "w"), indent=2, ensure_ascii=False)
open(manifest, "a").write("\n")
PY

rebuild_index
echo "published: $COMPANY ($DATE) -> $DEST_NAME"
echo "next: commit and push in $SITE"
