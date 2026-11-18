# Aeroflex Industries - working notes

Run started 18-Nov-2026 15:35 IST, branch worktree-aeroflex-deep-dive. Listed company: ordinary 20-section spec.
Entity: Aeroflex Industries Ltd, BSE 543972, NSE AEROFLEX. Listed 31-Aug-2023 (IPO). Parent/promoter:
Aeroflex Enterprises Ltd (formerly Sat Industries Ltd), itself listed. MD Asad Daud.
Price basis: Rs 497 at 18-Nov-2026 15:29 (screener), mcap Rs 6,577 cr, TTM P/E 73.5, 52w 614/158.
Latest quarter: Q2 FY27 (Sep-2026), results 28-Oct-2026, call 29-Oct-2026.

## Sources on disk (source-docs/, not versioned)
- screener/ public consolidated + standalone pages, 18-Nov-2026
- ar/ AR FY24, FY25, FY26 (BSE). FY22, FY23 from company site came back as HTML (blocked) - retry.
- calls/ 13 transcripts Q2FY24..Q2FY27 (all genuine Reg 30 transcript filings; Q3FY24 filed twice),
  14 decks incl. revised Q1FY25 deck, Q2FY27 audio intimation, Q2FY27 pref-issue deviation statement.
- ratings/ Infomerics 22-Jul-2022, 29-Aug-2023, 16-Oct-2023; CRISIL 17-Oct-2022 (html).

## Trap checks
- Trap 6 (concall rows = decks): CLEAR. 13 genuine transcripts, every quarter since listing.
- Trap 1 (aggregator lag): screener has FY26 cash flow (CFO 66). Check vs AR FY26.

## Early findings (Q2FY27 deck, 28-Oct-2026)
1. DEPRECIATION METHOD CHANGE WDV -> SLM wef 01-Apr-2026, prospective (Ind AS 8 estimate change).
   H1FY27 depreciation 8.29 SLM vs 16.70 WDV = Rs 8.41 cr lower. Q1 was reported at WDV 7.84, so Q2
   reported depreciation is only 0.45 (H1 SLM 8.29 less Q1 7.84) - Q2 absorbs Q1's catch-up.
   Q2 reported PAT 36.56 (+157%); on SLM properly split Q2 PAT 34.00; on WDV 28.32 (+99% YoY vs 14.23).
   Annualised the change adds ~Rs 17 cr PBT / ~Rs 12.5 cr PAT - material vs FY26 PAT 55.5.
   Screener TTM EPS 6.79 and P/E 73.5 include the catch-up.
2. LIQUID COOLING SKIDS (data centre SFN skids): units 46 (Q3FY26), 571 (Q4FY26), 1,040 (Q1FY27),
   1,475 (Q2FY27); value 2.29 / 18.94 / 32.39 / 50.03 cr. Q2FY27 = 24% of consol revenue.
   "Approved supplier to a leading global provider of digital infrastructure and thermal management" - one
   customer? (Vertiv-like). Ex-skid Q2 revenue ~157 vs 110.9 = +42% YoY - core also strong.
3. Working capital: receivables 129.8 (Mar-26) -> 203.8 (Sep-26); inventory 83.7 -> 112.4;
   payables 80.7 -> 136.3. H1 CFO 38.2 vs PAT 55.4.
4. Capex: 20 mn m hose + 12,000 skids now; 15,000 skids by Dec-2026; next phase 30 mn m + 30,000 skids by
   Mar-2028, Rs 202 cr capex, "incremental peak revenue Rs 500-550 cr".
5. Hyd-Air Engineering (subsidiary) merger into Aeroflex announced.
6. Rs 54.99 cr preferential issue - fully utilised (deviation statement Q2FY27). Promoter 66.99% -> 65.47%
   in Mar-2026 quarter: dilution from preferential? Check who subscribed and price.
7. ROU assets 7.4 -> 22.2, lease liabilities 5.5 -> 20.7 in H1FY27: new leased facility.
8. Bank balances 50.66 -> 3.66 and CWIP 23 -> 73.5 in H1FY27.
9. Export 59-60%; Americas ~60-66% of exports. US tariff exposure.

## Gap-closing reads (18-Nov-2026)
10. Q2FY27 results filing (company/Results_Sep2026, scanned, OCR poor): limited review UNMODIFIED. Note 5:
    WDV->SLM from 01-Apr-2026 as estimate change (Ind AS 16/8). Consol: H1 dep lower Rs 841.25 lakh, "PAT
    higher Rs 823.48 lakh" - implies ~2% tax on the extra PBT. Standalone: PBT +769.02 lakh, PAT +769.46
    lakh (PAT effect > PBT effect, impossible at 25% tax). Company's PAT effect is overstated; at the H1
    effective rate 26.7% the true PAT effect is ~Rs 6.2 cr. Normalised WDV H1 PAT ~ 67.09 x 0.733 = 49.2.
    Q1 was published on WDV (27-Jul-2026); decision taken in Q2 with effect from 01-Apr -> Q2 catch-up.
    Standalone H1 cash flow: provision for bad debts Rs 150 lakh (new); receivables +Rs 76.5 cr.
11. PREFERENTIAL ISSUE: board 18-Dec-2025, EOGM 15-Jan-2026, allotted 03-Feb-2026. 30,10,398 sh @ Rs 182.70
    = Rs 54.99 cr, all non-promoter: Ashish Kacholia 4,10,509; Bengal Finance & Investment Pvt 4,10,509;
    Sanjay Surana 8,21,018; Vaibhav Shah for R K Investments 8,21,018; Madhu Silica Pvt 2,73,672;
    Naresh Mehta 2,73,672. Shares 12,93,20,370 -> 13,23,30,768. Promoter 66.99% -> 65.47% is pure dilution.
    CMP 497 = 2.72x the issue price within ~10 months. Non-promoter pref lock-in 6 months -> free ~Aug-2026.
    OBJECTS SHIFT: board outcome 18-Dec-2025 Annexure A said capex Rs 97.56 cr funded by internal accruals
    42.56 + preferential 55.00 (skid capacity 2,000 -> +13,000 by Jun-2026, "existing: under trial
    production"; robotic welding/annealing by Dec-2026). EOGM corrigendum 05-Jan-2026 (after stock exchange
    observations): objects = long-term working capital 41.52 cr, GCP 12.02 cr, issue expenses 1.45 cr
    (advisory fees 1.416 cr = 2.6% of a 6-investor private placement). Corrigendum then itself corrected
    06-Jan-2026 (amount column wrongly headed Rs lakh). Q2FY27 deviation statement: fully utilised, no
    deviation.
    TIMING: pref priced at 18-Dec-2025 when skid capacity "under trial production"; skid volume 46 in Q3FY26
    -> 1,475 in Q2FY27. Q3FY26 call (29-Jan-2026) came before allotment (03-Feb-2026). What was known?
12. Ratings: CRISIL BB/Stable reaffirmed and WITHDRAWN at company request 17-Oct-2022; Infomerics after.
    company/Credit_Rating.pdf has no text layer (scan) - render.

## Named gaps
- (to fill)
