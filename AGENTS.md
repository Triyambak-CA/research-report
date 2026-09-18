# Research Report

Fundamental research on Indian listed companies. One folder per company, built
with the `india-equity-deep-dive` skill.

## The one rule that loses data if you get it wrong

**Source filings are NOT versioned.** Annual reports, DRHPs and concall
transcripts live in `<Company>/source-docs/`, which `.gitignore` excludes. There
are roughly 931 MB of them across 794 files, and this repo tracks only 66 files.

If you are working in a clone or a treehouse worktree, that folder is a shortcut
pointing at the master copy on this machine. Anything you download writes through
it into the master and is kept. **But a company that does not exist in the master
yet has no shortcut**, so filings you download for it would sit in a throwaway
worktree and be deleted with it.

So, before downloading a single filing for a company not already in this repo:

```sh
./link-source-docs.sh --new "<Company Name>"
```

That creates the folder in the master first and points this checkout at it. Then
download as usual. Verified: a file written through the shortcut survives the
worktree being destroyed.

For companies that already exist, `./link-source-docs.sh` with no arguments links
them all. A treehouse `post_create` hook in `~/.config/treehouse/config.toml` runs
it automatically on every new worktree, so this is usually already done for you.

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
