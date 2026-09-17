#!/usr/bin/env bash
# Point this checkout's per-company source-docs/ folders at the master copy.
#
# WHY: the raw filings (annual reports, DRHPs, concall transcripts) are ~1 GB and
# deliberately not versioned - see .gitignore. A clone of this repo (firstmate's
# copy under ~/firstmate/projects/, a treehouse worktree, anything) therefore has
# the notes and the HTML reports but none of the documents behind them. This
# script symlinks each <Company>/source-docs in THIS checkout to the same folder
# in the master copy, so an agent working in a clone reads the identical files
# without a second gigabyte on disk.
#
# Safe to re-run: it skips what is already correct and never deletes real data.
# Only works where the master copy is reachable on the same machine.
#
# Usage:  ./link-source-docs.sh [--dry-run]
# Override the master copy:  MASTER="/path/to/Research Report" ./link-source-docs.sh
set -euo pipefail

MASTER="${MASTER:-$HOME/Documents/1_Claude_AI/Others/Research Report}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DRY=0
[ "${1:-}" = "--dry-run" ] && DRY=1

if [ "$HERE" = "$MASTER" ]; then
  echo "This IS the master copy ($MASTER); nothing to link."
  exit 0
fi
if [ ! -d "$MASTER" ]; then
  echo "error: master copy not found at: $MASTER" >&2
  echo "       pass MASTER=/path/to/'Research Report' to override." >&2
  exit 1
fi

linked=0
skipped=0
kept=0
shopt -s nullglob
for src in "$MASTER"/*/source-docs; do
  [ -d "$src" ] || continue
  company="$(basename "$(dirname "$src")")"
  dest="$HERE/$company/source-docs"

  # Already pointing at the right place.
  if [ -L "$dest" ] && [ "$(readlink "$dest")" = "$src" ]; then
    skipped=$((skipped + 1))
    continue
  fi

  # A real directory holding files is the captain's data - never touch it.
  if [ -d "$dest" ] && [ ! -L "$dest" ] && [ -n "$(ls -A "$dest" 2>/dev/null)" ]; then
    echo "KEEP  $company/source-docs (real folder with files; left alone)"
    kept=$((kept + 1))
    continue
  fi

  if [ "$DRY" = 1 ]; then
    echo "LINK  $company/source-docs -> $src   (dry run)"
  else
    mkdir -p "$HERE/$company"
    rm -rf "$dest"   # only ever an empty dir or a stale symlink by this point
    ln -s "$src" "$dest"
    echo "LINK  $company/source-docs -> $src"
  fi
  linked=$((linked + 1))
done

echo "done: $linked linked, $skipped already correct, $kept left alone"
