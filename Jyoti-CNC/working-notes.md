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
1. PLEDGE. It is ONE person: Anilkumar Bhikhabhai Virani, promoter GROUP (ICDR 2(1)(pp)(v)), not a
   promoter, holding 3,28,56,340 shares (14.45%). Shareholding patterns: pledged 0 to Mar-2025;
   58,52,000 (17.81% of his holding) Jun/Sep/Dec-2025; 2,19,52,000 (66.81%) Mar-2026; 2,97,52,000
   (90.55%, 13.08% of company) Jun-2026. 13.08 / 62.55 = 20.9% = screener's pledged figure, so
   screener is using the Jun-2026 SHP. SAST filed 17/18-Sep-2026 is a RELEASE of 19,00,000 on
   16-Sep-2026 from HDFC Bank; encumbered before 1,71,40,000 (7.54%), after 1,52,40,000 (6.70%).
   So 1,26,12,000 shares were released between 30-Jun and 16-Sep-2026 in filings not yet read.
   Stated reason: "security for loan extended for my Business" (his business, not Jyoti's).
   Screener's 20.9% is STALE: as at 16-Sep-2026 it is 6.70 / 62.55 = 10.7% of promoter holding.
2. FIRE 26-Sep-2026 (Saturday morning), one coating facility, Rajkot; contained in 30-60 min;
   operations resumed; company states no casualty and no material financial loss (letter 27-Sep).
