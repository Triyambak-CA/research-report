# J. RHP-versus-DRHP diff

Worked example run on 01-Sep-2026: ESDS Software Solution Limited - DRHP dated 30-Mar-2025 (SEBI filing page apr-2025/93307, 524 pages) vs RHP dated 24-Aug-2026 (SEBI filing page aug-2026/103893, 555 pages). Both fetched by curl from sebi.gov.in/sebi_data/attachdocs/, extracted with pdftotext -layout. Local files: esds-drhp.pdf/.txt, esds-rhp.pdf/.txt.

## J.1 What actually changed in the worked example (all verified by grep of the two texts)
- ELIGIBILITY ROUTE CHANGED: DRHP cover states the issue is made under Regulation 6(2) "as our Company does not fulfil the requirement under Regulation 6(1)(b)" (the Rs 15 crore average-operating-profit test). RHP cover states the issue is made under Regulation 6(1). Consequence: allocation flips from QIB >= 75% / NII <= 15% / RII <= 10% to QIB <= 50% / NII >= 15% / RII >= 35% - a completely different book and listing dynamic. An analyst who read only the DRHP would model the wrong allocation and miss that the newly-added FY26 profits are exactly what carried the company over the 6(1)(b) threshold - making FY26 earnings quality the single most important question in the report.
- FINANCIAL PERIODS ROLLED: DRHP = Fiscals 2022, 2023, 2024 (+stub); RHP = Fiscals 2024, 2025, 2026. Because SEBI review took ~17 months, TWO new audited years appeared. Reg 24(5) (financials < 6 months old at opening) forces this.
- ISSUE SIZE CHANGED: DRHP fresh issue up to Rs 6,000.00 million (Rs 600 crore, as stated in the document) with an optional pre-IPO placement of up to Rs 1,200.00 million (Rs 120 crore); RHP issue aggregating up to Rs 7,200.00 million (Rs 720 crore).
- Risk-factor and KPI sets re-based on the new periods (customer-concentration percentages restated for FY24-26 in the RHP vs FY22-24 in the DRHP).

## J.2 What typically changes DRHP -> RHP (checklist for the diff)
1. Eligibility route (6(1) vs 6(2)) and the eligibility arithmetic paragraph in "Other Regulatory and Statutory Disclosures".
2. Financial statements roll forward; restatement adjustments table changes; new stub appears. Diff the restated PAT of the OVERLAPPING years - a year whose restated number moved between DRHP and RHP is a finding.
3. Risk factors: added/reworded factors are frequently SEBI-observation-driven; additions are near the top if genuinely material.
4. Issue structure: fresh/OFS split resized; pre-IPO placement completed (reduces fresh issue); selling shareholders added/dropped; objects amounts revised (Schedule XVI limits: changes in objects beyond thresholds force fresh filing - so within-RHP changes are always inside those limits).
5. Basis for Issue Price: peer set changes; KPIs added/dropped; WACA tables updated for any new 18-month-window transactions (a pre-IPO placement between DRHP and RHP lands in the primary WACA and re-anchors the price-band multiple).
6. Capital structure: new allotments (placement, ESOP exercises, bonus), conversions of CCPS completed (mandatory before RHP), updated shareholding.
7. Litigation: new cases, settlements, and any SEBI-directed reclassification from "not material" to disclosed.
8. Names/roles: BRLM syndicate changes, auditor change (high-severity flag), monitoring agency named.
9. New-in-RHP only: price band (via separate advertisement), issue dates, anchor schedule - the RHP itself still carries [●] for price.

## J.3 Practical diff method (as executed)
1. Fetch both PDFs from SEBI filing pages (curl; see file A). If the issuer used confidential pre-filing, diff UDRHP-I vs RHP instead.
2. pdftotext -layout both; normalise: strip page furniture (`sed -E 's/^ +//; /^Page [0-9]+/d'`), collapse whitespace.
3. Do NOT run a raw `diff` on the full texts first (page reflow drowns you). Instead diff section-by-section: extract each chapter by grepping its ToC title, then `diff -u <(chapterA) <(chapterB)` or `git diff --no-index --word-diff` for word-level changes.
4. Fast triage greps to run on both files and compare outputs: "Regulation 6(", "aggregating up to", "Fiscals 20", "Pre-IPO", "weighted average cost", "Restated", peer-company names, auditor name, count of numbered risk factors, KPI table headers.
5. Targeted numeric diff: overlapping-year restated revenue/EBITDA/PAT; WACA multiples; total litigation amounts; RPT totals.
6. Time-box: 60-90 minutes gets the eligibility, size, financials-roll and risk-factor deltas, which is where nearly all the value is.

## J.4 Why it is high-yield and rarely done
- The RHP lands 3 working days before opening (Reg 44(2)); sell-side notes are written off the RHP alone and GMP chatter dominates; nobody re-reads the 500-page DRHP. Yet the delta IS SEBI's review made visible: everything the regulator forced the issuer to add, restate or re-explain sits in the diff, and everything the issuer chose to change (route, size, sellers, peers, KPIs) reveals how the deal was re-engineered while waiting for observations. The ESDS 6(2)->6(1) flip is exactly the kind of fact that appears in no sell-side summary.
