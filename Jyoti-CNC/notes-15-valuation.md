# notes-15 - valuation workings, 29-Sep-2026

Model file: notes-15-reverse-dcf.py (stdlib Python; run `python3 notes-15-reverse-dcf.py`).

## Inputs
- Price Rs 1,061 (screener, 29-Sep-2026 12:17 IST, aggregator). Shares 22,74,23,096 (SHP Jun-2026).
- Market cap Rs 24,130 cr. Net debt 31-Mar-2026: borrowings 849.71 + leases 3.04 - cash 52.87 - other
  bank balances 84.25 = 715.63. EV Rs 24,845 cr.
- FY26 revenue 2,093.13; operating EBIT (PBT 467.19 + finance 69.84 - other income 60.48) = 476.55,
  margin 22.8%. Tax 25.17%.
- Realised incremental sales-to-capital: FY24-25 0.62 (479.2 / 775), FY25-26 0.42 (275.4 / 656),
  FY23-26 0.63 (1,163.8 / 1,859). Invested capital = net worth + borrowings - cash and bank.

## Reverse DCF results (10 years constant growth, 5-year fade to 5%, terminal reinvestment at the
implied return)
- WACC 12.5%, margin 22.8%: s2c 0.6 -> no growth rate reaches EV (max value Rs 2,789 cr at g = 0);
  s2c 1.0 -> 36.0% (FY36 revenue about Rs 45,445 cr); s2c 1.5 -> 30.4%.
- Full grid in the script output (WACC 11.5 / 12.5 / 13.5%; margin 20 / 22.8 / 25%).
- Ceiling checks, WACC 12.5%, margin 22.8%: at 20% growth, value with zero reinvestment about Rs 17,501
  cr (< EV); at 25% growth, about Rs 26,777 cr with zero reinvestment, Rs 23,634 cr at s2c 5.

## Multiples
P/E TTM 75.0x (TTM PAT 321.7 = 336.0 - 71.4 + 57.1; EPS 14.15); FY26 71.8x. EV/EBITDA FY26 47.2x
(526.8), TTM 46.4x (535.4). EV/sales 11.9x. P/B 12.1x.
Own history (aggregator prices / derived TTM EPS): ~101x at ~Rs 1,370 (Jan-2025, TTM PAT 307);
~40x at Rs 585.50 (01-Jun-2026, FY26 EPS 14.78); ~79x at Rs 1,113.85 (21-Sep-2026).

## Scenarios (FY28E, not targets)
Bear 10%/10%, EBITDA 20%, D&A 75, finance 110, OI 0, tax 27% -> PAT 234.8, EPS 10.32, 35x = Rs 362.
Base 20%/20%, 24%, 75/95/10, 26% -> PAT 416.9, EPS 18.33, 45x = Rs 825.
Bull 28%/28%, 25.5%, 75/90/15, 25% -> PAT 543.4, EPS 23.9, 60x = Rs 1,433.
Weights 35/45/20 -> Rs 785. CMP at 65% of the bear-to-bull span.
