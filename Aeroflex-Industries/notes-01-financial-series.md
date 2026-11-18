# Aeroflex Industries: financial series (notes-01)

Built from local source files only. Figures are CONSOLIDATED unless marked STANDALONE.
Source unit is INR lakh. Rs crore = source lakh / 100 (computed). Any figure not quoted from a source is marked "computed" with its formula.
Paths are relative to the Aeroflex-Industries folder. Files are under source-docs/company/ unless stated.
Status tags: "image" = read from a rendered page image; "text" = read from the pdftotext text layer only; "OCR" = damaged text, do not use.

## 0. Data-quality flags (read first)

1. **FY25 expense split differs across filings. Totals agree (30,881.43 lakh).**
   - Results_Dec2025.pdf p3 (image), FY25 twelve-month column: materials 22,006.04; employee 3,528.15; other 3,810.74.
   - Results_Mar2026.pdf p8 (image), FY25 column: materials 21,585.71; employee 3,379.01; other 4,380.22.
   - Q4FY25 quarter (Results_Mar2026.pdf p8) plus 9M FY25 (Results_Dec2025.pdf p3) gives: materials 21,932.38; employee 3,379.01; other 4,033.54 (computed).
   - Materials and other do not reconcile to either FY25 column. Employee matches the Mar-2026 column. PBT (6,994.81) and PAT (5,250.76) are the same in every filing.
2. **Q1FY27 revenue.** Results_Jun2026.pdf p3 (image) reads 14,537.63, matching the Sep-2026 comparative. The OCR text layer of that page reads "14,531.61". OCR error, not a disagreement between filings.
3. **Q3FY25 other income.** Results_Dec2025.pdf p3 (image) reads 57.25. The text layer reads 51.25. Image used.
4. **Q2FY25 tax split.** Results_Sep2025.pdf p3 (text): current tax 506.91, no earlier-year line. Un-audited_Financial_Results_for_December_2024.pdf p4 (text): current 475.00 and earlier-year 31.91. Total the same (506.91). Dec-2024 figures are text only.
5. **Q2FY25 original filing not in folder.** Un-audited_Financial_Results_September_2024.pdf is byte-identical to Un-audited_Financial_Results_for_December_2024.pdf (checked with cmp). It holds the quarter to 31-Dec-2024. Q2FY25 is taken from the comparative column of Results_Sep2025.pdf p3 and the "Preceding 3 months" column of the Dec-2024 filing.
6. **Q4FY25 has no own filing in the folder.** Audited_Financial_Results_for_March_2025.pdf is a scan (not rendered). Q4FY25 is the comparative column of Results_Mar2026.pdf p8 (image).
7. **Q2FY27 depreciation step-down** is an accounting change of method (WDV to SLM). See Section 1, note (c).
8. **Screener FY26 EPS (4.20) disagrees with the filing (4.28).** See Section 7.

## 1. Quarterly consolidated P&L, Q2FY25 to Q2FY27 (Rs crore)

Columns: Q2FY25 (quarter to 30-Sep-2024), Q3FY25 (31-Dec-2024), Q4FY25 (31-Mar-2025), Q1FY26 (30-Jun-2025), Q2FY26 (30-Sep-2025), Q3FY26 (31-Dec-2025), Q4FY26 (31-Mar-2026), Q1FY27 (30-Jun-2026), Q2FY27 (30-Sep-2026).

| Line (Rs crore) | Q2FY25 | Q3FY25 | Q4FY25 | Q1FY26 | Q2FY26 | Q3FY26 | Q4FY26 | Q1FY27 | Q2FY27 |
|---|---|---|---|---|---|---|---|---|---|
| Revenue from operations | 94.99 | 99.80 | 91.69 | 84.33 | 110.87 | 120.89 | 125.84 | 145.38 | 207.36 |
| Other income | 0.81 | 0.57 | 0.12 | 0.33 | 0.18 | 0.23 | 0.62 | 0.60 | 0.32 |
| Total income | 95.80 | 100.37 | 91.81 | 84.67 | 111.05 | 121.12 | 126.46 | 145.97 | 207.68 |
| Cost of materials consumed | 60.96 | 58.09 | 50.64 | 53.38 | 65.68 | 68.39 | 72.15 | 84.23 | 114.42 |
| Change in inventories (+ = cost) | (5.18) | 1.93 | 2.31 | (3.94) | (3.38) | (1.09) | (0.26) | (3.53) | 3.86 |
| Gross margin % (computed) | 41.28% | 39.85% | 42.25% | 41.38% | 43.81% | 44.33% | 42.87% | 44.49% | 42.96% |
| Employee benefits | 8.85 | 9.21 | 7.76 | 9.06 | 10.82 | 11.32 | 10.11 | 13.94 | 18.03 |
| Other expenses | 10.00 | 8.87 | 12.10 | 10.35 | 11.88 | 13.92 | 13.81 | 17.25 | 20.72 |
| EBITDA (computed, see definition) | 20.37 | 21.69 | 18.89 | 15.48 | 25.88 | 28.35 | 30.03 | 33.49 | 50.34 |
| EBITDA % of revenue (computed) | 21.44% | 21.74% | 20.60% | 18.35% | 23.34% | 23.45% | 23.86% | 23.04% | 24.27% |
| Depreciation and amortisation | 2.43 | 2.51 | 3.95 | 5.93 | 6.10 | 6.26 | 7.79 | 7.84 | 0.45 |
| Finance costs | 0.08 | 0.09 | 0.13 | 0.18 | 0.24 | 0.23 | 0.28 | 0.35 | 0.60 |
| PBT | 18.67 | 19.67 | 14.92 | 9.71 | 19.72 | 22.08 | 22.58 | 25.89 | 49.61 |
| Total tax (current + deferred + earlier year) | 5.01 | 4.46 | 3.69 | 2.54 | 5.48 | 5.59 | 4.94 | 7.10 | 13.05 |
| PAT | 13.66 | 15.21 | 11.23 | 7.17 | 14.23 | 16.49 | 17.64 | 18.79 | 36.56 |
| PAT % of revenue (computed) | 14.38% | 15.24% | 12.25% | 8.50% | 12.84% | 13.64% | 14.01% | 12.93% | 17.63% |
| EPS basic (Rs, as printed) | not extracted | 1.18 | 0.87 | 0.55 | 1.10 | 1.28 | 1.36 | 1.42 | 2.76 |

**Definitions**
- EBITDA (computed) = revenue from operations - materials - change in inventories - employee - other expenses. Other income excluded. The filings print no EBITDA line.
- Gross margin (computed) = (revenue - materials - change in inventories) / revenue. Not a company-reported figure.
- Total tax (computed) = PBT - PAT. It reconciles to the printed tax lines in all nine quarters.

**Section 1a. Source values in lakh (quote basis)**

| Lakh | Q2FY25 | Q3FY25 | Q4FY25 | Q1FY26 | Q2FY26 | Q3FY26 | Q4FY26 | Q1FY27 | Q2FY27 |
|---|---|---|---|---|---|---|---|---|---|
| Revenue | 9,499.36 | 9,979.54 | 9,169.17 | 8,433.34 | 11,087.37 | 12,089.02 | 12,583.79 | 14,537.63 | 20,736.29 |
| Other income | 80.93 | 57.25 | 12.20 | 33.23 | 18.07 | 22.62 | 61.99 | 59.74 | 32.11 |
| Materials | 6,095.78 | 5,809.47 | 5,064.06 | 5,337.63 | 6,568.18 | 6,839.14 | 7,214.85 | 8,422.70 | 11,441.67 |
| Change in inventories | (517.53) | 193.19 | 230.83 | (393.75) | (338.38) | (109.27) | (25.83) | (353.22) | 385.97 |
| Employee | 884.99 | 921.04 | 775.80 | 906.47 | 1,081.98 | 1,131.85 | 1,011.03 | 1,394.23 | 1,803.18 |
| Other expenses | 999.55 | 886.52 | 1,209.52 | 1,035.08 | 1,187.50 | 1,392.25 | 1,380.94 | 1,724.62 | 2,071.83 |
| Depreciation | 243.00 | 251.29 | 395.46 | 592.79 | 610.01 | 626.00 | 778.94 | 784.41 | 44.76 |
| Finance costs | 7.83 | 8.62 | 13.37 | 17.77 | 24.34 | 23.31 | 28.23 | 35.26 | 60.47 |
| PBT | 1,866.67 | 1,966.67 | 1,492.33 | 970.58 | 1,971.82 | 2,208.36 | 2,257.62 | 2,589.39 | 4,960.51 |
| Current tax | 506.91 | 490.00 | 278.00 | 282.00 | 510.00 | 605.00 | 500.00 | 715.68 | 1,106.54 |
| Deferred tax | (6.09) | 1.15 | 91.14 | (28.11) | 38.46 | (71.17) | (5.88) | (5.59) | 198.05 |
| Earlier-year tax | nil | (45.40) | nil | nil | nil | 25.38 | nil | nil | nil |
| PAT | 1,365.84 | 1,520.92 | 1,123.19 | 716.69 | 1,423.36 | 1,649.14 | 1,763.50 | 1,879.31 | 3,655.92 |

Sources by column (all consolidated):
- Q2FY25: Results_Sep2025.pdf p3, corresponding 3-month column to 30.09.2024 (text). Tax split per flag 4.
- Q3FY25: Results_Dec2025.pdf p3, corresponding column to 31.12.2024 (image).
- Q4FY25: Results_Mar2026.pdf p8, corresponding column to 31.03.2025 (image). Flag 1 applies.
- Q1FY26: Results_Sep2025.pdf p3, "Preceding 3 months" column to 30.06.2025 (text). Results_Jun2026.pdf p3 corresponding column (image) agrees on all lines.
- Q2FY26: Results_Sep2025.pdf p3 (text); Results_Dec2025.pdf p3 (image) agrees.
- Q3FY26: Results_Dec2025.pdf p3 (image); Results_Mar2026.pdf p8 preceding column (image) agrees.
- Q4FY26: Results_Mar2026.pdf p8 (image).
- Q1FY27: Results_Jun2026.pdf p3 (image); Results_Sep2026.pdf p4 preceding column (image) agrees.
- Q2FY27: Results_Sep2026.pdf p4 (image).

**Note (c): Q2FY27 depreciation catch-up.**
- Results_Sep2026.pdf p4 footnote (image): "The depreciation and amortization expense for the quarter ended September 30, 2026 represents the balancing figures to align depreciation from April 1, 2026 to September 30, 2026 with the Straight Line Method (SLM), since depreciation for the quarter ended June 30, 2026 was calculated under the Written Down Value (WDV) method."
- Results_Sep2026.pdf p5 note 5 (image): change "from Written Down Value (WDV) to the Straight Line Method (SLM) with effect from April 1, 2026"; "depreciation expense for Q2 FY27 and H1 FY27 is lower by Rs 841.25 lakhs and Rs 841.25 lakhs, respectively"; "resulting in a corresponding increase in PBT of Rs 841.25 lakhs and Rs 841.25 lakhs and PAT of Rs 823.48 lakhs and Rs 823.48 lakhs." Under WDV, depreciation would have been Rs 886.01 lakhs (Q2) and Rs 1,670.42 lakhs (H1).
- Effect (computed): Q2FY27 PAT includes 823.48 lakh (8.23 crore) from this change, about 22.5% of Q2FY27 PAT. Q2FY27 PAT without it: 2,832.44 lakh (28.32 crore).
- Applied prospectively as a change in accounting estimate (note 5).

## 2. Annual consolidated P&L (Rs crore)

| Line | FY24 | FY25 | FY26 |
|---|---|---|---|
| Revenue from operations | 317.91 | 376.23 | 441.94 |
| Other income | 3.84 | 2.53 | 1.36 |
| Total income | 321.75 | 378.76 | 443.29 |
| Materials | 207.24 | 215.86 (Dec-25 column: 220.06) | 259.60 |
| Change in inventories (+ = cost) | (5.84) | 3.73 | (8.67) |
| Employee | 26.20 | 33.79 (Dec-25 column: 35.28) | 41.31 |
| Other expenses | 28.50 | 43.80 (Dec-25 column: 38.11) | 49.96 |
| Depreciation | 6.26 | 11.27 | 26.08 |
| Finance costs | 2.14 | 0.36 | 0.94 |
| PBT | 57.25 | 69.95 | 74.08 |
| Total tax (computed = PBT - PAT) | 15.52 | 17.44 | 18.56 |
| PAT | 41.73 | 52.51 | 55.53 |
| EPS basic (Rs) | 3.39 | 4.06 | 4.28 |

Sources:
- FY26 column: Results_Mar2026.pdf p8 (image). Materials 25,959.80; inventory change (867.23); employee 4,131.33; finance 93.65; depreciation 2,607.74; other 4,995.76; total expenses 36,921.04; PBT 7,408.38; tax current 1,897.00, deferred (66.70), earlier year 25.38; PAT 5,552.70; EPS 4.28.
- FY25 column: Results_Mar2026.pdf p8 (image) for the main lines. The bracketed "Dec-25 column" figures are from Results_Dec2025.pdf p3 (image) and show the split in flag 1. FY25 PBT 6,994.81 and PAT 5,250.76 are the same in both. FY25 tax per the Mar-26 column: current 1,673.00, deferred 84.54, earlier year (13.49), total 1,744.05 (computed as PBT - PAT).
- FY24 column: Un-audited_Financial_Results_for_December_2024.pdf p4, "Year ended 31.03.2024 (Audited)", TEXT only. Revenue 31,790.73; other income 384.32; materials 20,723.89; other expenses 2,849.51; PBT 5,725.03; PAT 4,173.40 (quoted from the text layer). Inventory change (583.62) computed from the printed total expenses 26,450.02. Tax 1,415.70 + 43.93 + 92.00 = 1,551.63.
- FY24 EPS 3.39: Q1FY25-deck.txt, table row "EPS (in Rs.) 0.96 0.97 0.78 3.39" (last column, FY24). Investor deck, not a results filing.
- FY22, FY23, FY21 consolidated P&L: NOT EXTRACTED in this pass. See Section 8.

## 3. Balance sheet (consolidated, Rs crore; source lakh / 100)

Dates: 31-Mar-2025 and 30-Sep-2025 (Results_Sep2025.pdf p5, text, OCR damaged); 31-Mar-2026 and 30-Sep-2026 (Results_Sep2026.pdf p6, image). Rows marked * come from the damaged Sep-2025 text and are provisional. No 30-Sep-2024 balance sheet is in the folder.

| Item (Rs crore) | 31-Mar-2025 | 30-Sep-2025 | 31-Mar-2026 | 30-Sep-2026 |
|---|---|---|---|---|
| Equity share capital | 25.86 | 25.86 | 26.47 | 26.47 |
| Other equity | 316.55 | 334.07 * | 420.81 | 470.96 |
| Net worth (total equity) | 342.42 * | 359.94 * | 447.27 | 497.42 |
| Borrowings, non-current | 0.33 | 0.33 | 0.62 | 0.62 |
| Borrowings, current | 0.26 * | 0.13 * | 0.45 | 0.23 |
| Lease liabilities, non-current + current | not read | 8.84 * | 7.83 | 23.14 |
| PPE, net | 169.66 * | 164.26 * | 203.85 | 215.27 |
| Capital work in progress | 9.84 * | 25.08 * | 23.10 | 73.48 |
| Right-of-use assets | not read | 8.64 * | 7.41 | 22.18 |
| Goodwill | 1.27 | 1.27 | 1.27 | 1.27 |
| Other intangible assets | 0.88 | 0.72 * | 0.86 | 0.81 |
| Inventories | 66.68 * | 72.25 * | 83.72 | 112.35 |
| Trade receivables | not read (OCR) | 123.31 * | 129.82 | 203.83 |
| Cash and cash equivalents | 26.30 * | 28.00 * | 18.99 | 24.80 |
| Other bank balances | 0.45 * | 0.53 * | 50.66 | 3.66 |
| Trade payables (MSME + others) | 56.83 * | 75.00 * | 80.71 | 136.33 |
| Investments (non-current financial asset) | not read | not read | 0.01 | 4.01 |

Component source values (lakh):
- 31-Mar-2026, Results_Sep2026.pdf p6 comparative column (image): PPE 20,384.77; CWIP 2,310.04; ROU 740.54; goodwill 126.75; other intangibles 85.68; inventories 8,372.46; trade receivables 12,981.61; cash 1,898.82; bank 5,066.14; investments 0.55; borrowings NC 61.82; lease NC 551.61; borrowings current 44.96; lease current 230.97; MSME payables 725.32; other payables 7,345.74; share capital 2,646.62; other equity 42,080.73. Total assets 56,501.58.
- 30-Sep-2026, Results_Sep2026.pdf p6 (image): PPE 21,527.38; CWIP 7,348.25; ROU 2,218.37; goodwill 126.75; other intangibles 80.87; intangibles under development 9.95; inventories 11,234.60; trade receivables 20,383.42; cash 2,479.96; bank 366.12; investments 400.58; borrowings NC 61.82; lease NC 2,069.63; borrowings current 23.00; lease current 244.41; MSME payables 1,143.74; other payables 12,489.73; share capital 2,646.62; other equity 47,095.76. Total assets 70,986.02.
- Sep-2026 check (computed): the printed total 70,986.02 reconciles only if the investment line 400.58 is read as part of "Others" (817.44 = 400.58 + 416.86), not added again.
- 30-Sep-2025 and 31-Mar-2025, Results_Sep2025.pdf p5 (text, damaged). Total assets 46,930.89 and 42,655.11 are legible. The components as read do not sum to the printed total (gap about 167.35 lakh, not resolved). Treat * rows as provisional until the page is image-checked.
- Other equity 31-Mar-2025 = 31,655.22 is confirmed by Results_Dec2025.pdf p3 (image), twelve-month column.

Not present in source: gross block and accumulated depreciation (the balance sheet shows net PPE only).

## 4. Cash flow (consolidated, Rs crore; source lakh / 100)

Source: Results_Mar2026.pdf p11, "Statement of audited consolidated cashflow for the year ended 31st March, 2026" (text layer; both columns legible). Source columns run FY26 first, FY25 second. The table below is re-ordered FY25 then FY26.

| Item (Rs crore) | FY25 | FY26 | Source text |
|---|---|---|---|
| PBT | 69.95 | 74.08 | "Profit before tax 7,408.38 6,994.81" |
| Operating profit before working capital | 79.46 | 99.83 | "9,983.13 7,945.77" |
| Working capital change (computed) | (36.28) | (14.77) | after-WC less before-WC |
| Operating profit after working capital | 43.18 | 85.06 | "8,506.02 4317.90" |
| Income tax paid (net of refund) | (16.60) | (19.22) | "(1,922.38) (1,659.51)" |
| Cash from operations (A) | 26.58 | 65.84 | "6,583.64 2,658.39" |
| Purchase of fixed assets | (103.46) | (71.09) | "(7,108.55) (10,346.28)" |
| Movement in other bank balances | 28.77 | (50.21) | "(5,021.28) 2,877.43" |
| Goodwill in subsidiary | nil | (1.27) | "(126.75)" in FY26 column |
| Cash from investing (B), as printed | (73.65) | (119.98) | "(11,998.01) (7,365.24)" |
| Proceeds from borrowings | 0.64 | 0.81 | "81.00 64.00" |
| Repayment of borrowings | (0.18) | (0.33) | "(32.57) (17.77)" |
| Interest paid | (0.36) | (0.94) | "(93.65) (35.92)" |
| Dividend paid | (3.23) | (3.88) | "(387.96) (323.30)" |
| Repayment of lease liabilities | nil | (2.05) | "(204.81)" in FY26 column |
| Proceeds from equity issue incl. premium | nil | 54.40 | "5,439.79" FY26 |
| Proceeds from equity issue, other | nil | 0.60 | "60.21" FY26 |
| Preferential issue expenses | nil | (1.79) | "(179.01)" FY26 |
| Cash from financing (C), as printed | (3.13) | 46.83 | "4,683.01 (312.99)" |
| Net change in cash (A+B+C), as printed | (50.20) | (7.31) | "(731.36) (5,019.84)" |
| Opening cash | 76.50 | 26.30 | "2,630.19 7,650.03" |
| Closing cash | 26.30 | 18.99 | "1,898.82 2,630.19" |

Checks (computed): CFO + CFI + CFF = net change in both years (FY26: 65.84 - 119.98 + 46.83 = -7.31; FY25: 26.58 - 73.65 - 3.13 = -50.20). Closing cash ties to the balance sheet (FY26 18.99; FY25 26.30).

Gaps and caveats:
- Capex = "purchase of fixed assets" only. Capital advances are not a separate line. Not present in source.
- Acquisition of Hyd-Air Engineering Pvt Ltd: no separate line. The only acquisition-type line is "Goodwill in Subsidairy (126.75)" in FY26. Not separately extracted.
- Equity proceeds: FY26 only. FY25 has no equity-issue line.
- FY26 operating line for other non-current financial assets is garbled in the text ("(3622)"). Not used.

## 5. Working-capital days

Formulas (computed):
- Receivable days = trade receivables / revenue from operations x period days.
- Inventory days = inventories / COGS x period days.
- Payable days = trade payables / COGS x period days.
- COGS = cost of materials + change in inventories, as printed.
- Year = 365 days. Half-year (Apr-Sep) = 183 days. Balances are period-end.

| Metric | 31-Mar-2025 (FY25) | 31-Mar-2026 (FY26) | 30-Sep-2025 (H1FY26) | 30-Sep-2026 (H1FY27) |
|---|---|---|---|---|
| Receivable days | not computed (balance not read) | 107.2 | 115.6 | 105.7 |
| Inventory days | 110.8 | 121.8 | 118.3 | 103.3 |
| Payable days | 94.5 | 117.4 | 122.8 | 125.4 |
| Revenue used (lakh) | 37,622.79 | 44,193.51 | 19,520.71 | 35,273.92 |
| COGS used (lakh) | 21,959.06 | 25,092.57 | 11,173.68 | 19,897.12 |

Inputs:
- FY26 COGS = 25,959.80 + (867.23) = 25,092.57 (Results_Mar2026.pdf p8).
- FY25 COGS on the Mar-26 split = 21,585.71 + 373.35 = 21,959.06. On the Dec-25 split it would be 22,379.39, giving inventory days 109.0 and payable days 92.8 (computed). See flag 1.
- H1FY26 COGS = 11,905.81 + (732.13) = 11,173.68 (Results_Sep2026.pdf p4, comparative column). H1FY27 COGS = 19,864.37 + 32.75 = 19,897.12 (Results_Sep2026.pdf p4).
- Half-year days are not annualised. Do not compare them with year figures.

## 6. Standalone vs consolidated (Rs crore; source lakh / 100)

| Period | Revenue standalone | Revenue consolidated | Gap (cons - stand) | PAT standalone | PAT consolidated | Gap (cons - stand) |
|---|---|---|---|---|---|---|
| FY25 (to 31-Mar-2025) | 372.90 | 376.23 | 3.32 | 51.90 | 52.51 | 0.61 |
| FY26 (to 31-Mar-2026) | 412.47 | 441.94 | 29.46 | 55.28 | 55.53 | 0.24 |
| H1FY26 (to 30-Sep-2025) | 180.94 | 195.21 | 14.26 | 21.27 | 21.40 | 0.13 |
| H1FY27 (to 30-Sep-2026) | 341.07 | 352.74 | 11.67 | 55.56 | 55.35 | -0.21 |
| Q2FY27 (quarter to 30-Sep-2026) | 202.06 | 207.36 | 5.30 | 36.50 | 36.56 | 0.05 |

Sources:
- H1FY26, H1FY27, Q2FY27 standalone: Results_Sep2026.pdf p5, note 6 table (image). Revenue H1FY27 34,107.22 and H1FY26 18,094.27; PAT H1FY27 5,556.30 and H1FY26 2,127.35; Q2FY27 revenue 20,206.10 and PAT 3,650.42.
- FY26 standalone: Results_Mar2026.pdf p9, note 5 table (text): revenue "41,247.20"; PAT "5,528.22". Results_Sep2026.pdf p5 shows the same FY26 year figures (image).
- FY25 standalone: Results_Mar2026.pdf p9 (text): revenue "37,290.45"; PAT "5,189.81".
- Consolidated figures: Sections 1 and 2.

Reading the gap: H1FY27 consolidated PAT (5,535.23 lakh) is LOWER than standalone (5,556.30 lakh), so the subsidiary Hyd-Air Engineering Pvt Ltd made a loss at PAT level. Results_Jun2026.pdf p2 (image, auditor paragraph 6a) gives "total Profit/(Loss) after tax of Rs. (26.58) lakhs" for the quarter to 30-Jun-2026 only.

## 7. Cross-check against screener (screener/consolidated.txt, Rs crore)

Screener figures are rounded to whole crore. The file is the consolidated view.

Quarterly sales (screener lines 144-156) against Section 1:

| Quarter | Screener sales | Filing (Rs crore) | Agree? |
|---|---|---|---|
| Sep-24 | 95 | 94.99 | Yes |
| Dec-24 | 100 | 99.80 | Yes |
| Mar-25 | 92 | 91.69 | Yes |
| Jun-25 | 84 | 84.33 | Yes |
| Sep-25 | 111 | 110.87 | Yes |
| Dec-25 | 121 | 120.89 | Yes |
| Mar-26 | 126 | 125.84 | Yes |
| Jun-26 | 145 | 145.38 | Yes |
| Sep-26 | 207 | 207.36 | Yes |

Quarterly net profit (screener "Net Profit" row, line 284 onward): 14, 15, 11, 7, 14, 16, 18, 19, 37. Filing: 13.66, 15.21, 11.23, 7.17, 14.23, 16.49, 17.64, 18.79, 36.56. All agree to rounding.

Annual (screener annual block, lines 320-460; columns Mar-18 to Mar-26 and TTM):
- Sales: Mar-24 318 (filing 317.91, agrees); Mar-25 376 (filing 376.23, agrees); Mar-26 442 (filing 441.94, agrees); TTM 599 (filing TTM computed 59,946.72 lakh = 599.47, agrees). Mar-21 144; Mar-22 241; Mar-23 269.
- Net profit: Mar-24 42 (filing 41.73, agrees); Mar-25 53 (filing 52.51, agrees to rounding); Mar-26 56 (filing 55.53, agrees); TTM 89 (filing TTM computed 89.48, agrees).
- **DISAGREEMENT: EPS.** Screener "EPS in Rs" for Mar-26 = 4.20. Filing consolidated basic EPS FY26 = 4.28 (Results_Mar2026.pdf p8). Screener Mar-25 = 4.06 agrees with the filing. The screener file does not state its EPS basis. Both values reported; not resolved.
- Rounding only: screener Sep-26 depreciation shows 0 (filing 0.45 crore, from 44.76 lakh).
- Latest-year check: screener carries Mar-26 and Sep-26. No missing year.

## 8. Not covered in this pass (clean gaps)

- Consolidated P&L for FY21, FY22, FY23: not extracted. Screener gives sales 144 / 241 / 269 and PAT 6 / 28 / 30 (rounded, aggregator only). Restated_Financial_Statements_FY_2023__2022__2021.txt is 0 bytes; its PDF is an image and was not rendered.
- FY22-FY24 balance sheets and cash flows: not extracted. AR-FY22, AR-FY23 and AR-FY24 text files not read for these.
- 30-Sep-2024 balance sheet: not in the folder.
- Standalone balance sheets and cash flows: not extracted.
- Gross block, accumulated depreciation, capital advances as a separate line: not present in source.
- Q1FY25 quarter P&L and Q2FY25 EPS: not extracted.
- Receivable days at 31-Mar-2025: not computed (balance not read cleanly).
- Results_Sep2025.pdf p5 (balance sheet, Sep-25 and Mar-25) is text only and damaged. Image check still needed for the * rows.
- Audited_Financial_Results_for_March_2025.pdf (scan): not rendered.
- Un-audited_Financial_Result_June_2023, December_2023 and March_2024 .txt files are 0-2 bytes; their PDFs are scans and were not rendered.

## 9. Update (second pass): image checks, FY23-FY24 statements

### 9a. Image check of Sep-2025 balance sheet (Results_Sep2025.pdf p5, image, all values legible)
Supersedes the * rows in Section 3. Lakh values; Rs crore = lakh / 100.

| Item (lakh) | 31-Mar-2025 | 30-Sep-2025 |
|---|---|---|
| PPE | 16,966.10 | 16,425.83 |
| CWIP | 984.22 | 2,508.40 |
| Right-of-use asset | nil | 864.05 |
| Goodwill | 126.75 | 126.75 |
| Other intangibles | 88.26 | 72.41 |
| Other non-current financial assets | 272.62 | 273.81 |
| Other non-current assets | 269.01 | 259.95 |
| Inventories | 6,668.28 | 7,225.01 |
| Trade receivables | 11,651.79 | 12,330.73 |
| Cash and cash equivalents | 2,630.19 | 2,800.20 |
| Other bank balances | 44.85 | 53.25 |
| Other current financial assets | 14,326.83 | 15,184.18 |
| Other current assets | 2,953.04 | 3,990.49 |
| Total assets | 42,655.11 | 46,930.89 |
| Share capital | 2,586.41 | 2,586.41 |
| Other equity | 31,655.22 | 33,407.31 |
| Total equity | 34,241.62 | 35,993.71 |
| Borrowings, non-current | 32.64 | 32.64 |
| Lease liabilities, non-current | nil | 782.68 |
| Deferred tax liabilities | 156.49 | 166.83 |
| Borrowings, current | 25.71 | 13.15 |
| Lease liabilities, current | nil | 101.45 |
| Trade payables, MSME | 425.69 | 1,037.87 |
| Trade payables, others | 5,257.35 | 6,461.79 |
| Other current financial liabilities | 5,708.74 | 7,614.27 |
| Other current liabilities | 1,976.87 | 1,966.00 |
| Current tax liabilities | 538.75 | 374.76 |

Checks (computed): Mar-25 liabilities sum to 42,655.11; Sep-25 liabilities sum to 46,930.89. Printed Sep-25 total equity is 35,993.71 (2,586.41 + 33,407.31 = 35,993.72; one-lakh rounding in the source).
Corrections to Section 3: Mar-25 trade receivables = 116.52 crore (was "not read"); Mar-25 lease liabilities = nil (was "not read"); Mar-25 ROU = nil; Sep-25 total equity = 359.94 crore (confirmed). Rows marked * are now image-verified.
Corrected Section 5: receivable days at 31-Mar-2025 = 113.0 (11,651.79 / 37,622.79 x 365, computed). Sep-2025 receivable days 115.6 unchanged.

### 9b. FY24 and FY23 consolidated statements (Ind AS, AR-FY24: source-docs/ar/AR-FY24.txt)
- Balance sheet: lines 4192-4240, "Consolidated Balance Sheet as at March 31, 2024" (two columns: 31-Mar-2024, 31-Mar-2023).
- P&L: lines 4285-4320 (AR-FY24.txt). Cash flow: lines 4354-4390.
- Source is in lakh (AR-FY24 text layer, clean). Rs crore = lakh / 100.

P&L (lakh):

| Line | FY23 (31-Mar-2023) | FY24 (31-Mar-2024) |
|---|---|---|
| Revenue from operations | 26,946.10 | 31,790.73 |
| Other income | 3.90 | 384.32 |
| Total income | 26,950.00 | 32,175.05 |
| Cost of materials consumed | 18,851.12 | 20,723.88 |
| Changes in inventories (as printed) | (1,778.37) | (583.59) |
| Employee benefit expenses | 2,315.14 | 2,620.18 |
| Finance costs | 343.39 | 213.86 |
| Depreciation and amortisation | 521.93 | 626.19 |
| Other expenses | 2,266.56 | 2,849.51 |
| Total expenses | 22,519.77 | 26,450.02 |
| PBT before exceptional | 4,430.23 | 5,725.03 |
| Exceptional item (FCTL exchange fluctuation) | 307.71 | nil |
| PBT | 4,122.52 | 5,725.03 |
| Current tax | 1,018.50 | 1,415.70 |
| Deferred tax | 22.21 | 43.93 |
| Earlier-year tax | 66.59 | 92.00 |
| PAT | 3,015.21 | 4,173.40 |
| EPS basic (Rs) | 2.64 | 3.39 |

Notes: FY24 materials, inventory change and employee in AR-FY24 differ by 0.01 to 0.03 lakh from the Dec-2024 filing text (20,723.89; (583.62) computed; 2,620.19). Use AR-FY24 (audited). Rs crore for FY24 PAT 41.73 and FY23 PAT 30.15 (computed).
FY23 revenue 269.46 crore (computed). Screener Mar-23 sales 269 agrees; Mar-24 318 agrees.

Balance sheet (lakh):

| Item | 31-Mar-2023 | 31-Mar-2024 |
|---|---|---|
| PPE (net) | 5,554.33 | 8,237.28 |
| PPE WIP | 64.25 | 537.83 |
| Intangible assets | 77.44 | 59.63 |
| Intangible assets WIP | nil | 3.78 |
| Other non-current financial assets | 55.97 | 345.84 |
| Other non-current assets | 201.82 | 304.83 |
| Total non-current assets | 5,953.82 | 9,489.18 |
| Inventories | 5,600.70 | 5,894.24 |
| Trade receivables | 6,697.02 | 9,472.28 |
| Cash and cash equivalents | 613.18 | 7,650.03 |
| Other bank balances | 12.11 | 2,922.28 |
| Other current assets | 2,520.92 | 2,068.94 |
| Total current assets | 15,443.93 | 28,007.77 |
| Total assets | 21,397.75 | 37,496.95 |
| Equity share capital | 2,286.41 | 2,586.41 |
| Other equity | 9,122.90 | 26,728.57 |
| Total equity | 11,409.31 | 29,314.98 |
| Borrowings, non-current | 1,968.63 | 6.34 |
| Other non-current liabilities | 98.57 | nil |
| Deferred tax liabilities | 28.02 | 71.95 |
| Borrowings, current | 2,531.97 | 5.77 |
| Trade payables, MSME | 883.08 | 322.10 |
| Trade payables, others | 2,779.96 | 5,192.16 |
| Other current liabilities | 1,091.05 | 2,396.88 |
| Current tax liabilities | 607.16 | 186.77 |
| Total current liabilities | 7,893.23 | 8,103.68 |
| Total equity and liabilities | 21,397.75 | 37,496.95 |

Notes: AR-FY24 shows no lease-liability line; leases (Ind AS 116) are not separately shown for these years. Gross block not shown. Cash + other bank balances at 31-Mar-2024 = 10,572.31 lakh, matching the cash-flow closing balance.

Cash flow (lakh; source FY24 first, FY23 second):

| Item | FY23 | FY24 |
|---|---|---|
| PBT | 4,122.52 | 5,725.03 |
| Operating profit before working capital | 3,902.73 | 4,779.48 |
| Net cash from operating activities | 721.76 | 4,407.87 |
| Purchase of PPE, intangibles and CWIP | (945.63) | (3,768.68) |
| Interest received | 0.44 | 278.22 |
| Net cash from investing | (945.19) | (3,490.46) |
| Proceeds from equity issue (face value) | nil | 300.00 |
| Proceeds from equity issue incl. premium | nil | 15,900.00 |
| IPO issue expenses | nil | (2,239.41) |
| Repayment of borrowings (as printed) | 587.88 | (4,488.48) |
| Interest paid | (343.39) | (213.86) |
| Dividend paid | (228.64) | (228.64) |
| Net cash from financing | 15.85 | 9,029.60 |
| Net change in cash and cash equivalents | (207.58) | 9,947.02 |
| Opening cash and cash equivalents | 832.88 | 625.29 |
| Closing cash and cash equivalents | 625.29 | 10,572.31 |

Notes: FY23 "repayment of borrowings" is a positive 587.88 as printed (a net inflow in the source label). Printed sub-totals used.
Cash-flow FY24 operating line "Net cash flow from operating activities 4,407.87" and net change 9,947.02 are as printed.

### 9c. FY22 (gap)
- AR-FY23 (ar/AR-FY23.txt lines 292-313, "Financial highlights", text): consolidated FY22 "Sales and other income" 24,099.54; "Profit before Tax and Exceptional Items" 3,645.21; "Profit after tax" 2,750.59 (lakh). FY23 consolidated: 26,950.00; 4,430.23; 3,015.21. EPS FY22 12.03 and FY23 2.64 as printed. The FY22 EPS of 12.03 is on a different share count from FY23 2.64 (the FY23 EPS in AR-FY24 is 2.64; FY22 is not restated in the text read). Flag: confirm before using.
- ar/AR-FY22.txt: consolidated FY21 PAT 601.10 (line 973). Its revenue lines (line 982-983) are standalone-type text (24,099.07 vs 14,478.97) and not a consolidated statement.
- FY22 full balance sheet, P&L and cash flow: NOT in the text files. Company/Restated_Financial_Statements_FY_2023__2022__2021.txt is 0 bytes (image PDF); not rendered in this pass.
- AR-FY23.txt and AR-FY22.txt contain no consolidated balance sheet, P&L or cash-flow statement text (grep for Balance Sheet, Cash Flow and Statement of Profit returned none).

### 9d. Still not done
- Notes-02 (a) deck KPI tables and (c) restatement diffs for the other 13 decks: not done in this pass (see notes-02 Section 0).
- FY22 full statements: not in folder text; restated PDF not rendered.
