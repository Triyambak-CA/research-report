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
- `<Company>/report-source/`, where the report was built modularly, plus its
  `build.py`
- `<Company>/research-streams/`, the raw evidence streams behind a report
- `_IPO-mode/` internal skill-development material
- The two helper scripts and `site/`

Reports supersede rather than update. SouthWest has both a 14-Jul-2026 and a
28-Aug-2026 edition; both stay. MTAR has 21-Sep-2026 and 22-Sep-2026.

### Reports built from a modular source

A report is a single self-contained HTML file, but a long one is easier to edit
in pieces. Where `<Company>/report-source/` exists, **edit the pieces and rebuild;
do not hand-patch the built file.**

```sh
python3 <Company>/report-source/build.py <Company>/report-source <out.html>
```

`build.py` joins `head, toc, hero, exec, s01..s20, sources` with a newline
between each and substitutes `style.css` and `app.js` into the `__CSS__` and
`__JS__` placeholders. It reproduces MTAR's built file byte for byte, so a
rebuild that differs means something else changed. Validate every build with
`python3 ~/.claude/skills/india-equity-deep-dive/scripts/validate.py <file>`
until it exits clean.

When a later edition corrects an earlier one, **mark the correction in the
section concerned** rather than quietly restating, and list the corrections in
the source section. A reader who has seen the earlier edition needs to know what
moved, including when the correction favours the company.

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

Every published report carries an "All reports" link, fixed bottom left, back to
the index. Without it a reader sent one report has no way to discover the rest,
since almost nobody arrives at the index first. `publish-report.sh` injects it on
the way across, so new reports get it automatically; `--relink` re-applies it to
everything already published. It is idempotent and styles itself from the
report's own CSS variables, so it follows whichever theme the reader picked. See
`site/home-link.py`.

## House rules

- No em dashes or en dashes anywhere. Hyphens only.
- Reports carry no buy, sell or hold rating and no price target. That refusal is
  the point of them, not an omission.
- This repo has a PRIVATE remote at github.com/Triyambak-CA/research-report. It
  holds the notes, the internal material and the filing shortcuts, so it stays
  private. The public site repo is a separate one, `equity-deep-dives`, and the
  two share no history: reports are copied across by `publish-report.sh`, never
  merged.

## Fetching filings for a LISTED company

Verified working from this machine on 22-Sep-2026. Send a browser user agent and
a referer to everything; a plain `curl` is refused.

```sh
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"
```

**bseindia.com works, nseindia.com returns 403.** Use BSE. The company's own site
works too.

**The fastest route to a company's filing links is screener's public page**, which
needs no login and lists annual reports, concall transcripts, presentations and
credit rating rationales with their real BSE URLs:

```sh
curl -s -A "$UA" -L "https://www.screener.in/company/<TICKER>/consolidated/" -o page.html
```

Then parse the `Annual reports`, `Concalls` and `Credit ratings` blocks for
`href`s. The same static page also carries the quarterly shareholding pattern,
the ratio table, and the P&L, balance sheet and cash flow tables. **The premium
Insights series is NOT in that HTML** - it loads from an API behind the login, so
Section 19's operating series still needs a logged-in browser session.

**ICRA rationales are behind a JavaScript viewer.** The landing page returns a
shell with no text. The PDF itself is at:

```sh
curl -s -A "$UA" -e "https://www.icra.in/Rationale/ShowRationaleReport/?Id=<ID>" \
  -L "https://www.icra.in/Rating/ShowRationalReportFilePdfViewer/<ID>" -o rationale.pdf
```

**Read consecutive rating rationales side by side**, not just the latest. The
stated rating sensitivities can change between them, and that change is only
visible in the comparison.

**Takeover-code disclosures on BSE are usually image-only scans.** `pdftotext`
returns nothing. Render and read the page instead:

```sh
pdftoppm -r 150 -png -f 1 -l 1 filing.pdf out
```

Bulk and block deals are on a **different BSE feed** from corporate
announcements. An announcements query that returns none is not evidence that
none occurred.

## Fetching offer documents from SEBI

For an IPO run, everything comes from sebi.gov.in and the listing pages are
JavaScript-driven, so the PDFs are not linkable from the visible HTML.

**Send a browser user-agent or you get HTTP 530.** A plain `curl` with no
`-A` is refused. The skill's `ipo-mode.md` says SEBI serves these to a plain
command-line fetch; that was not true as at Sep-2026.

The listing endpoints, searched by POST with a `search` term:

```sh
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36"
curl -s -L --retry 3 --retry-all-errors -A "$UA" \
  -X POST "https://www.sebi.gov.in/sebiweb/home/HomeAction.do" \
  --data-urlencode "doListing=yes" --data-urlencode "sid=3" \
  --data-urlencode "ssid=15" --data-urlencode "smid=10" \
  --data-urlencode "search=<Company Name>" --data-urlencode "nextValue=1"
```

`smid=10` is drafts filed with SEBI, `smid=11` red herring prospectuses filed
with the RoC, `smid=12` final offer documents, `smid=78` other documents.
**Check 11 and 12, not just 10** - a draft found in the morning can have a red
herring prospectus behind it by the afternoon, and the latest filed document
governs.

The actual PDF sits in an `<iframe src='../../../web/?file=...'>` on the
landing page, and sibling documents (abridged prospectus, addenda) are only in
the `<h1>` and `<title>` as `commondocs` links. Grep the page for
`sebi_data/(attachdocs|commondocs)/[^'"]+\.pdf` to get all of them.

Extract with `pdftotext -layout`. Newspaper-advertisement addenda are usually
image-only and need `pdftoppm -r 170 -png` plus a visual read. Offer documents
run 550 to 700 pages; build a printed-page index once (printed page N is
usually form-feed page N+5) and address the document by its own page numbers.
