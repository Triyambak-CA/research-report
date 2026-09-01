# D. Lock-in and the post-listing supply calendar

Source: SEBI (ICDR) Regulations 2018, consolidated as amended to 21-Mar-2026 (local copy icdr-2026-03-21.pdf), read 01-Sep-2026.

## D.1 Complete current lock-in schedule (mainboard IPO)
| Holder / tranche | Lock-in | From | Reg |
|---|---|---|---|
| Promoter minimum contribution (20% of post-issue capital, Reg 14(1)) | 18 months | date of allotment in the IPO | Reg 16(1)(a) (as substituted w.e.f. 13-Aug-2021) |
| Same, where MAJORITY of issue proceeds (excluding OFS) is for capital expenditure | 3 years | date of allotment | proviso to Reg 16(1)(a), inserted 13-Aug-2021 |
| Promoter holding in excess of minimum contribution | 6 months | date of allotment | Reg 16(1)(b) |
| Same, where majority of proceeds (ex-OFS) is for capex | 1 year | date of allotment | proviso to Reg 16(1)(b) |
| SR equity shares | until conversion to ordinary, or the Reg 16(1) period, whichever later | - | Reg 16(2) |
| ENTIRE pre-issue capital held by non-promoters | 6 months | date of allotment | Reg 17(1) (as substituted 13-Aug-2021) |
| Exceptions to Reg 17(1): (a) equity shares from pre-IPO ESOP/ESPS/SAR allotments (with full Sch VI disclosure); (b) shares held by/transferred from an ESOP trust (SBEB Regulations lock-in applies instead); (c) shares held by VCF / AIF Category I or II / FVCI - locked only for 6 months FROM DATE OF PURCHASE by that fund (CCPS holding period and bonus-source holding period tack on) | - | - | provisos (a)-(c) to Reg 17(1) |
| Anchor investors - 50% of allotted shares | 90 days | date of allotment | Sch XIII para (10)(j), substituted w.e.f. 01-Apr-2022 |
| Anchor investors - remaining 50% | 30 days | date of allotment | Sch XIII para (10)(j) |
| Shareholders > 20% pre-issue (with PAC) in a Reg 6(2) issue | Reg 17 lock-in applies WITHOUT the clause (c) VCF/AIF relaxation | - | Reg 8A(c) |

Notes:
- "Capital expenditure" for the extended promoter lock-in includes civil work, misc fixed assets, land, building, plant and machinery, and repayment of loans taken for such capex (Explanation to Reg 16(1), capex-loan words inserted w.e.f. 08-Mar-2025).
- Reg 14(1) proviso: if promoters hold < 20% post-issue, AIFs/FVCIs/scheduled commercial banks/PFIs/IRDAI-registered insurers, any non-individual public shareholder holding >= 5% post-issue, or any promoter-group entity (words extended w.e.f. 18-May-2024) may contribute the shortfall up to 10% of post-issue capital without being named promoter - that contribution carries the SAME 18-month/3-year lock-in (Reg 16(1)(a)).
- Reg 17(2) (inserted by ICDR Amendment Regulations 2026 w.e.f. 21-Mar-2026): where lock-in cannot be created (e.g. pledged pre-issue shares), depositories shall on issuer instruction record the securities as "non-transferable" for the lock-in duration - closes the pledged-shares leak.
- No promoter-contribution requirement if the issuer has no identifiable promoter (2nd proviso to Reg 14(1)).

## D.2 Building the supply-overhang calendar from the RHP
Inputs, all from the RHP:
1. Capital Structure chapter (Sch VI Part A (8)): full build-up of share capital, every pre-IPO allotment with date/price/allottee category, promoter vs non-promoter split, details of the shares locked in as minimum contribution, ESOP pool outstanding, pre-IPO placement details. For filings from 21-Mar-2026 the draft abridged prospectus item 5 adds a ready-made pre/post-offer table for promoters, promoter group and top-10 public shareholders at floor and cap price.
2. Objects chapter: determine whether majority of fresh proceeds is capex -> selects 18m/6m vs 3y/1y promoter lock-ins.
3. Anchor allocation note (exchange website, published before issue opens - Sch XIII (10)(i)): anchor share count.
4. Basis of Allotment advertisement (post-issue): final counts per category.
Calendar rows to compute, each as "date = allotment date + N, shares unlocking, % of post-issue capital, holder identity, holder's WACA":
- T+30 days: 50% of anchor shares. Cross-reference each anchor's cost = anchor allocation price vs current price; anchors in the money at T+30 historically sell (see SEBI flipping study, file K).
- T+90 days: remaining 50% of anchor shares.
- T+6 months: entire non-promoter pre-issue capital (minus any AIF-I/II/VCF/FVCI shares already free earlier because their 6 months runs from purchase date - compute per fund from the capital-build-up table) PLUS promoter excess holding (if not capex-extended). This is usually the single largest unlock; compute it as a multiple of expected daily traded value.
- T+12 months: promoter excess holding where capex-extended.
- T+18 months: promoter minimum contribution (20%) - or T+36 months if capex-extended.
Overlay: ESOP shares (exempt from lock-in) are day-1 eligible supply - take vested-option count from the capital structure chapter; and any pre-IPO placement investors sit in the 6-month bucket with a known entry price, so compute their unrealised multiple at the IPO price - the higher the multiple, the harder the 6-month cliff.

## D.3 Analyst checks
- Flag issues where > 40-50% of post-issue capital unlocks at T+6 months with holders sitting on > 3x WACA multiples.
- For PE/VC-heavy registers, check fund vintage: an AIF near end-of-life is a forced seller at first unlock.
- Verify from the RHP whether the capex-majority test bites: the extended promoter lock-ins (3 years / 1 year) apply only if a MAJORITY of fresh proceeds (ex-OFS) funds capital expenditure. Check whether GCP and non-capex objects were sized to keep the capex share just under 50 per cent of fresh proceeds - doing so keeps the promoter lock-in at 18 months / 6 months, and deliberate sizing to duck the longer lock-in is itself a governance signal worth reporting.
