# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Stack

Static HTML and CSS, single self-contained file, no build step and no external
requests. Served by GitHub Pages from this repo. `index.html` is GENERATED from
`reports.json` by `publish-report.sh` in a separate private repo, so the design
lives in that script's template, never in hand-edited output.

## Users

One audience, arriving cold: someone who has seen a link to one of these reports
and wants to know what else is here and whether the author is worth reading.
Indian retail and semi-professional investors, other chartered accountants, and
the occasional person checking the author's credibility before acting on a report.
They arrive on a phone as often as a desktop, usually from a chat message or a
post, and they are deciding in about ten seconds whether to open a report or leave.

## Product Purpose

A published record of independent fundamental research on Indian listed companies.
It exists so the work is on the record with a date attached, and so a reader can
find the report they were told about. Success is a visitor opening a report.

## Positioning

Every report is a forensic deep dive that deliberately issues NO buy, sell or hold
rating and no price target. The product is the evidence and the reasoning, not a
call. That refusal is the whole positioning: a brokerage note cannot truthfully
copy it, because a note without a recommendation is not what brokerages sell.
Each report is dated and stands only on the disclosures available on that date.

## Operating Context

Research is done company by company in a private repo alongside roughly 931 MB of
annual reports, DRHPs and concall transcripts. A finished report is a single
self-contained dark-theme HTML file, typically 150 to 250 KB, covering forensic
accounting checks, promoter and governance analysis, a guidance-versus-delivery
scorecard, scuttlebutt, reverse DCF, capex IRR and order book execution. Reports
supersede rather than update: South West Pinnacle has both a 14-Jul-2026 and a
28-Aug-2026 edition. Author is a practising Chartered Accountant (ICAI), writing
personally, not under his firm.

## Capabilities and Constraints

- Seven reports today, covering 08-Jul-2026 to 28-Aug-2026. Grows a few per quarter.
- The list is the entire function. No search, no accounts, no comments, no feeds.
- Each row has: company name, a one-line note, an as-of date, a link.
- Must carry a standing disclosure: not investment advice, no rating, no price
  target, author is not a SEBI-registered research analyst or investment adviser.
- The index loads the same three Google Fonts the reports load (Cormorant
  Garamond, Inter, JetBrains Mono). Matching the reports outranks being
  offline-safe here. No analytics, no trackers, no other third-party requests.
- Must not use em dashes or en dashes anywhere (house rule).
- Page must work at phone width with no horizontal scroll.
