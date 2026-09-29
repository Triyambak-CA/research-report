shares=22.7423096; px=1061
mcap=px*shares; nd=849.71+3.04-52.87-84.25; EV=mcap+nd
R0=2093.13; t=0.2517
def value(g_hi, margin, s2c, wacc, gT=0.05, years_hi=10, fade=5):
    rev=R0; pv=0; df=1
    gs=[g_hi]*years_hi+[g_hi+(gT-g_hi)*k/fade for k in range(1,fade+1)]
    for g in gs:
        new=rev*(1+g); fcff=new*margin*(1-t)-(new-rev)/s2c
        df/=(1+wacc); pv+=fcff*df; rev=new
    roic=margin*(1-t)*s2c
    nopat=rev*(1+gT)*margin*(1-t)
    reinv_rate=min(gT/roic,1.5)
    tv=nopat*(1-reinv_rate)/(wacc-gT)
    return pv+tv*df, rev
def solve(margin,s2c,wacc):
    lo,hi=-0.05,0.9
    if value(hi,margin,s2c,wacc)[0]<EV and value(0.0,margin,s2c,wacc)[0]<EV:
        # check monotonic
        best=max((value(g/100,margin,s2c,wacc)[0],g) for g in range(0,90))
        if best[0]<EV: return None, best
    for _ in range(100):
        m=(lo+hi)/2
        if value(m,margin,s2c,wacc)[0]<EV: lo=m
        else: hi=m
    return m, None
print(f"mcap {mcap:.0f} netdebt {nd:.1f} EV {EV:.0f}")
print("zero-growth value (margin 22.8%, wacc 12.5%):", round(value(0.0,0.228,1.0,0.125)[0]))
for wacc in (0.115,0.125,0.135):
    row=[]
    for margin in (0.20,0.228,0.25):
        for s2c in (0.6,1.0,1.5):
            g,best=solve(margin,s2c,wacc)
            row.append(f"m{margin*100:.1f}/s{s2c}: "+(f"{g*100:.1f}%" if g is not None else f"none (max value {best[0]:.0f} at g={best[1]}%)"))
    print(f"WACC {wacc*100:.1f}%:"); print("  "+"\n  ".join(row))
# required s2c at 20% and 25% growth, margin 22.8, wacc 12.5
for G in (0.20,0.25,0.30):
    lo,hi=0.3,5.0
    for _ in range(100):
        m=(lo+hi)/2
        if value(G,0.228,m,0.125)[0]<EV: lo=m
        else: hi=m
    print(f"growth {G*100:.0f}%: required sales-to-capital {m:.2f}; yr10 revenue {R0*(1+G)**10:.0f}")
g,_=solve(0.228,1.0,0.125); print("central implied g",round(g*100,1),"yr10 rev",round(R0*(1+g)**10))
