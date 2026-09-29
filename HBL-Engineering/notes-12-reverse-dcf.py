#!/usr/bin/env python3
"""Reverse DCF for HBL Engineering (report Section 14). Solves the 10-year profit CAGR the price implies.
Price basis Rs 808.30 (29-Sep-2026 close), 27.72 cr shares. Net cash and treasury from AR-FY26 consolidated:
cash 528.21 + other bank 23.70 + current investments 140.52 + non-current MF 70.61 + AIF 60.79 - borrowings 67
(screener BS FY26). Equity-method associates (Tonbo, NSTL) carried separately and ignored (conservative).
Model: owner earnings = PAT x (1 - g / RoIC_incr); 10 explicit years; Gordon terminal at g_T; discount at CoE.
"""
PRICE, SHARES = 808.30, 27.72
MCAP = PRICE * SHARES
NET_CASH = 528.21 + 23.70 + 140.52 + 70.61 + 60.79 - 67.0
EV_OPS = MCAP - NET_CASH

def value(pat0, g, coe=0.125, g_t=0.05, roic=0.30, years=10):
    v, pat = 0.0, pat0
    for t in range(1, years + 1):
        pat *= (1 + g)
        v += pat * (1 - g / roic) / (1 + coe) ** t
    tv = pat * (1 + g_t) * (1 - g_t / roic) / (coe - g_t)
    return v + tv / (1 + coe) ** years

def implied_g(pat0, **kw):
    lo, hi = -0.2, 0.6
    for _ in range(200):
        mid = (lo + hi) / 2
        if value(pat0, mid, **kw) < EV_OPS: lo = mid
        else: hi = mid
    return mid

if __name__ == "__main__":
    print(f"Market cap Rs {MCAP:,.0f} cr; net cash and treasury Rs {NET_CASH:,.0f} cr; operating equity value Rs {EV_OPS:,.0f} cr")
    bases = [("FY26 reported PAT (Kavach peak)", 814.9), ("TTM PAT Q2FY26-Q1FY27", 780.0),
             ("FY25 PAT (pre-peak)", 276.9), ("Q1 FY27 x4", 436.6), ("Normalised (segment build)", 450.0)]
    for coe in (0.12, 0.125, 0.135):
        for roic in (0.25, 0.40):
            print(f"\nCoE {coe:.1%}, incremental RoIC {roic:.0%}, terminal growth 5%")
            for name, p in bases:
                g = implied_g(p, coe=coe, roic=roic)
                print(f"  {name:36s} base Rs {p:7.1f} cr -> implied 10y PAT CAGR {g:6.1%}  FY36 PAT Rs {p*(1+g)**10:8,.0f} cr")
