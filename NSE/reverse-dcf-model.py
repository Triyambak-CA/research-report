#!/usr/bin/env python3
"""Reverse DCF for National Stock Exchange of India Ltd, at RHP stage.
Solves for the 10-year earnings growth implied by a given price.
All amounts Rs million. Shares 2,475 million. Figures from the RHP dated 10-Sep-2026."""
SHARES = 2475.0

# --- Earnings bases -------------------------------------------------------
FY26_PAT      = 103020.61   # profit for the year, FY26
Q1FY27_PAT    =  31200.84   # three months to 30-Jun-2026
Q1FY26_PAT    =  29238.53   # three months to 30-Jun-2025
TTM_PAT       = FY26_PAT - Q1FY26_PAT + Q1FY27_PAT   # trailing twelve months to 30-Jun-2026

# SEBI settlement fees charged: FY26 14,315.57 of which 403.50 fell in Q1 FY26.
# Q1 FY27 carries no material settlement charge (normalised EBITDA sits BELOW reported).
SETTLEMENT_TTM = 14315.57 - 403.50
TAX = 0.26
TTM_NORM = TTM_PAT + SETTLEMENT_TTM * (1 - TAX)

# FCFE conversion. FY26: PAT 103,020.61 + D&A 6,255.21 - capex 17,547.83.
FCFE_RATIO = (FY26_PAT + 6255.21 - 17547.83) / FY26_PAT

def equity_value(e0, g, years=10, ke=0.12, gt=0.05, fcfe=FCFE_RATIO):
    pv, e = 0.0, e0
    for t in range(1, years + 1):
        e *= (1 + g)
        pv += (e * fcfe) / (1 + ke) ** t
    term = (e * fcfe * (1 + gt)) / (ke - gt)
    return pv + term / (1 + ke) ** years

def implied_growth(price, e0, **kw):
    lo, hi, target = -0.50, 0.60, price * SHARES
    if equity_value(e0, hi, **kw) < target or equity_value(e0, lo, **kw) > target:
        return None
    for _ in range(200):
        mid = (lo + hi) / 2
        if equity_value(e0, mid, **kw) < target: lo = mid
        else: hi = mid
    return (lo + hi) / 2

print("NSE REVERSE DCF - at the offer price band")
print("=" * 86)
print(f"FY26 PAT                         : {FY26_PAT:>12,.2f}")
print(f"Q1 FY27 PAT (3m to 30-Jun-2026)  : {Q1FY27_PAT:>12,.2f}   (+{(Q1FY27_PAT/Q1FY26_PAT-1)*100:.1f}% YoY)")
print(f"TTM PAT to 30-Jun-2026           : {TTM_PAT:>12,.2f}")
print(f"TTM PAT normalised               : {TTM_NORM:>12,.2f}   (adds back Rs {SETTLEMENT_TTM:,.2f} mn settlement fees after tax)")
print(f"FCFE / PAT conversion            : {FCFE_RATIO:>12.3f}")
print(f"Base case: 12% cost of equity, 5% terminal growth, 10-year fade")
print()

anchors = [
    ("Floor price", 1700.00),
    ("Cap price",   1785.00),
    ("18-month weighted avg cost of acquisition", 1747.54),
]
print(f"{'Anchor':<44}{'Rs/sh':>9}{'Mkt cap Rs cr':>15}{'P/E TTM':>10}{'P/E norm':>10}{'P/B':>7}")
print("-" * 95)
NAV = 142.40   # net asset value per share at 30-Jun-2026
for label, p in sorted(anchors, key=lambda x: x[1]):
    print(f"{label:<44}{p:>9,.0f}{p*SHARES/10:>15,.0f}"
          f"{p*SHARES/TTM_PAT:>10.1f}{p*SHARES/TTM_NORM:>10.1f}{p/NAV:>7.1f}")

print()
print("IMPLIED 10-YEAR EARNINGS GROWTH")
print("-" * 95)
print(f"{'Anchor':<44}{'on TTM':>12}{'on TTM normalised':>20}")
print("-" * 95)
for label, p in sorted(anchors, key=lambda x: x[1]):
    g1, g2 = implied_growth(p, TTM_PAT), implied_growth(p, TTM_NORM)
    f = lambda g: f"{g*100:.1f}%" if g is not None else "n/a"
    print(f"{label:<44}{f(g1):>12}{f(g2):>20}")

print()
print("SENSITIVITY at the CAP PRICE of Rs 1,785, on normalised TTM earnings")
print("-" * 95)
print(f"{'':>10}" + "".join(f"{'terminal '+format(gt*100,'.0f')+'%':>18}" for gt in (0.04, 0.05, 0.06)))
for ke in (0.11, 0.12, 0.13):
    row = f"ke={ke*100:>4.0f}%  "
    for gt in (0.04, 0.05, 0.06):
        g = implied_growth(1785.0, TTM_NORM, ke=ke, gt=gt)
        row += f"{(format(g*100,'.1f')+'%') if g is not None else 'n/a':>18}"
    print(row)

print()
print("FORWARD SCENARIOS - value per share on normalised TTM earnings")
print("-" * 95)
scen = [
    ("Bear  - curbs resume, options franchise plateaus", 0.07, 0.13, 0.045),
    ("Base  - recovery holds, compounding with the investor base", 0.14, 0.12, 0.05),
    ("Bull  - premium turnover and annuity lines compound hard", 0.20, 0.115, 0.055),
]
CAP = 1785.0
for name, g, ke, gt in scen:
    v = equity_value(TTM_NORM, g, ke=ke, gt=gt) / SHARES
    print(f"{name:<60}{'g '+format(g*100,'.0f')+'%':>7}  Rs {v:>7,.0f}  ({(v/CAP-1)*100:+.0f}% vs cap price)")
