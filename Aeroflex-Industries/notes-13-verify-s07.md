# notes-13 - adversarial verification of s07 (Promoter, governance and capital allocation)

Checked 18-Nov-2026 against primary filings in source-docs/. s07 not edited. Format: claim / verdict / correct fact and cite / suggested replacement.

## WRONG

1. "Sat paid about Rs 20.50 cr in all for 92.18%, including ... Avigo and Bond Street preference positions bought at Rs 3.45 to Rs 80.84, partly from Park Continental Pvt Ltd"
   - WRONG on Bond Street. Sat bought only from Avigo Trustee Co and Park Continental (prospectus p.92-94, p.208). Bond Street's 2,99,700 Rs 10 CCPS and 3,00,000 Rs 200 CCPS (allotted 2008, prospectus capital history) match exactly what Italica Global FZC converted on 02-Apr-2018 into 14,90,666 shares (now 74,54,830). Park Continental supplied about 91% of Sat's cost (Rs 18.6 cr of Rs 20.50 cr), so "partly" understates it. The Rs 20.50 cr does sum correctly from the build-up rows, but it is Sat's cost only. Italica's cost for its 6.52% is not disclosed.
   - Replace: "Sat paid about Rs 20.50 cr for its 92.18%: Rs 14.74 cr to Yusuf Mohammad Kagzi for 67,01,300 shares at Rs 22 on 22-Oct-2019, and preference positions bought from Avigo Trustee and Park Continental Pvt Ltd (itself a 3.58% holder of Sat Invest) at Rs 3.45 to Rs 80.84. Italica's 6.52% came from converting the preference shares originally allotted to Bond Street Custodians; what Italica paid is not disclosed."

2. Promoter-flow table, "Promoter in 20.50", and the net line "Rs 20.50 cr in, Rs 265.14 cr out gross in 2023 (12.9 times) ... with 65.47% and control retained"
   - Inputs CONFIRMED: Rs 20.50 cr (build-up rows), Rs 76.14 cr (86,95,207 x Rs 87.56, p.92-96), Rs 189.00 cr OFS (cover). 265.14 / 20.50 = 12.93.
   - Framing WRONG as worded. The "in" side is Sat only, but the "65.47% retained" includes Italica's 5.63%, whose cost is missing from "in". Both sales were by Sat, so the ratio is valid only as Sat's cost against Sat's gross proceeds (before OFS costs and tax).
   - Replace: "Net at the Aeroflex level, for the parent itself: Rs 20.50 cr in, Rs 265.14 cr gross out in 2023 (12.9 times, before offer costs and tax), plus about Rs 7 cr of group dividends. The group kept 65.47%, including Italica's 5.63%, whose acquisition cost is not disclosed."

3. Governance verdict: "The controlling shareholder extracted 13 times its money before the public came in"
   - WRONG. Rs 189 cr of the Rs 265.14 cr was the offer for sale inside the IPO, so it was received as the public came in, not before. Before the IPO it was Rs 76.14 cr (3.7 times).
   - Replace: "The controlling shareholder realised about 13 times its entry cost, gross, through pre-IPO sales (Rs 76 cr) and the IPO offer for sale (Rs 189 cr)."

4. "the ICDR floor (the higher of the 90-day and 10-day volume-weighted averages) is Rs 182.46, so the issue was priced 24 paise (0.13%) above it; any window of 88 to 92 days gives Rs 182.31 to Rs 182.66"
   - WRONG on the figures. Recomputed from source-docs/market/nse-bhavcopy-aeroflex-25jul2025-11feb2026.csv (turnover divided by quantity, trading days before 16-Dec-2025, no missing trading days; the 21-Oct muhurat session is included):
     - 10-day VWAP: Rs 176.86 (confirmed).
     - 90-day VWAP: Rs 182.32 (window 07-Aug to 15-Dec).
     - Rs 182.46-182.47 is a 92-day window (05-Aug to 15-Dec), which is the window notes-05 actually used.
     - 88 to 92 days gives Rs 182.32 to Rs 182.51, not Rs 182.31 to Rs 182.66.
   - The conclusion survives: the price was at the floor and above it in every window.
   - Replace: "Replicated from NSE bhavcopy for the relevant date of 16-Dec-2025, the ICDR floor is the 90-day VWAP of Rs 182.32, so the issue was priced 38 paise (0.21%) above it. Any window of 88 to 92 days gives Rs 182.32 to Rs 182.51, all below Rs 182.70."

5. KMP table, 30-Oct-2024: "Mustafa Kachwala re-appointed CFO for only two years from 28-Nov-2024"
   - WRONG framing. He was first re-designated CFO from 28-Nov-2022 (prospectus p.189, p.198). The re-appointment from exactly 28-Nov-2024 means his first term was also two years. Two years is his normal term, so "only" is unfounded.
   - Replace: "Mustafa Kachwala re-appointed CFO for a further two years from 28-Nov-2024 (his first CFO term began 28-Nov-2022)".

6. KMP table, 28-Oct-2026: "Board approves Kachwala's CFO tenure "completion" on 27-Nov-2026 ... at the same meeting that adopted the depreciation-method change and the Hyd-Air merger". Verdict: "the CFO is changing in the quarter of an accounting-method change"
   - Facts CONFIRMED but presented unfairly. The board "Noted the completion of tenure". 27-Nov-2026 is the scheduled end of the two-year term fixed on 30-Oct-2024. He continues as Whole-time Director and KMP (WTD term 01-Apr-2026 to 31-Mar-2029, AR FY26). The successor, Drashti Bhil, is the existing Deputy CFO (AR FY26 senior management list), re-designated for three years.
   - Scare quotes around "completion" and the verdict line imply an unexplained departure. The record shows a scheduled term expiry with internal succession.
   - Replace (table): "Board notes that Kachwala's CFO term ends as scheduled on 27-Nov-2026, the expiry of the two-year term set in Oct-2024. He continues as Whole-time Director and KMP to 2029. Deputy CFO Drashti Bhil is re-designated CFO for three years from 28-Nov-2026."
   - Replace (verdict): drop the CFO clause, or write "the CFO role passes to the deputy CFO on the scheduled expiry of a two-year term, in the same quarter as the accounting-method change".

7. Credit table, 27-Jul-2022 Infomerics: "describes Yusuf Kagzi, who exited in 2019, as the experienced founder". History para: "founder Yusuf Mohammad Kagzi"
   - WRONG on a named person. Kagzi sold his 67,01,300 shares on 22-Oct-2019 but stayed as Chief Executive Officer until he resigned on 12-Aug-2021 (prospectus KMP-changes table, p.198). He was not a founder: the MoA subscribers in 1993 were Atul Rasiklal Shah, Rasiklal Maganlal Shah and Sejal Atul Shah. Kagzi's first allotment was in 2001 (prospectus p.86-87).
   - Replace: "former promoter Yusuf Mohammad Kagzi" in the history. In the credit table: "describes Yusuf Kagzi as the founder; he sold out in Oct-2019 and left as CEO in Aug-2021".

## UNSUPPORTED or needs balance

8. "Use of money, two versions, same date. The board outcome of 18-Dec-2025 (Annexure A) says a Rs 97.56 cr capex plan ... On the 29-Jan-2026 call an analyst said "we have raised the money to fund our capex"; the MD did not correct him (Q3FY26 call p9)"
   - The two filings are CONFIRMED verbatim. Annexure A labels Rs 97.56 cr "Total Investment required" with "Preferential issue - INR 55.00 Cr". The notice dated 18.12.2025 lists Rs 41.52 cr / Rs 12.02 cr / Rs 1.45 cr and no capex.
   - s07 omits the innocent reading, on the same page it cites. Asked about the amount, the MD said: "the overall capex, including working capital and all that we have planned is around INR97 crores" (Q3FY26 transcript p9). On his account the Rs 97.56 cr plan includes working capital, which narrows the conflict.
   - Add: "On the same call the MD described the Rs 97 cr plan as 'the overall capex, including working capital and all that we have planned' (Q3FY26 call p9). That is a partial reconciliation, but the board outcome itself does not mention working capital."
   - Also: shareholders voted on the notice as amended by the 05-Jan-2026 corrigendum. A 06-Jan-2026 clarification fixed the "Rs. in Lakhs" header error. "Notice version" should read "the notice and corrigendum".

9. Allottee paragraph read as a whole (board timing, 9.2% next-day rise, partner forecast "in the board's hands", then "the allottees' paper gain is about Rs 93.9 cr ... 2.71x")
   - Each fact is CONFIRMED: NSE closes Rs 177.31 / Rs 193.69 (+9.24%), 2,80,76,340 shares; meeting 5:00-5:55 pm; signature 19:50:03; 2,000 + 13,000 skid units.
   - But the sequence places named allottees next to price-sensitive information without saying the record shows no access. The price was fixed by the ICDR formula at the relevant date.
   - Add after the paper-gain sentence: "Nothing in any filing read suggests that any allottee knew of the capacity decision or the partner forecast before they were announced. The price was set by formula, and the notice records that no promoter, director or KMP intended to subscribe."
   - Also: "its value (a Rs 45 cr pipeline)". The Rs 45 cr is the immediate dispatch pipeline, not the value of the forecast (Q3FY26 p15). Reword to "the immediate order pipeline (about Rs 45 cr) was first stated on the 29-Jan-2026 call".

10. "Asad Daud ... holds Italica and Aeroflex Finance shares as nominee for the parent (prospectus p.213-214; AR FY26 p60)". Ownership table: "shares held by Asad Daud (99%) and Parag Shah (1%) as nominees of the parent"
   - CONFIRMED as at the prospectus. The tables are as at 31-Mar-2021, 2022 and 2023; the footnote says Asad Daud and Parag Shah hold 99% and 1% "on behalf of our Promoter".
   - No nominee statement appears in AR FY26 or the parent's AR FY26. The present tense and the AR FY26 cite are unsupported.
   - Replace: "held, per the Aug-2023 prospectus, ... as nominee for the parent (prospectus p.210-214); no later disclosure found".

11. "The price was about book value only after Hyd-Air booked an Rs 11.70 cr revaluation of its assets in its FY24 accounts, days before the share purchase agreement"
   - The figure is CONFIRMED: Hyd-Air FY25 accounts, Note 17, "Revaluation of assets 1,169.80" in the FY24 column. Retained earnings show the FY24 loss of Rs 2.41 cr, and net worth before the revaluation is about Rs 4.24 cr.
   - The timing is UNSUPPORTED. 31-Mar-2024 is only the balance-sheet date. The 02-Apr-2024 deal update gives FY24 turnover as "provisional", so the FY24 accounts were not final at the SPA. The entry may have been passed after Aeroflex took control on 04-Apr-2024.
   - Replace: "only after an Rs 11.70 cr revaluation dated 31-Mar-2024 in Hyd-Air's FY24 accounts, which were still provisional when the deal was signed on 02-Apr-2024".

12. Italica: "Its FY23 accounts show revenue Rs 9.01 cr and PAT Rs 3.82 cr, a 42% net margin"
   - The figures are CONFIRMED, but Rs 9.01 cr is "Total Revenue = Revenue from operation + Other Income" (Italica statement footnote). Italica is also the parent's vehicle for international start-up investments, so the 42% may not be a trading margin.
   - Replace: "total income Rs 9.01 cr (including other income) and PAT Rs 3.82 cr".

13. Minor items
   - "Dilution 2.33%": that is on pre-issue capital (30,10,398 / 12,93,20,370). On the enlarged capital it is 2.27% (/ 13,23,30,768). State which.
   - CS row, "Kinjal Shah resigns, relieved the same day": her letter is dated 14-Jul-2025 and she was relieved at close of 15-Jul-2025.
   - Anchor price Rs 494.60: price.json shows Rs 495.20 for 18-Nov-2026, and the screener page shows Rs 497. Rs 494.60 traces to Trendlyne (notes-07). The ratios do not change (2.71x either way), but the report should use one anchor throughout.
   - Hyd-Air: AR FY25 Note 44.17 says no loan was given in FY25, which contradicts CARO iii(a) in the same AR. s07 rightly relies on CARO, which ties out (2,924 shares at acquisition plus 1,800 new = 4,724; Rs 10.58 cr share premium in Hyd-Air Note 17). Worth a footnote as another note error that passed audit.

## CONFIRMED (checked against primary source)

- Preferential terms (board outcome and Annexure B, 18-Dec-2025; allotment intimation, 03-Feb-2026):
  - 30,10,398 shares at Rs 182.70 = Rs 54,99,99,714.60.
  - Allottees and counts: Kacholia 4,10,509; Bengal Finance 4,10,509; Surana 8,21,018; Vaibhav Shah for R K Investments 8,21,018; Madhu Silica 2,73,672; Mehta 2,73,672.
  - Pre-holdings: Kacholia 25,98,080, Bengal 23,15,935, the other four nil. Post-issue: 2.27% + 2.06% = 4.33%.
  - Ultimate beneficial owner of Bengal Finance stated as Suresh Kumar Agarwal (notice item 11).
  - "Non-Promoter" for all six. No intent to subscribe by promoters, directors or KMP, and no interest declared (notice items 6 and closing).
- Relevant date 16-Dec-2025. Notice wording "higher than the calculated price".
- Corrigendum 05-Jan-2026: advisory fees Rs 1,41,60,000 and meetings Rs 3,40,000, issued pursuant to "observations received from the Stock Exchanges".
- Rs 1.416 cr = Rs 1.20 cr + 18% GST. No recipient named in any filing read.
- AR FY26: Rs 12,59,00,806 used by 31-Mar-2026; Rs 179.01 lakh of issue expenses charged to securities premium.
- Q2 FY27 deviation statement: fully utilised as on 30-Sep-2026, no deviation, monitoring agency not applicable.
- Vote (scrutiniser):
  - Promoter 8,66,36,663 for, which is 95.77% of the 9,04,61,299 votes polled.
  - Public institutions: 28,83,082 of 56,61,481 polled (50.92%), all for.
  - Public non-institutions: 9,41,554 of 3,70,22,226 polled (2.54%), 1,791 against.
  - Bengal Finance sits under Bodies Corporate (non-institutions) in SHP Dec-2025, so "neither voted those shares" holds.
- Post-allotment SHP (09-Feb-2026): parent 7,91,81,833 (59.84%), Italica 74,54,830 (5.63%), promoter group 8,66,36,663 (65.47%), no encumbrance. Pre-issue: 66.99%.
- Italica (AR FY26 standalone and consolidated related-party notes): sales Rs 2,256.19 lakh against Rs 283.91 lakh in FY25 (7.9x); Business Development Service Rs 36.45 lakh, new in FY26; dividends Rs 22.36 lakh.
- Neither related-party note shows closing balances. The only related-party balance in AR FY26 is the Hyd-Air loan in Note 6 (Rs 539.74 lakh).
- Look-through economics: 52.45% x 65.47% = 34.3% against 52.45% in Italica. Parent promoter holding was 51.59% from Dec-2023 to Mar-2026 and 52.45% at Sep-2026 (screener parent page).
- Hyd-Air:
  - Announced cost Rs 17,20,86,172 (02-Apr-2024) for 2,924 shares, completed 04-Apr-2024.
  - Booked investment Rs 2,780.22 lakh = Rs 1,720.86 lakh price + Rs 1,059.36 lakh loan converted to equity (AR FY25 CARO iii(a)). s07 prints this explanation, and the filings support it.
  - FY26 loan Rs 525 lakh, outstanding Rs 539.74 lakh (AR FY26 CARO iii(a), Note 6).
  - PAT Rs 49.27 lakh (FY25) and Rs 24.48 lakh (FY26).
  - Nadir Karachiwala is Hyd-Air MD and appears in the consolidated KMP list.
- COO: appointed w.e.f. 01-Feb-2025; resignation intimated 20-May-2025, effective 30-Jun-2025, for personal reasons. AR FY26 gives 20-May-2025 as the effective date. No later call mentions him.
- Arpit Khandelwal resigned from M.R. Organisation w.e.f. 30-Apr-2026 (AR FY26 governance note).
- Kachwala speaks on no call transcript; he only signs the covering letters.
- Pre-IPO sales: 86,95,207 shares at Rs 87.56 (Rs 76.14 cr), agreements 10-May to 12-Jun-2023; 87.56 / 108 = 18.9% below the IPO price.
- Dividends to parent and Italica: FY24 Rs 2.08 cr, FY25 Rs 2.17 cr, FY26 Rs 2.60 cr, total Rs 6.85 cr.
- Multiples at Rs 494.60: 254x, 5.65x, 4.58x, 2.71x; paper gain Rs 93.9 cr.
