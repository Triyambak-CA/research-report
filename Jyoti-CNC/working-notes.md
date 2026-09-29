# Jyoti CNC Automation deep dive - working notes index
Run date 29-Sep-2026. Listed company (BSE 544081, NSE JYOTICNC, listed Jan-2024). Latest reported
quarter Q1 FY27 (ended 30-Jun-2026). CMP Rs 1,061 at 29-Sep-2026 12:17 IST (screener, aggregator).
Section spec: listed-company report-sections.md (20 sections), NOT ipo-mode.

## Sources on disk (source-docs/, NOT versioned; linked into the master copy)
- Annual reports FY24, FY25, FY26 (BSE) + corrigenda FY24 and FY25 (company site)
- Prospectus 12-Jan-2024 (SEBI, 511 pp) -> txt/prospectus-jan2024.txt
- 11 concall transcripts Feb-2024 to Aug-2026 (tr-YYYY-MM) + 13 decks (ppt-YYYY-MM)
- Infomerics 09-Jul-2025, 10-Feb-2026, 21-Apr-2026 (PDF); Brickwork 23-Aug-2023, 28-Feb-2024,
  20-May-2025 (HTML, ids 117796 / 131985 / 176123)
- Company site (co-pdf/, text in txt/co/): 10 quarterly shareholding patterns Mar-2024..Jun-2026 +
  post-issue; monitoring agency reports Mar/Jun/Sep-2024 + statements of deviation; five half-year
  RPT disclosures; quarterly result filings Mar-2024..Jun-2026; Huron SAS FY24-26, Jyoti SAS FY25-26,
  Huron GmbH FY26; AGM notice FY26; postal ballots Dec-2024, Mar-2026; tax litigation updates;
  ECMS approval 17-Aug-2026; new facility 19-Nov-2025; Huron expansion PR 21-Nov-2025; MGT-7 FY25/26.
- SAST 18-Sep-2026 (image-only, rendered in img/sast-*.png). Fire clarification 27-Sep-2026.
- screener public page 29-Sep-2026; premium extract at firstmate/data/jyoticnc-deepdive (aggregator).
- BSE announcements API returned Akamai "Access Denied" on 29-Sep-2026; company site used instead.

## Early findings (to be verified and expanded in numbered notes)
1. PLEDGE (full write-up in notes-01; supersedes the first-pass numbers below). It is ONE person: Anilkumar Bhikhabhai Virani, promoter GROUP (ICDR 2(1)(pp)(v)), not a
   promoter, holding 3,28,56,340 shares (14.45%). Shareholding patterns: pledged nil to Jun-2024, 25,52,000 Sep/Dec-2024, 58,52,000 from Mar-2025;
   58,52,000 (17.81% of his holding) Jun/Sep/Dec-2025; 2,19,52,000 (66.81%) Mar-2026; 2,97,52,000
   (90.55%, 13.08% of company) Jun-2026. 13.08 / 62.55 = 20.9% = screener's pledged figure, so
   screener is using the Jun-2026 SHP. SAST filed 17/18-Sep-2026 is a RELEASE of 19,00,000 on
   16-Sep-2026 from HDFC Bank; encumbered before 1,71,40,000 (7.54%), after 1,52,40,000 (6.70%).
   So 1,26,12,000 shares were released between 30-Jun and 16-Sep-2026 in filings not yet read.
   Stated reason: "security for loan extended for my Business" (his business, not Jyoti's).
   Screener's 20.9% is STALE: as at 16-Sep-2026 it is 6.70 / 62.55 = 10.7% of promoter holding.
2. FIRE 26-Sep-2026 (Saturday morning), one coating facility, Rajkot; contained in 30-60 min;
   operations resumed; company states no casualty and no material financial loss (letter 27-Sep).
3. HURON JUDICIAL INVESTIGATION (Reg 30, 12-Apr-2026; FY26 AR Note 42 standalone / Note 40
   consolidated, EoM in both audit reports). French customs intelligence (DNRED) opened a formal
   judicial investigation into Huron Graffenstaden SAS and some employees over exports of
   dual-use machines in breach of EU law. Huron DG restricted; accounts ~EUR 4.0 mn seized
   (EUR 3.02 mn "at present" per AR); two Jyoti SAS residential properties seized; machines under
   customs control. FY26 consolidated CFO carries a Rs 32.91 cr "exceptional item (customs
   seizure)" outflow. Standalone exposure to Jyoti SAS: investments Rs 341.60 cr + loans Rs 160.11
   cr = Rs 501.71 cr, not impaired. Auditor: material uncertainty on the subsidiary's going concern.
4. UNBILLED REVENUE. FY26 AR Note 13: consolidated unbilled revenue receivable Rs 613.30 cr
   (FY25 528.55); standalone 465.48 (343.77). Bigger than trade receivables (Rs 599.10 cr). Trade
   receivables plus unbilled = Rs 1,212 cr against revenue Rs 2,093 cr, about 211 days.
5. FX. FY26 other income Rs 60.48 cr includes forex gain Rs 43.39 cr; CFO adjustment strips out
   Rs 57.60 cr of UNREALISED forex gain. Standalone PAT Rs 391.25 cr vs consolidated Rs 336.00 cr.
6. UNITS TRAP: notes-02 (FY24 AR) and notes-05 (prospectus) are in Rs MILLION; the agents' chat
   summaries mislabelled them as crore. Divide by 10 for crore. notes-03 and notes-04 are crore.

## Agents (29-Sep-2026 wave) and their notes files
notes-02..06 extractors (done), 07 cash forensics, 08 ratings+governance, 09 guidance+order book,
10 peers, 11 industry+macro, 12 scuttlebutt+positioning (incl. Huron press coverage).
