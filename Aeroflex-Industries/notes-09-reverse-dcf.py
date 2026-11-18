#!/usr/bin/env python3
"""Reverse DCF for Aeroflex Industries, 18-Nov-2026.

What growth does the price already assume? Two-stage FCFF model:
  stage 1: 10 years at growth g (solved for), reinvestment = g / incremental ROIC
  stage 2: terminal growth gt, reinvestment = gt / ROIC_terminal
Base = TTM NOPAT on ONE consistent depreciation basis (WDV, the pre-change method), so the
01-Apr-2026 WDV->SLM switch and its Q2FY27 catch-up do not flatter the base.
All Rs crore.
"""

PRICE = 497.0
SHARES = 13.2330768          # crore shares after the Feb-2026 preferential allotment
MCAP = PRICE * SHARES
# Sep-2026 consolidated balance sheet (Q2FY27 deck p10)
CASH = 24.80 + 3.66 + 4.01   # cash, bank balances, investments
DEBT = 0.62 + 0.23           # borrowings
LEASES = 20.70 + 2.44        # lease liabilities (treated as debt)
EV = MCAP - CASH + DEBT + LEASES

# TTM Oct-2025..Sep-2026, consolidated
EBITDA_H2FY26 = 27.8 + 29.9   # Dec-25 + Mar-26 quarters (screener, cross-check vs results)
EBITDA_H1FY27 = 83.83         # deck p8
DEP_H2FY26 = 6.0 + 8.0        # screener rounded; replace with filed figures when extractor returns
DEP_H1FY27_WDV = 16.70        # deck p9 "as per WDV method"
OTHER_INC_TTM = 1.5
TAX = 0.252                   # statutory 25.17% (s.115BAA)

EBIT_TTM = EBITDA_H2FY26 + EBITDA_H1FY27 - DEP_H2FY26 - DEP_H1FY27_WDV
NOPAT0 = EBIT_TTM * (1 - TAX)


def value(g, nopat0=NOPAT0, wacc=0.125, roic=0.22, gt=0.05, roic_t=0.16, years=10):
    """g for years 1-5, then a linear fade to gt by year 10. Reinvestment = growth / ROIC,
    capped at 100% of NOPAT plus external funding (negative FCFF allowed: it is real dilution)."""
    pv, nopat = 0.0, nopat0
    for t in range(1, years + 1):
        gy = g if t <= 5 else g + (gt - g) * (t - 5) / 5
        nopat *= (1 + gy)
        fcff = nopat * (1 - gy / roic)
        pv += fcff / (1 + wacc) ** t
    tv_fcff = nopat * (1 + gt) * (1 - gt / roic_t)
    pv += tv_fcff / (wacc - gt) / (1 + wacc) ** years
    return pv, nopat


def solve(target, **kw):
    lo, hi = -0.2, 0.9
    for _ in range(200):
        mid = (lo + hi) / 2
        if value(mid, **kw)[0] < target:
            lo = mid
        else:
            hi = mid
    return mid


if __name__ == "__main__":
    print(f"MCAP {MCAP:,.0f}  EV {EV:,.0f}")
    print(f"TTM EBIT (WDV basis) {EBIT_TTM:.1f}  NOPAT0 {NOPAT0:.1f}  EV/NOPAT {EV/NOPAT0:.1f}x")
    print("\nImplied 10-yr NOPAT growth, by WACC and incremental ROIC (terminal g 5%, terminal ROIC 16%)")
    print("WACC   ROIC=18%  ROIC=22%  ROIC=30%")
    for w in (0.115, 0.125, 0.135):
        row = [solve(EV, wacc=w, roic=r) for r in (0.18, 0.22, 0.30)]
        print(f"{w:.1%}  " + "  ".join(f"{x:7.1%}" for x in row))
    g = solve(EV)
    _, n10 = value(g)
    n5 = NOPAT0 * (1 + g) ** 5
    print(f"\nBase case (WACC 12.5%, ROIC 22%): g = {g:.1%} for 5 yrs then fade; "
          f"year-5 NOPAT = {n5:,.0f} cr, year-10 NOPAT = {n10:,.0f} cr")

    # Exit-multiple framing: what FY31 PAT does a 12.5% annual return need?
    print("\nPAT needed in FY31 (5 yrs) for a 12.5% annual return from Rs 497, by exit P/E")
    PAT0 = 83.3  # TTM PAT on WDV basis: H2FY26 34.1 + H1FY27 normalised 49.2
    for pe in (25, 30, 40, 50):
        need = MCAP * 1.125 ** 5 / pe
        print(f"  exit {pe}x: PAT {need:,.0f} cr = {need/PAT0:.1f}x TTM, CAGR {(need/PAT0)**0.2-1:.1%}")
