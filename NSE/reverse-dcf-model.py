#!/usr/bin/env python3
"""Reverse DCF for National Stock Exchange of India Ltd.
Solves for the implied 10-year earnings growth already embedded in a given price.
All amounts Rs million. Shares 2,475,000,000 = 2,475 million."""
SHARES = 2475.0  # million

# FY26 earnings bases, from the restated consolidated financials
PAT_TOTAL      = 103020.61   # profit for the year, FY26
PAT_CONT       = 101795.29   # continuing operations, attributable to parent
SETTLEMENT_PBT = 14315.57    # SEBI settlement fees charged in FY26
TAX            = 0.26        # effective tax rate
PAT_NORM       = PAT_CONT + SETTLEMENT_PBT * (1 - TAX)

# FCFE conversion: FY26 PAT + D&A - capex = 103020.61 + 6255.21 - 17547.83
FCFE_RATIO = (PAT_TOTAL + 6255.21 - 17547.83) / PAT_TOTAL

def equity_value(e0, g, years=10, ke=0.12, gt=0.05, fcfe=FCFE_RATIO):
    """PV of FCFE growing at g for `years`, then at gt in perpetuity."""
    pv, e = 0.0, e0
    for t in range(1, years + 1):
        e *= (1 + g)
        pv += (e * fcfe) / (1 + ke) ** t
    term = (e * fcfe * (1 + gt)) / (ke - gt)
    return pv + term / (1 + ke) ** years

def implied_growth(price, e0, **kw):
    lo, hi = -0.50, 0.60
    target = price * SHARES
    if equity_value(e0, hi, **kw) < target: return None
    if equity_value(e0, lo, **kw) > target: return None
    for _ in range(200):
        mid = (lo + hi) / 2
        if equity_value(e0, mid, **kw) < target: lo = mid
        else: hi = mid
    return (lo + hi) / 2

print("NSE REVERSE DCF")
print("=" * 78)
print(f"Shares outstanding (mn)          : {SHARES:,.0f}")
print(f"FY26 PAT total (Rs mn)           : {PAT_TOTAL:,.2f}")
print(f"FY26 PAT continuing (Rs mn)      : {PAT_CONT:,.2f}")
print(f"FY26 PAT normalised (Rs mn)      : {PAT_NORM:,.2f}   (continuing + settlement fees after tax)")
print(f"FCFE / PAT conversion            : {FCFE_RATIO:.3f}   (PAT + D&A 6,255.21 - capex 17,547.83)")
print(f"Cost of equity / terminal growth : 12.0% / 5.0% base case")
print()

anchors = [
    ("Low end of last-year transactions",           1350.00),
    ("Screener implied (aggregator, unverified)",   1785.00),
    ("18-month WACA, DRHP-disclosed",               1747.54),
    ("1-year WACA, DRHP-disclosed",                 1909.02),
    ("High end of last-year transactions",          2260.00),
]

print(f"{'Anchor price':<44}{'Rs/sh':>9}{'Mkt cap Rs cr':>15}{'P/E rep':>9}{'P/E norm':>10}")
print("-" * 78)
for label, p in sorted(anchors, key=lambda x: x[1]):
    mc_cr = p * SHARES / 10.0
    print(f"{label:<44}{p:>9,.0f}{mc_cr:>15,.0f}{p*SHARES/PAT_TOTAL:>9.1f}{p*SHARES/PAT_NORM:>10.1f}")

print()
print("IMPLIED 10-YEAR EARNINGS GROWTH (then 5% terminal, 12% cost of equity)")
print("-" * 78)
print(f"{'Anchor price':<44}{'on reported':>14}{'on normalised':>16}")
print("-" * 78)
for label, p in sorted(anchors, key=lambda x: x[1]):
    gr = implied_growth(p, PAT_TOTAL)
    gn = implied_growth(p, PAT_NORM)
    f = lambda g: f"{g*100:.1f}%" if g is not None else "n/a"
    print(f"{label:<44}{f(gr):>14}{f(gn):>16}")

print()
print("SENSITIVITY: implied 10-year growth on NORMALISED earnings, at Rs 1,909.02")
print("-" * 78)
print(f"{'':>10}" + "".join(f"{'gt='+format(gt*100,'.0f')+'%':>14}" for gt in (0.04, 0.05, 0.06)))
for ke in (0.11, 0.12, 0.13):
    row = f"ke={ke*100:>4.0f}%  "
    for gt in (0.04, 0.05, 0.06):
        g = implied_growth(1909.02, PAT_NORM, ke=ke, gt=gt)
        row += f"{(format(g*100,'.1f')+'%') if g is not None else 'n/a':>14}"
    print(row)

print()
print("WHAT THE GROWTH WOULD REQUIRE - normalised PAT in year 10 (Rs crore)")
print("-" * 78)
for label, p in sorted(anchors, key=lambda x: x[1]):
    g = implied_growth(p, PAT_NORM)
    if g is None: continue
    e10 = PAT_NORM * (1 + g) ** 10 / 10.0
    print(f"{label:<44}{'growth '+format(g*100,'.1f')+'%':>14}  PAT yr10 Rs {e10:,.0f} cr  ({(1+g)**10:.1f}x today)")
