# G. Publicly computable track-record data (BRLM scoring)

Source: SEBI (ICDR) Regulations 2018, consolidated as amended to 21-Mar-2026, Schedule VI Part A item (14) "Other Regulatory and Statutory Disclosures" (local copy icdr-2026-03-21.pdf, printed pages 325-326 read visually on 01-Sep-2026).

## G.1 The requirement - confirmed
- Sch VI Part A (14)(R): "Price information of past issues handled by the lead manager(s)" in a prescribed two-table format ("Format for Disclosure of Price Information of Past Issues Handled By Merchant Banker(s)"):
  - TABLE 1, per issue: Sr no, issue name, issue size (Rs crore), issue price (Rs), listing date, opening price on listing date, and +/- % change in CLOSING price at the 30TH, 90TH and 180TH CALENDAR DAY from listing, each with the % change in the closing BENCHMARK index over the same window in brackets.
  - TABLE 2, summary per financial year: total number of IPOs, total funds raised, and the COUNT of IPOs trading at discount and at premium at the 30th and 180th calendar day, bucketed "over 50%", "25-50%", "less than 25%".
  - Notes to the format: disclosures for THREE financial years (current FY + two preceding); MAXIMUM 10 ISSUES (IPOs) per merchant banker in Table 1; benchmark change in brackets; a SEPARATE TABLE FOR EACH merchant banker responsible for pricing the issue; if day 30/60/90 is a holiday, previous trading day; designated stock exchange of the respective issuer used. (Source-text quirk: note 5 still says "30th/60th/90th calendar day" while the table columns themselves are 30th/90th/180th - the 30/60/90 wording is stale drafting in the Schedule; the operative grid, read visually from printed page 326 of the consolidation, is 30/90/180. Do not "correct" the 30/90/180 grid back to the note.)
- Related, also in (14): (N) previous public/rights issues of the ISSUER in last 5 years; (P) capital issues of listed group companies/subsidiaries/associates in last 3 years; (Q) "Performance vis-a-vis objects" - non-achievement of objects, with quantified shortfall and delays, for the issuer's issues of the preceding 5 years and for the last issue of listed subsidiaries/promoters.

## G.2 How to score the BRLM from this
- Compute per BRLM: median 30-day and 180-day benchmark-adjusted return across their Table 1 issues; share of issues below issue price at day 180. A banker whose last 10 issues are mostly below water at day 180 systematically overprices - discount their "quality franchise" pitch and widen your margin of safety on the band.
- Watch the gaming: Table 1 is capped at 10 issues and the format lets banks pick the "issues managed" - cross-check completeness against Prime Database/Chittorgarh lists of that BRLM's mandates in the same 3 FYs; omissions are themselves a finding.
- Multiple BRLMs: only bankers "responsible for pricing" must give tables - note which BRLM(s) own the pricing and score those.
- The identical 30/90/180-day grid across all offer documents makes this machine-extractable: the tables sit in "Other Regulatory and Statutory Disclosures", searchable by the string "Price information of past issues".

## G.3 Comparable requirements for other intermediaries
- Auditor: NO price/track-record table. The only quality gates are the ICAI Peer Review certificate requirement for the auditor signing the restated financials (Sch VI Part A (11)(I)(A)(i), (e)) and consent/expert status under (14)(L). Analyst substitute: check the audit firm's NFRA/ICAI disciplinary history and how many listed clients it audits.
- Registrar: no track-record disclosure; only name/contact/consent.
- Industry-report provider: no track-record or fee disclosure requirement in ICDR (see file H). NOTHING VERIFIED beyond the material-documents inclusion rule.
- IPO grading (Sch VI (18)(4), cover page item (p)): optional regime - grading reports must be listed in material documents if obtained; in practice grading is extinct on the mainboard.
