#!/usr/bin/env bash
# Bring finished crew work from firstmate's copy into this, the master copy.
#
# WHY THIS EXISTS: firstmate is read-only outside its own project clones, and
# fleet sync deliberately skips local-only projects, so nothing it does can reach
# this folder. That is the safety property, not a gap: a crew can run all night
# and never touch the files you are editing. The cost is that finished reports
# and notes land in firstmate's copy and someone has to carry them across.
# This is that step, made one command.
#
# Downloaded filings under <Company>/source-docs are NOT involved: those write
# straight into this folder through the shortcuts link-source-docs.sh creates.
#
# Usage:
#   ./pull-from-fleet.sh              show what is waiting, then bring it across
#   ./pull-from-fleet.sh --check      show what is waiting and stop
# Override firstmate's copy:  FLEET=/path/to/clone ./pull-from-fleet.sh
set -euo pipefail

FLEET="${FLEET:-$HOME/firstmate/projects/Research_Report}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BRANCH="${BRANCH:-main}"
CHECK=0
[ "${1:-}" = "--check" ] && CHECK=1

die() { echo "error: $*" >&2; exit 1; }

# --- sanity -----------------------------------------------------------------
[ -d "$HERE/.git" ] || die "run this from the master copy, not a worktree or a clone"
case "$HERE" in
  "$HOME/firstmate"/*) die "this IS firstmate's copy; run it in your own folder instead" ;;
esac
[ -d "$FLEET/.git" ] || die "firstmate's copy not found at: $FLEET
       register the project in firstmate first, or pass FLEET=/path/to/clone"

git -C "$FLEET" rev-parse --verify --quiet "$BRANCH" >/dev/null \
  || die "firstmate's copy has no branch '$BRANCH'"

# --- what is waiting --------------------------------------------------------
git fetch -q "$FLEET" "$BRANCH"
INCOMING=$(git rev-list --count HEAD..FETCH_HEAD)

if [ "$INCOMING" -eq 0 ]; then
  echo "Nothing waiting. Your folder already has everything the crew has landed."
  exit 0
fi

echo "$INCOMING commit(s) waiting in firstmate's copy:"
echo
git log --oneline --no-decorate HEAD..FETCH_HEAD | sed 's/^/  /'
echo
echo "Files they touch:"
git diff --stat HEAD FETCH_HEAD | sed 's/^/  /'
echo

# --- refuse if it would land on something you are editing -------------------
# git would refuse anyway, but with a message that means nothing to a reader.
CLASH=""
while IFS= read -r f; do
  [ -n "$f" ] || continue
  if ! git diff --quiet -- "$f" 2>/dev/null; then
    CLASH="$CLASH  $f"$'\n'
  fi
done < <(git diff --name-only HEAD FETCH_HEAD)

if [ -n "$CLASH" ]; then
  echo "STOPPED. You have your own uncommitted edits to files the crew also changed:"
  printf '%s' "$CLASH"
  echo "Commit or set aside those edits first, then run this again."
  exit 1
fi

[ "$CHECK" -eq 1 ] && { echo "(--check: nothing brought across)"; exit 0; }

# --- bring it across --------------------------------------------------------
# --ff-only: the crew's work should sit on top of yours. If it cannot, something
# diverged and that is a decision, not something a script should guess at.
if git merge --ff-only FETCH_HEAD; then
  echo
  echo "Done. Your folder now has the crew's finished work."
else
  echo
  echo "Could not fast-forward: your folder and firstmate's copy have diverged."
  echo "Nothing was changed. Look at the two histories before merging by hand."
  exit 1
fi
