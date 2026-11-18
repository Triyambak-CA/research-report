# Aeroflex - notes 10: adversarial check of the FY26 forex claim

Checked 18-Nov-2026 against the primary filings. Claim under test (notes-03 finding 1):
"FY26 margin expansion is entirely forex. Rs 15.03 cr of exchange gains sits inside revenue from operations (consolidated). Excluding it, product-sales margin was flat at about 19.7%, and PBT excluding forex FELL about 7% (Rs 63.6 cr in FY25 to Rs 59.0 cr in FY26)."

**Verdict: PARTLY CONFIRMED.** Every figure checks. Two words overreach: "entirely" (it is about 88%) and the implied reading of the PBT fall (it is depreciation, not operations).

## 1. The Rs 15.03 cr figure - CONFIRMED
- ARFY26 consolidated Note 21 "Revenue from operation", PDF p126 (printed p147): Other operating revenue - "Foreign exchange fluctuation" Rs 1,502.73 lakh FY26 vs Rs 636.84 lakh FY25. Misc operating revenue 363.33 / 327.26. Sale of products 42,327.46 / 36,658.69. Total 44,193.51 / 37,622.79.
- Standalone equivalent: ARFY26 PDF p182, Rs 1,501.40 lakh vs 636.23 lakh.
- Policy: ARFY26 PDF p107 (consolidated), p165 (standalone): forex on receipts and payments of debtors and creditors AND year-end restatement "is forming part of the other operating revenue".
- No offsetting forex loss elsewhere in FY26: Note 26 finance cost and Note 28 other expenses (PDF p126-127) carry no exchange line. Other income Note 22 (Rs 135.91 lakh) has none.

## 2. FY25 equivalent - SAME CLASSIFICATION, like-for-like holds
- ARFY25 consolidated Note 20, PDF p143: "Foreign exchange fluctuation" Rs 636.84 lakh FY25 (FY24 391.26) inside other operating revenue. Policy at ARFY25 PDF p126.
- ARFY25 other expenses: "Exchange fluctuation on foreign currency term loan" nil in FY25 (46.73 lakh in FY24 only). Other income Note 21 has no forex.
- So FY25 6.37 cr and FY26 15.03 cr sit on the same line; the comparison is consistent.

## 3. Recomputation (Rs cr, consolidated)
| | FY25 | FY26 | Change |
|---|---|---|---|
| Revenue from operations | 376.23 | 441.94 | +17.5% |
| Forex in revenue | 6.37 | 15.03 | +8.66 |
| Revenue ex-forex | 369.86 | 426.91 | +15.4% |
| PBT (ARFY26 consolidated P&L, PDF p94; deck slide 7) | 69.95 | 74.08 | +5.9% |
| Depreciation | 11.27 | 26.08 | +14.81 |
| Finance cost | 0.36 | 0.94 | |
| Other income | 2.53 | 1.36 | |
| EBITDA (PBT+D+FC-OI) | 79.05 | 99.74 | +26.2% |
| EBITDA margin, reported | 21.01% | 22.57% | +156 bps |
| EBITDA ex-forex | 72.68 | 84.71 | **+16.6%** |
| EBITDA margin ex-forex | 19.65% | 19.84% | +19 bps |
| PBT ex-forex | 63.58 | 59.05 | **-7.1%** |
| PBT ex-forex, before depreciation | 74.85 | 85.13 | +13.7% |

- Forex explains about 137 of the 156 bps margin gain (about 88%). "Entirely" overstates; "almost entirely" or "nearly 90%" is accurate.
- "Flat at about 19.7%": FY25 19.65%, FY26 19.84%. Flat is fair; quote it as "19.7% to 19.8%".
- The PBT ex-forex fall of 4.5 cr is wholly the depreciation step-up (+14.8 cr; Hyd-Air acquisition, new capacity, lease ROU amortisation, see notes-03 section 1). Ex-forex EBITDA grew 16.6%, slightly faster than ex-forex revenue (15.4%). The core operating business grew; it did not shrink. A reader will read "PBT ex-forex fell 7%" as operating weakness unless depreciation is named alongside it.

## 4. Company deck EBITDA includes the forex - CONFIRMED
- Q4FY26 deck (source-docs/calls/Q4FY26-deck.txt, slide 7 consolidated P&L): Revenue from operations 441.94, EBITDA 99.74, margin 22.57%, footnote "#EBITDA and EBITDA margin are calculated based on revenue from operations". 99.74 reconciles exactly to PBT 74.08 + D 26.08 + FC 0.94 - OI 1.36, so it includes the 15.03 cr forex. Q4FY26 transcript line 202 cites "INR99.7 crores ... 22.6%" with no forex caveat; no forex discussion found in the Q2-Q4 FY26 transcripts.

## 5. Is forex in revenue unusual? - NO, but it is the generous choice
- Schedule III Division II does not define "other operating revenue"; the ICAI Guidance Note leaves operating vs other income to the facts of each case. Many Indian exporters book trade-receivable forex in other operating revenue. FRRB has objected where forex was buried inside "sale of products"; Aeroflex shows it as a separate, labelled line, which is transparent.
- It is still the more flattering of the two permitted presentations because it lifts reported EBITDA and OPM, and it includes unrealised year-end restatement. Unhedged USD/EUR receivables mean it reverses if the rupee strengthens.
- Part of the gain is economic for an exporter with export sales of about 69% of product sales (294.01 of 423.27 cr) and INR costs. Rupee depreciation also lifts the translated value of new export invoices inside "sale of products", so stripping the forex line does not remove all currency benefit; ex-forex is a conservative, not neutral, view.
- The notes-03 "asymmetric presentation" point is weaker than stated: earlier losses below the line were on a foreign currency TERM LOAN (financing), not trade balances. Different item, so different line is defensible.

## Corrected wording for the report
"Nearly 90% of FY26's 156 bps EBITDA margin gain is forex. Rs 15.03 cr of exchange gains (FY25: Rs 6.37 cr, same line) sits in other operating revenue and in the company's 99.74 cr EBITDA. Ex-forex, EBITDA margin was flat at 19.7-19.8% and ex-forex EBITDA grew 16.6%, in line with sales. Ex-forex PBT fell 7% (63.6 to 59.1 cr) because depreciation more than doubled."
