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

die() { echo "error: $*" >&2; exit 1; }

# ---------- slug: "South West Pinnacle Exploration" -> "south-west-pinnacle-exploration"
slugify() {
  printf '%s' "$1" | tr '[:upper:]' '[:lower:]' \
    | sed 's/&/and/g; s/[^a-z0-9]\{1,\}/-/g; s/^-//; s/-$//'
}

# ---------- index.html, generated from reports.json ----------
# Phosphor theme (~/.claude/context/design.md): CRT screen on an instrument
# bench, phosphor green + amber only, no red, square corners, no shadows,
# flourishes off, 11px functional floor, system fonts, self-contained.
rebuild_index() {
  [ -f "$MANIFEST" ] || die "no manifest at $MANIFEST"
  python3 - "$MANIFEST" "$SITE/index.html" <<'PY'
import json, sys, html
from datetime import date

manifest, out = sys.argv[1], sys.argv[2]
rows = json.load(open(manifest))
rows.sort(key=lambda r: r["date"], reverse=True)

MONTHS = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
def pretty(d):
    y, m, dd = d.split("-")
    return f"{dd}-{MONTHS[int(m)-1]}-{y}"

def esc(s):
    return html.escape(str(s), quote=True)

trs = []
for r in rows:
    trs.append(
        '<tr>'
        f'<td class="co"><a href="{esc(r["file"])}">{esc(r["company"])}</a></td>'
        f'<td class="nt">{esc(r.get("note",""))}</td>'
        f'<td class="dt">{esc(pretty(r["date"]))}</td>'
        '</tr>'
    )

span = ""
if rows:
    span = f'{pretty(rows[-1]["date"])} to {pretty(rows[0]["date"])}'

doc = f"""<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Equity Deep Dives</title>
<meta name="description" content="Independent fundamental research on Indian listed companies. No buy or sell ratings.">
<style>
  :root{{
    --bench:#141A18; --bezel:#1F2624; --screen:#070B09;
    --grat:rgba(61,255,154,0.10); --grat-maj:rgba(61,255,154,0.19);
    --ch1:#3DFF9A; --ch2:#FFB347;
    --ink:#C8D6D0; --dim:#849490; --edge:rgba(200,214,208,0.14);
    --mono:ui-monospace,"SF Mono",Menlo,Consolas,"Courier New",monospace;
    --sans:-apple-system,"Helvetica Neue",Helvetica,Arial,sans-serif;
  }}
  *{{box-sizing:border-box}}
  body{{
    margin:0; background:var(--bench); color:var(--ink);
    font-family:var(--sans); font-size:13px; line-height:1.5;
    -webkit-font-smoothing:antialiased;
  }}
  .wrap{{max-width:940px; margin:0 auto; padding:28px 20px 56px}}

  /* knob rail */
  .rail{{
    display:flex; flex-wrap:wrap; gap:0; border:1px solid var(--bezel);
    background:var(--bench); margin-bottom:0;
  }}
  .knob{{padding:10px 16px; border-right:1px solid var(--bezel); min-width:132px}}
  .knob:last-child{{border-right:none}}
  .kl{{font-family:var(--mono); font-size:11px; letter-spacing:.06em;
      text-transform:uppercase; color:var(--dim); display:block}}
  .kv{{font-family:var(--mono); font-size:15px; color:var(--ch1); margin-top:3px;
      font-variant-numeric:tabular-nums}}
  .kv.amber{{color:var(--ch2)}}

  /* screen */
  .screen{{
    background:var(--screen); border:1px solid var(--bezel); border-top:none;
    background-image:
      linear-gradient(var(--grat) 1px, transparent 1px),
      linear-gradient(90deg, var(--grat) 1px, transparent 1px),
      linear-gradient(var(--grat-maj) 1px, transparent 1px),
      linear-gradient(90deg, var(--grat-maj) 1px, transparent 1px);
    background-size:24px 24px, 24px 24px, 96px 96px, 96px 96px;
    padding:22px 20px 24px;
  }}
  h1{{
    font-family:var(--mono); font-size:19px; font-weight:600; letter-spacing:.02em;
    margin:0 0 4px; color:var(--ink);
  }}
  .sub{{font-size:12px; color:var(--dim); margin:0 0 20px; max-width:60ch}}

  table{{width:100%; border-collapse:collapse; font-size:13px}}
  caption{{
    text-align:left; background:#0D120F; border:1px solid var(--edge);
    border-bottom:none; color:var(--dim); font-family:var(--mono);
    font-size:11px; letter-spacing:.06em; text-transform:uppercase;
    padding:7px 10px;
  }}
  th{{
    text-align:left; font-family:var(--mono); font-size:11px; font-weight:500;
    letter-spacing:.06em; text-transform:uppercase; color:var(--dim);
    padding:8px 10px; border-bottom:1px solid var(--edge);
    background:rgba(255,255,255,0.02);
  }}
  th.r{{text-align:right}}
  td{{padding:9px 10px; border-bottom:1px solid var(--edge); vertical-align:top}}
  tbody tr:last-child td{{border-bottom:none}}
  table{{border:1px solid var(--edge)}}
  .co a{{color:var(--ch1); text-decoration:none; font-weight:500}}
  .co a:hover{{text-decoration:underline}}
  .nt{{color:var(--dim); font-size:12px}}
  .dt{{
    font-family:var(--mono); font-size:12px; color:var(--ch2);
    font-variant-numeric:tabular-nums; white-space:nowrap; text-align:right;
  }}

  .note{{
    margin-top:18px; padding:11px 13px; border:1px solid var(--edge);
    background:rgba(255,255,255,0.02); color:var(--dim); font-size:11px;
    line-height:1.6;
  }}
  .note b{{color:var(--ink); font-weight:600}}
  footer{{
    margin-top:14px; font-family:var(--mono); font-size:11px; color:var(--dim);
    display:flex; justify-content:space-between; flex-wrap:wrap; gap:8px;
  }}
  @media (max-width:620px){{
    .knob{{min-width:50%; border-right:none; border-bottom:1px solid var(--bezel)}}
    .nt{{display:none}}
  }}
</style>
</head>
<body>
<div class="wrap">

  <div class="rail">
    <div class="knob"><span class="kl">Reports</span><span class="kv">{len(rows)}</span></div>
    <div class="knob"><span class="kl">Coverage</span><span class="kv amber">{esc(span)}</span></div>
    <div class="knob"><span class="kl">Market</span><span class="kv">NSE / BSE</span></div>
    <div class="knob"><span class="kl">Rating</span><span class="kv amber">None issued</span></div>
  </div>

  <div class="screen">
    <h1>Equity Deep Dives</h1>
    <p class="sub">Independent fundamental research on Indian listed companies. Forensic
    accounting checks, promoter and governance analysis, reverse DCF and a two-way pitch.
    Each report states its own as-of date and stands on the disclosures available then.</p>

    <table>
      <caption>Published reports, newest first</caption>
      <thead>
        <tr><th>Company</th><th>What it covers</th><th class="r">As of</th></tr>
      </thead>
      <tbody>
        {chr(10).join("        " + t for t in trs).strip()}
      </tbody>
    </table>

    <div class="note">
      <b>Not investment advice.</b> These are personal research notes published for the
      record. Nothing here is a recommendation to buy, sell or hold any security, no
      report carries a rating or a price target, and the author is not a SEBI-registered
      research analyst or investment adviser. Figures are drawn from public filings and
      may contain errors. Do your own work before acting on anything you read here.
    </div>

    <footer>
      <span>Site rebuilt {date.today().isoformat()}</span>
      <span>Sources: company filings, exchange disclosures, concall transcripts</span>
    </footer>
  </div>

</div>
</body>
</html>
"""
open(out, "w").write(doc)
print(f"index.html rebuilt: {len(rows)} report(s)")
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
  "") die "usage: $0 <report.html> \"<Company>\" <YYYY-MM-DD> \"<note>\"  |  --rebuild-index  |  --list" ;;
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
