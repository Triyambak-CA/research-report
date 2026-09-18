# Research Report

Fundamental research on Indian listed companies. One folder per company, built
with the `india-equity-deep-dive` skill.

## The one rule that loses data if you get it wrong

**Source filings are NOT versioned.** Annual reports, DRHPs and concall
transcripts live in `<Company>/source-docs/`, which `.gitignore` excludes. There
are roughly 931 MB of them across 794 files, and this repo tracks only 66 files.

If you are working in a clone or a treehouse worktree, that folder is a shortcut
pointing at the master copy on this machine. Anything you download writes through
it into the master and is kept. **A company with no filings folder in the master
has no shortcut**, so filings you download for it would sit in a throwaway
worktree and be deleted with it.

Having a folder in this repo does NOT mean it has a filings folder. Several
companies here have notes and a finished report but no `source-docs` at all.

So, before downloading a single filing, for EVERY company, with no exception:

```sh
./link-source-docs.sh --new "<Company Name>"
```

It creates the folder in the master if it is missing, says so and carries on if
it is already there, and points this checkout at it either way. Running it when
it was not needed costs nothing; skipping it when it was needed loses the
filings. Verified: a file written through the shortcut survives the worktree
being destroyed, and running it on a company that already has filings leaves
them untouched.

`./link-source-docs.sh` with no arguments links every company the master already
covers, and a treehouse `post_create` hook in `~/.config/treehouse/config.toml`
runs it on each new worktree. That handles the companies already covered; it
cannot help with one the master has never held, which is why the line above is
unconditional.

Never `git add` anything under `source-docs/`.

## Getting crew work back from firstmate

This project is registered with firstmate as **direct-PR**. Crew work is pushed
as a branch and arrives as a pull request on the private remote. The captain
reviews and merges it there, then brings it into the master copy with a plain:

```sh
git pull
```

That is the normal route. Use it.

`./pull-from-fleet.sh` is the fallback, for taking work straight from firstmate's
own clone when it has not been raised as a pull request yet. It fast-forwards
only and refuses if the incoming commits touch a file with uncommitted local
edits, so it cannot land on work in progress. `--check` previews without changing
anything.

Filings need neither route: they write straight into the master copy through the
`source-docs` shortcuts, the moment a crewmate downloads them.

## What IS versioned

- `<Company>/notes-0X-<topic>.md` research notes, and `working-notes.md`
- `<Company>/<ticker>-deep-dive-<date>.html`, the finished report
- `_IPO-mode/` internal skill-development material
- The two helper scripts and `site/`

Reports supersede rather than update. SouthWest has both a 14-Jul-2026 and a
28-Aug-2026 edition; both stay.

## Publishing

Finished reports go to a **separate public repo** served by GitHub Pages at
https://triyambak-ca.github.io/equity-deep-dives/ . This repo stays private,
because it holds the notes, the internal material and the filings.

```sh
./publish-report.sh <report.html> "<Company>" <YYYY-MM-DD> "<one-line note>"
./publish-report.sh --remove "<Company>"     # unpublish
./publish-report.sh --list
```

Then commit and push in `~/Documents/1_Claude_AI/GitHub-Repos/equity-deep-dives`.
The script refuses any file containing an ht-ml `update_key`, an ht-ml.app URL or
a local machine path, so a publish sidecar cannot reach a public repo by accident.

`index.html` on that site is GENERATED from `reports.json` by
`site/site-template.html`. Never hand-edit it; it is overwritten on every rebuild.

## House rules

- No em dashes or en dashes anywhere. Hyphens only.
- Reports carry no buy, sell or hold rating and no price target. That refusal is
  the point of them, not an omission.
- This repo has a PRIVATE remote at github.com/Triyambak-CA/research-report. It
  holds the notes, the internal material and the filing shortcuts, so it stays
  private. The public site repo is a separate one, `equity-deep-dives`, and the
  two share no history: reports are copied across by `publish-report.sh`, never
  merged.
