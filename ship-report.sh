#!/usr/bin/env bash
# Ship finished reports after their PR has merged: one command, no typed metadata.
#
#   1. Confirm each report (and the publish scripts) is exactly what origin/main holds.
#   2. Fast-forward the master copy. Skipped, with one line, if it cannot be done safely.
#   3. Publish through publish-report.sh, then commit and push the public site repo.
#   4. Poll the live URL until the page is up (bounded wait).
#   5. Print the live URLs, one per line.
#
# Usage (run from a clone of this repo, after the PR has merged):
#   ./ship-report.sh <Company-folder> [<Company-folder> ...]
#   ./ship-report.sh --all                 re-ship every report marked published
#   ./ship-report.sh --dry-run ...         do everything except write: nothing is
#                                          copied into the site, committed or pushed,
#                                          and the master copy is not touched
#
# The display name, report file, date, note and published flag come from
# <Company>/publish.json, never from the command line. Re-shipping an unchanged
# report changes nothing and makes no commit.
#
# Overrides (environment):
#   SITE=       the site repo checkout        (as for publish-report.sh)
#   MASTER=     the master copy of this repo  (default ~/Documents/1_Claude_AI/Others/Research Report)
#   SITE_URL=   where the site is served      (default the GitHub Pages address)
#   REMOTE= BRANCH=            private remote and branch to ship from (origin, main)
#   POLL_MAX= POLL_EVERY=      seconds to wait for the page to go live, and between tries (300, 10)
set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export SITE="${SITE:-$HOME/Documents/1_Claude_AI/GitHub-Repos/equity-deep-dives}"
MASTER="${MASTER:-$HOME/Documents/1_Claude_AI/Others/Research Report}"
SITE_URL="${SITE_URL:-https://triyambak-ca.github.io/equity-deep-dives}"
REMOTE="${REMOTE:-origin}"
BRANCH="${BRANCH:-main}"
POLL_MAX="${POLL_MAX:-300}"
POLL_EVERY="${POLL_EVERY:-10}"

die() { echo "error: $*" >&2; exit 1; }
say() { echo "$*"; }

DRY=0; ALL=0; COMPANIES=()
for a in "$@"; do
  case "$a" in
    --dry-run) DRY=1 ;;
    --all) ALL=1 ;;
    -h|--help) sed -n '2,25p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    -*) die "unknown option: $a" ;;
    *) COMPANIES+=("${a%/}") ;;
  esac
done
if [ "$ALL" -eq 1 ]; then
  [ ${#COMPANIES[@]} -eq 0 ] || die "--all takes no company names"
elif [ ${#COMPANIES[@]} -eq 0 ]; then
  die "usage: $0 <Company-folder> [...] | --all   (add --dry-run to rehearse)"
fi

cd "$HERE"
[ -d .git ] || [ -f .git ] || die "run this from a clone of the research repo"
[ -d "$SITE/.git" ] || die "site repo not found at: $SITE (set SITE=... to override)"
[ "$(git -C "$SITE" rev-parse --abbrev-ref HEAD)" = "main" ] || die "site repo is not on branch main"

# json <file> <key>: read one field from a publish.json
json() { python3 -c 'import json,sys; v=json.load(open(sys.argv[1]))[sys.argv[2]]; print(str(v).lower() if isinstance(v,bool) else v)' "$1" "$2"; }

# ---------- which companies ----------
if [ "$ALL" -eq 1 ]; then
  for f in */publish.json; do
    [ -f "$f" ] || continue
    [ "$(json "$f" published)" = "true" ] && COMPANIES+=("${f%/publish.json}")
  done
  [ ${#COMPANIES[@]} -gt 0 ] || die "no company is marked published"
else
  for c in "${COMPANIES[@]}"; do
    [ -f "$c/publish.json" ] || die "$c has no publish.json (the deep-dive worker writes it beside the report)"
    [ "$(json "$c/publish.json" published)" = "true" ] \
      || die "$c is marked not published in $c/publish.json; set \"published\": true there first"
  done
fi

# ---------- step 1: local files must equal origin/main ----------
git fetch -q "$REMOTE" "$BRANCH" || die "could not fetch $REMOTE $BRANCH"
TIP=$(git rev-parse FETCH_HEAD)   # a commit id, so REMOTE may be a name or a path
TIPNAME="$REMOTE/$BRANCH"
same_as_remote() {  # same_as_remote <path>: worktree file is byte-identical to origin/main's
  local want have
  want=$(git rev-parse -q --verify "$TIP:$1") || { echo "  $1 is not on $TIPNAME"; return 1; }
  [ -f "$1" ] || { echo "  $1 is missing here"; return 1; }
  have=$(git hash-object -- "$1")
  [ "$want" = "$have" ] || { echo "  $1 differs from $TIPNAME"; return 1; }
}
BAD=0
for f in ship-report.sh publish-report.sh site/site-template.html site/home-link.py; do
  same_as_remote "$f" || BAD=1
done
for c in "${COMPANIES[@]}"; do
  same_as_remote "$c/publish.json" || BAD=1
  [ -f "$c/publish.json" ] && { same_as_remote "$c/$(json "$c/publish.json" report)" || BAD=1; }
done
if [ "$BAD" -eq 1 ]; then
  echo "REFUSED: what is here does not match $TIP, so it is not what was merged." >&2
  echo "Run 'git pull' (or 'git checkout $BRANCH && git pull') in this clone and try again." >&2
  exit 1
fi
say "checked: every report and publish script matches $TIPNAME"

# ---------- step 2: master copy, fast-forward only ----------
update_master() {
  local m="$MASTER" incoming dirty clash
  [ -d "$m/.git" ] || { say "master copy: skipped, not found at $m"; return 0; }
  if [ "$(cd "$m" && pwd -P)" = "$(pwd -P)" ]; then say "master copy: skipped, this is the master copy"; return 0; fi
  [ "$(git -C "$m" rev-parse --abbrev-ref HEAD)" = "$BRANCH" ] \
    || { say "master copy: skipped, it is not on branch $BRANCH"; return 0; }
  if [ "$DRY" -eq 1 ]; then
    # Read-only: judge from the commit this clone just fetched, write nothing there.
    local head; head=$(git -C "$m" rev-parse HEAD)
    git cat-file -e "$head^{commit}" 2>/dev/null || { say "master copy: dry run, cannot judge (it holds commits this clone lacks); not touched"; return 0; }
    [ "$head" = "$(git rev-parse "$TIP")" ] && { say "master copy: already up to date"; return 0; }
    git merge-base --is-ancestor "$head" "$TIP" || { say "master copy: dry run, would skip, it cannot fast-forward"; return 0; }
    incoming=$(git diff --name-only "$head" "$TIP")
  else
    git -C "$m" fetch -q "$REMOTE" "$BRANCH" || { say "master copy: skipped, could not fetch"; return 0; }
    local mtip; mtip=$(git -C "$m" rev-parse FETCH_HEAD)
    [ "$(git -C "$m" rev-parse HEAD)" = "$mtip" ] && { say "master copy: already up to date"; return 0; }
    git -C "$m" merge-base --is-ancestor HEAD "$mtip" \
      || { say "master copy: skipped, it cannot fast-forward (it has commits of its own or has diverged)"; return 0; }
    incoming=$(git -C "$m" diff --name-only HEAD "$mtip")
  fi
  # Anything the master copy has edited (tracked, staged or new) that the pull would touch.
  dirty=$( { git -C "$m" diff --name-only HEAD; git -C "$m" ls-files --others --exclude-standard; } | sort -u)
  clash=$(comm -12 <(printf '%s\n' "$incoming" | sort -u) <(printf '%s\n' "$dirty"))
  if [ -n "$clash" ]; then
    say "master copy: skipped, uncommitted changes in the way: $(printf '%s' "$clash" | tr '\n' ' ')"
    return 0
  fi
  if [ "$DRY" -eq 1 ]; then say "master copy: dry run, would fast-forward"; return 0; fi
  if git -C "$m" merge -q --ff-only "$mtip" >/dev/null 2>&1; then
    say "master copy: fast-forwarded"
  else
    say "master copy: skipped, git declined the fast-forward; nothing changed"
  fi
}
update_master

# ---------- step 3: publish into a staging copy of the site, then decide ----------
sync_site() {  # bring a site checkout level with its remote, fast-forward only
  git -C "$1" fetch -q origin main || die "could not fetch the site repo"
  git -C "$1" merge-base --is-ancestor HEAD origin/main \
    || { git -C "$1" merge-base --is-ancestor origin/main HEAD && return 0; die "site repo has diverged from origin/main"; }
  git -C "$1" merge -q --ff-only origin/main >/dev/null 2>&1 || die "could not fast-forward the site repo (uncommitted changes in the way?)"
}
if [ "$DRY" -eq 0 ]; then sync_site "$SITE"; fi
STAGE="$(mktemp -d "${TMPDIR:-/tmp}/ship-stage.XXXXXX")"
trap 'rm -rf "$STAGE"' EXIT
cp -R "$SITE/." "$STAGE/"
if [ "$DRY" -eq 1 ]; then sync_site "$STAGE"; fi

FILES=(); URLS=()
for c in "${COMPANIES[@]}"; do
  P="$c/publish.json"
  NAME=$(json "$P" company); DATE=$(json "$P" date); NOTE=$(json "$P" note); REP=$(json "$P" report)
  # publish-report.sh keeps its own refusals (publish key, ht-ml URL, local path).
  out=$(SITE="$STAGE" "$HERE/publish-report.sh" "$c/$REP" "$NAME" "$DATE" "$NOTE") \
    || die "publish-report.sh refused $c; nothing was published"
  fname=$(printf '%s\n' "$out" | sed -n 's/^published: .* -> //p')
  [ -n "$fname" ] || die "could not tell which file $c published as"
  FILES+=("$fname"); URLS+=("$SITE_URL/$fname")
  # A second edition of the same company already on the site stays put; say so.
  others=$(python3 - "$STAGE/reports.json" "$NAME" "$fname" <<'PY'
import json, sys
rows = json.load(open(sys.argv[1]))
print(" ".join(r["file"] for r in rows if r["company"] == sys.argv[2] and r["file"] != sys.argv[3]))
PY
)
  [ -z "$others" ] || say "note: the site also lists an older edition of $NAME ($others); use ./publish-report.sh --remove if it should go"
done

# What actually changed, not counting the index's "Updated <today>" stamp.
CHANGED=()
for f in "${FILES[@]}" reports.json; do
  cmp -s "$STAGE/$f" "$SITE/$f" 2>/dev/null || CHANGED+=("$f")
done
if [ ${#CHANGED[@]} -gt 0 ]; then
  CHANGED+=(index.html)   # generated from the manifest, so it follows any real change
else
  norm() { sed 's/Updated [0-9]\{2\} [A-Z][a-z]\{2\} [0-9]\{4\}/Updated -/' "$1"; }
  cmp -s <(norm "$STAGE/index.html") <(norm "$SITE/index.html") \
    || say "note: index.html differs from the live one for a reason other than the date stamp; left alone (nothing else changed)"
fi

if [ ${#CHANGED[@]} -eq 0 ]; then
  say "site: nothing changed, no commit"
elif [ "$DRY" -eq 1 ]; then
  say "site: dry run, would commit and push: ${CHANGED[*]}"
else
  for f in "${CHANGED[@]}"; do
    git -C "$SITE" diff --quiet HEAD -- "$f" 2>/dev/null \
      && [ -z "$(git -C "$SITE" ls-files --others -- "$f")" ] \
      || die "$SITE has uncommitted changes to $f; not overwriting it"
  done
  for f in "${CHANGED[@]}"; do cp "$STAGE/$f" "$SITE/$f"; done
  git -C "$SITE" add -- "${CHANGED[@]}"
  if [ ${#COMPANIES[@]} -eq 1 ]; then
    MSG="Publish $(json "${COMPANIES[0]}/publish.json" company) ($(json "${COMPANIES[0]}/publish.json" date))"
  else
    MSG="Re-ship ${#COMPANIES[@]} reports from the research repo"
  fi
  git -C "$SITE" commit -q -m "$MSG" -m "Shipped by ship-report.sh from $(git rev-parse --short "$TIP") of the research repo." \
    -m "Files: ${CHANGED[*]}"
  git -C "$SITE" push -q origin main || die "committed in $SITE but the push failed; fix and push there by hand"
  say "site: committed and pushed (${CHANGED[*]})"
fi

# ---------- step 4: poll until live ----------
LIVE_OK=1
if [ "$DRY" -eq 0 ]; then
  poll_ok() {  # poll_ok <file>: the served page equals the one just shipped
    local deadline=$(( $(date +%s) + POLL_MAX )) got
    got="$(mktemp "${TMPDIR:-/tmp}/ship-poll.XXXXXX")"
    while :; do
      if curl -sf --max-time 20 -H 'Cache-Control: no-cache' "$SITE_URL/$1?ship=$(date +%s)" -o "$got" 2>/dev/null \
         && cmp -s "$got" "$SITE/$1"; then rm -f "$got"; return 0; fi
      [ "$(date +%s)" -lt "$deadline" ] || { rm -f "$got"; return 1; }
      sleep "$POLL_EVERY"
    done
  }
  say "waiting for the pages to go live (up to ${POLL_MAX}s)..."
  for f in "${FILES[@]}"; do
    if poll_ok "$f"; then say "live: $f"; else say "NOT CONFIRMED LIVE after ${POLL_MAX}s: $f"; LIVE_OK=0; fi
  done
fi

# ---------- step 5: the URLs ----------
[ "$DRY" -eq 1 ] && say "dry run: nothing was written. Live addresses would be:" || say "done. Live addresses:"
printf '%s\n' "${URLS[@]}"
[ "$LIVE_OK" -eq 1 ] || { echo "warning: a page was not confirmed live yet; GitHub Pages can lag. Check the address above." >&2; exit 3; }
