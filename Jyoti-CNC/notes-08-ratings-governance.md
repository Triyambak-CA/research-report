# Jyoti CNC - notes 08: credit ratings and governance filings (forensic read)
Run date 29-Sep-2026. Amounts Rs crore unless stated. Dates DD-MMM-YYYY.
Labels: ESTABLISHED = stated in the cited document. INFERENCE = my reasoning from established facts.
UNVERIFIED = would matter if true, not confirmed from any file on disk.

## Sources read (all under Jyoti-CNC/source-docs/)
- Brickwork (HTML, stripped): brickwork-117796.html (23-Aug-2023), brickwork-131985.html (28-Feb-2024),
  brickwork-176123.html (20-May-2025). Cited by section heading (no page numbers in HTML).
- Brickwork 23-May-2022 rationale, id 70619, fetched 29-Sep-2026 from the "View Previous Document" link inside
  brickwork-117796.html: https://bcrisp.in///BLRHTML/HTMLDocument/ViewRatingRationaleReview?id=70619
  NOT saved to source-docs (this run was limited to one output file). Re-fetch with the browser UA if needed.
- Infomerics: txt/infomerics-09jul2025.txt, -10feb2026.txt, -21apr2026.txt. Cited by the page footer number.
- Infomerics lender annexures (Annexure 2), fetched 29-Sep-2026, NOT saved:
  https://www.infomerics.com/admin/prfiles/Len-JyotiCNC-Auto-9july25.pdf
  https://infomericstorage.blob.core.windows.net/uploads/LEN_Jyoti_CNC_Automation10_Feb26_822ddeebfa.pdf
  https://infomericstorage.blob.core.windows.net/uploads/LEN_Jyoti_CNC_Automation21_April26_22298c541c.pdf
- Company: txt/co/credit-rating-2023.txt (Infomerics letter 24-Apr-2023), txt/co/credit-rating-intimation-02jul2024.txt
  (Reg 30 intimation 02-Jul-2024 + Infomerics letter 27-Jun-2024), governance items listed in Part B.
- Cross-checks: txt/prospectus-jan2024.txt (printed pages), txt/ar-fy24/25/26.txt (txt line numbers),
  txt/tr-*.txt concall transcripts, notes-03/04/09 in this folder.
- External (regulatory context only, not company filings): RBI press release 2022-2023/1033 dated 12-Oct-2022;
  SAT interim order 14-Oct-2022 and final order 06-Jun-2023 on Brickwork (see list at the end).

---------------------------------------------------------------------------------------------------

## RANKED FINDINGS (most serious first; detail and citations in Parts A and B)

1. AN INVESTMENT-GRADE-TO-JUNK RATING TRAIL ON THE SAME BANK LINES, ABSENT FROM THE PROSPECTUS AND ALL THREE
   ANNUAL REPORTS. ESTABLISHED as to the ratings and the omissions; UNVERIFIED as to Reg 30 filings.
   Brickwork moved the Rs 699.27 crore bank facilities to BWR BBB-/A3 "Issuer Not Cooperating" (INC) on
   23-Aug-2023, to BWR BB+/A4+ INC (sub-investment grade) on 28-Feb-2024, and reaffirmed BB+/A4+ INC on
   20-May-2025. The prospectus risk factor 12 (p58) lists only Infomerics IVR BBB+ as the "Fiscal 2024"
   rating. AR FY24, FY25 and FY26 credit-rating sections list only Infomerics. All three Brickwork actions are
   non-cooperation actions with no credit analysis: they are NOT a credit view. No investor deck and neither
   the Feb-2024 nor the May-2024 call transcript mentions any credit rating at all. Detail: A1, A3, A4.

2. PROMOTER-LLP LOANS AT 12-15% ARE UNDER-REPORTED IN THE HALF-YEARLY RPT FILINGS. ESTABLISHED (mismatch).
   AR FY26 RPT note (ar-fy26.txt line 6234 onward): loans taken from Jyoti International LLP (CMD holds 84.27%,
   ar-fy26.txt line 9147) Rs 197.57 crore in FY26 and 133.69 crore in FY25; interest 3.25 and 4.42 crore.
   The Reg 23(9) half-year disclosures show only Rs 122.80 crore gross for FY26 (H2 only; H1 shows nil principal
   but 0.92 crore interest) and only net repayments for FY25 (-1.75 and -4.63 crore). Interest reconciles to the
   AR; principal does not. On gross drawdowns both FY25 (138.11 incl. interest vs threshold 133.85) and FY26
   (200.82 vs 181.77) exceed the Reg 23 10%-of-turnover materiality line, and no shareholder RPT approval is
   on record. Whether gross drawdowns is the right measure is UNVERIFIED (counter in B8). Rates of 12-15% vs
   1Y MCLR-linked bank term and working-capital debt. Detail: B8.

3. SUBSIDIARY FUNDING RE-ACCELERATED WHILE THE RATER WAS TOLD TERM DEBT WOULD FREE ACCRUALS FOR WORKING CAPITAL.
   ESTABLISHED (numbers); INFERENCE (linkage). Infomerics 10-Feb-2026 p3: management took a Rs 300 crore term
   loan "so that the internal accruals will be available for the working capital purpose". In the same half
   (H2 FY26) the company lent Rs 114.92 crore to Jyoti SAS (loan balance 37.94 to 160.11; rpt-h2fy26 row 4).
   Total parent exposure to Jyoti SAS (investment + loan + accrued interest + guarantee commission receivable)
   rose from about 318.8 crore (31-Mar-2024) to about 592.1 crore (31-Mar-2026). None of the Infomerics
   rationales mentions these flows; all three use a standalone approach with "Parent/Group Support: Not
   Applicable". Detail: A4, B8.

4. THE MACHINES-SOLD FIGURES IN THE RATING DO NOT MATCH THOSE THE CMD GAVE INVESTORS. ESTABLISHED as to the
   mismatch; the cause is not established.
   Infomerics (09-Jul-2025 p2; 10-Feb-2026 p2): "sales volume slightly moderated from 3600 units in FY24 to
   3517 units in FY25". The CMD on the 21-May-2025 call (tr-2025-05 p7): "full year is 4,072" for FY25, which
   reconciles to his four quarterly figures (788 + 1,041 + 894 + 1,349). FY24 per CMD (tr-2024-05 p17): 3,495.
   Company says FY25 volume ROSE about 16.5%; the rater says it FELL 2.3%. The Apr-2026 Infomerics table
   carries "Source: Company" under its financials table (not under the units sentence). 3600 is also, exactly,
   the plant capacity Brickwork quoted in every rationale 2022-2025. The realisation figures (0.33 and 0.46
   crore) are revenue divided by these unit counts. Most likely benign reading (INFERENCE, A5 reading c):
   3,517 is FY25 PRODUCTION and 4,072 is SALES; FY25 standalone finished-goods and WIP fell by 118.16 crore,
   which is about 0.21 crore of cost for each of the 555 extra machines sold. If so, the rater mislabelled
   production as "sales volume" and built a mix-shift story on it; the company did not tell two stories.
   Detail: A5.

5. THE DOWNGRADE TRIGGER "SUBSTANTIAL DEBT FUNDED CAPEX" DESCRIBES WHAT THEN HAPPENED; THE AGENCY KEPT THE TEXT
   AND REAFFIRMED. ESTABLISHED (text); counter-argument recorded. Jul-2025 p5: expansion "entirely funded by the
   internal accruals" and "presently there is no debt funded capex". Feb-2026 p3: Rs 300 crore Union Bank term
   loan sanctioned Sep-2025 against a Rs 425.83 crore project (about 70% debt). Standalone borrowings went from
   198.45 to 589.35 crore and finance cost from 17.36 to 53.47 crore in FY26 (notes-04 standalone BS/P&L).
   Detail: A2.

6. HURON: THE RATER ADOPTED THE COMPANY'S OWN WORDS. ESTABLISHED. Infomerics 21-Apr-2026 p1: the actions "are
   not expected to have any adverse impact on business and operations of JCAL" repeats the company's 12-Apr-2026
   letter (txt/co/litigation-12apr2026.txt p1) almost word for word. The FY26 auditor's Emphasis of Matter
   (notes-04 section 9.1) flags a material uncertainty on Huron's going concern. Detail: A4, B4.

7. BOARD AND NRC BELOW STRENGTH FOR 84 DAYS; THE COMPANY'S OWN NOTICE SAYS SIX DIRECTORS ARE REQUIRED.
   ESTABLISHED (dates); INFERENCE (compliance). After P N Prasad resigned on 26-Oct-2025 (a Sunday; "other
   pre-occupations") the board was five directors with two independents until 19-Jan-2026, and the NRC had two
   members. Prasad sat on the board of Axis Bank throughout; Axis Bank appears as a new lender in the
   Feb-2026 rating and Axis Finance lent 95.51 crore in FY26. Any link between the two is UNVERIFIED.
   Detail: B1, B2.

8. PUBLIC-SHAREHOLDER DISSENT ON THE 2026 INDEPENDENT DIRECTOR. INFERENCE from established vote counts.
   6.61% of votes against Prafulla Shenoy; if all 14,22,46,495 promoter-group shares voted for, about 25% of
   non-promoter votes cast were against (AR FY26 CG report, ar-fy26.txt line 2411). Dec-2024 ballot: 0.73%
   against. Detail: B7.

9. TEN YEARS OF LATE TDS DEPOSITS, COMPOUNDED FOR RS 9.07 CRORE, WITH NOTICES TO ALL THREE EXECUTIVE DIRECTORS.
   ESTABLISHED. Detail: B3.

10. CONTINGENT SUPPORT TO THE FRENCH GROUP IS GROWING. ESTABLISHED (numbers); INFERENCE (beneficiary).
   Outstanding SBLC and letters of comfort: 54.13 (FY24), 167.43 (FY25), 264.34 crore (FY26). The 2023
   Infomerics annexure labels two SBLC lines "SBLC (HGSAS)" (Huron Graffenstaden SAS). Guarantee commission from
   Jyoti SAS is booked in the RPT filings. Neither agency discusses contingent liabilities. Detail: A4.

11. ABOUT 99 CRORE OF TERM DEBT SITS OUTSIDE THE RATED FACILITIES. ESTABLISHED (AR FY26 borrowings note):
   Axis Finance 95.51 and ICICI 3.51 at 31-Mar-2026, absent from the Infomerics lender annexures of Feb-2026
   and Apr-2026. Detail: A7.

12. DISCLOSURE-QUALITY ERRORS IN AUDITED-ADJACENT DOCUMENTS. ESTABLISHED. AR FY26 Board's report contingent
   table labels shifted one row (shows a 15.53 "TDS" dispute that the audited note calls CST); TDS compounding
   period described three different ways; H2 FY25 RPT filing mixes million and crore; H1 FY26 RPT shows CMD
   remuneration "NiL". The FY26 secretarial audit says "no Specific Act and Law applicable", which leaves
   export-control compliance of a 5-axis machine maker outside its stated scope, weeks after a dual-use
   export investigation opened at the French subsidiary. Detail: B3, B4, B6, B8.

---------------------------------------------------------------------------------------------------

# PART A - CREDIT RATINGS

## A1. Every rating action on file, side by side

Rating letters and rationales (ten actions; the six requested plus the two Infomerics letters, the 2022
Brickwork rationale behind the INC chain, and Brickwork's 2021 history line).

| Date | Agency | Facilities and amount rated | Rating / outlook | Action | Basis / source |
|---|---|---|---|---|---|
| 26-Mar-2021 | Brickwork | FB LT 484.42, NFB ST 169.77 = 654.19 | BWR BBB+/Stable; BWR A2 | Reaffirmed | Rating history table in 23-May-2022 rationale |
| 23-May-2022 | Brickwork | FB LT 525.53, NFB ST 173.74 = 699.27 | BWR BBB+/Stable; BWR A2 | Reaffirmed | Full review, standalone; rationale id 70619 (fetched) |
| 16-Mar-2023 | Infomerics | Mandate contract signed | - | - | credit-rating-2023.txt p1 para 1 |
| 24-Apr-2023 | Infomerics | LT FB 504.56; ST FB 26.00; ST NFB 173.79 = 704.35 | IVR BBB+/Stable; IVR A2; IVR A2 | Assigned | Letter, credit-rating-2023.txt p1; rating history elsewhere gives PR date 26-Apr-2023 |
| 23-Aug-2023 | Brickwork | Same 699.27 (unchanged annexure, 19 bank lines) | BWR BBB-/Stable INC; BWR A3 INC | Downgraded, migrated to INC | "RATING ACTION / OUTLOOK / NATURE OF NON-COOPERATION": no information, no banker feedback, no monthly NDS |
| 28-Feb-2024 | Brickwork | Same 699.27 | BWR BB+/Stable INC; BWR A4+ INC | Downgraded, continues INC | Same section: "an investment grade company which continues to be in ISSUER NOT COOPERATING for 6 months has to be downgraded to non-investment grade" |
| 27-Jun-2024 | Infomerics | LT/ST 285.00 (reduced from 704.35) | IVR A-/Stable; IVR A1 | Upgraded | Letter 27-Jun-2024 "FY24 Audited"; intimated to exchanges 02-Jul-2024 (credit-rating-intimation-02jul2024.txt p1-2). PR not on disk |
| 20-May-2025 | Brickwork | Same 699.27 | BWR BB+/Stable INC; BWR A4+ INC | Reaffirmed, continues INC | Same section; "Key Financial Indicators - Source BSE" |
| 09-Jul-2025 | Infomerics | LT/ST 285.00; LT CC 250.00 (new); proposed LT/ST 315.00 = 850.00 | IVR A+/Stable; IVR A1 | LT upgraded two notches (A- to A+); new lines assigned | infomerics-09jul2025 p1 |
| 10-Feb-2026 | Infomerics | LT/ST 449.11 (from 285); LT 810.00 (from 250, incl. TL 300) = 1,259.11 | IVR A+/Stable; IVR A1 | Reaffirmed on enhanced limits | infomerics-10feb2026 p1, p7-9 |
| 21-Apr-2026 | Infomerics | 1,259.11 | IVR A+/Stable; IVR A1 | Reaffirmed; "Material Event" review | infomerics-21apr2026 p1 |

Lenders behind the lines (Annexures). ESTABLISHED.
- Brickwork 2022-2025 annexure (identical in all four): Bank of Baroda, Bank of India, EXIM (TL 69.33), IDBI, PNB,
  Saurashtra Gramin Bank, SBI, Union Bank of India. Brickwork never updated the annexure after the IPO
  repayment, so from 2024 it is rating lines that Infomerics shows as reduced to nil (infomerics-09jul2025 p7).
- Infomerics 24-Apr-2023 annexure: Union, SBI, BoB, BoI, IDBI, Saurashtra GB, PNB, EXIM; NFB includes
  "SBLC (HGSAS)" 18.24 (Union) and 32.55 (SBI) (credit-rating-2023.txt p4-5).
- Infomerics 09-Jul-2025: HDFC Bank LC 150, SBLC 135; Union Bank CC 250; proposed 315.
- Infomerics 10-Feb-2026 and 21-Apr-2026: SBI LC 185 (incl. 150 taken over from HDFC), SBLC 155.21, CC 110;
  Union Bank CC 350, TL 300 (maturity Jun-2034, infomerics-21apr2026 p3); Axis Bank CC 50, SBLC 108.90.
  HDFC Bank exited; SBI and Axis entered between Jul-2025 and Feb-2026.

Key financials each agency quotes. ESTABLISHED (as printed; my reconciliation notes in A6).

| Item | Brickwork 23-May-2022 (FY22 prov.) | Brickwork 20-May-2025 (source BSE) | Infomerics 09-Jul-2025 / 10-Feb-2026 | Infomerics 21-Apr-2026 |
|---|---|---|---|---|
| Revenue / TOI | 677.81 (FY21 436.33) | FY23 828.24; FY24 1,189.72; 9MFY25 1,085.9 | FY24 1,189.72; FY25 1,615.03; H1FY26 820.54 vs 685.91 (Feb-2026 only) | 9MFY26 1,350.31 |
| EBITDA / OPBDIT | 111.42 (FY21 53.92) | FY23 116.8; FY24 272.07; 9MFY25 282.16 | FY24 272.07; FY25 458.28 | 9MFY26 373.11 |
| PAT | 19.40 (FY21 -19.88) | FY23 39.32; FY24 139.99; 9MFY25 188.152 | FY24 139.99; FY25 310.06 | 9MFY26 256.22 |
| Net worth | TNW 399.84 | TNW FY23 471.6; FY24 1,741.8 | Adjusted TNW FY24 1,500.00; FY25 1,727.95 | "TNW" 1,500.00 / 1,727.95; 9M N.A. |
| Debt ratios | TD/TNW 1.52x (text says 1.6x) | TD/TNW FY23 1.32; FY24 0.05 | Total debt 92.19 / 198.45; gearing 0.06 / 0.10 (text 0.11x); TOL/ATNW 0.44x FY25 | Debt N.A. for 9M |
| Coverage | ISCR 1.6x, DSCR 1.36x | - | ICR 4.14x / 26.40x; DSCR 2.05x / 15.30x; FY26 projected ICR ~12x, DSCR ~7x (Feb-2026 p3) | 9MFY26 ICR 10.95x |
| Margins | OPM 16.4%, NPM 2.8% | - | EBITDA 22.87% / 28.38%; PAT 11.69% / 19.00% | 27.63% / 18.97% |
| Liquidity | Bank line use 80-85%; promoter unsecured loans 48.8 crore at 01-Mar-2022, up 24 crore in FY22; FD margin 12 crore | Current ratio FY23 1.15; FY24 3.34 | Current ratio 2.76x (31-Mar-2025); NCA 353.85; FBWC use 43% to May-2025 (Jul-2025 only; dropped in Feb-2026) | - |
| Working capital | "12 to 18 months to manufacture"; delays from government departments | - | Operating cycle 211 days FY25 (PY 218); RM 228 days; WIP 112 days; controllers 12-month lead time; testing ~6 months | - |
| Exports / FX | - | - | ~26% of revenue overseas | - |
| Volume / orders | Capacity 3,600 p.a.; order book ~Rs 700 crore | Capacity 3,600 p.a. (repeated in all Brickwork texts) | Units 3,600 (FY24) and 3,517 (FY25); realisation 0.33 and 0.46 crore; order book 4,346 (FY25 intake 2,611.60) and 4,546 (Sep-2025); capacity 5,000 to 6,000, +10,000 by Oct-2026 | Same capacity text |
| Revenue mix | Huron 25-30% of consolidated turnover | - | FY25: A&D 45%, auto 23%, general engineering 20% | - |

## A2. Rating sensitivities, consecutive rationales compared

Brickwork 23-May-2022 (the last Brickwork rationale with any analysis; section "RATING SENSITIVITIES"):
> "Positive: The rating may be upgraded if the Company is able to achieve significant growth in revenue and
> profitability backed by a favorable industry scenario and optimum utilization of capacities."
> "Negative: The rating may be downgraded if lower-than-expected revenues affect profitability margins,
> coverage ratios, liquidity, and gearing ratios adversely."

Brickwork 23-Aug-2023, 28-Feb-2024, 20-May-2025: no sensitivities at all. Each says "Please refer to the
following link for the previous detailed rationale that captures ... Rating Sensitivities" (section "KEY
FINANCIAL INDICATORS"). ESTABLISHED. So Brickwork's downgrades were not trigger breaches. Brickwork's own
upgrade trigger (growth in revenue and profitability) was met by FY24 on its own quoted numbers (PAT 39.32 to
139.99, TD/TNW 1.32 to 0.05, 20-May-2025 table), yet it could not act because the issuer supplied nothing.

Infomerics 24-Apr-2023 and 27-Jun-2024 press releases: NOT on disk. Sensitivities for those two actions are
UNVERIFIED. The letters carry none.

Infomerics 09-Jul-2025 (p2) and 10-Feb-2026 (p2), word for word identical:
> Upward: "Significant growth in scale of operation while sustaining profitability"; "Effective working capital
> management with improvement in operating cycle."
> Downward: "Significant decline in operating income and/or profitability impacting the debt coverage
> indicators."; "Substantial debt funded capex impacting the debt protection metrics."

Infomerics 21-Apr-2026 (p2): no sensitivities; "Please refer to the following link for the previous detailed
rationale that captures the key rating drivers and their description liquidity position and rating
sensitivities".

Trigger that was arguably hit and not replaced. ESTABLISHED facts; the judgement is INFERENCE.
- Jul-2025 p5 (About the Company): the 10,000-unit expansion "will be entirely funded by the internal accruals";
  p5 (Liquidity): "presently there is no debt funded capex which provides comfort to the liquidity".
- Feb-2026 p3: the same sentence now reads "which will be earlier proposed to be funded by the internal
  accruals. However, at a later stage the management decided to avail the term debt so that the internal
  accruals will be available for the working capital purpose." Project cost 425.83; Union Bank TL 300.00
  sanctioned Sep-2025 (two months after the Jul-2025 rationale); spend to 15-Dec-2025 317.32 (TL 218.00, own
  99.32). About 70% debt.
- Outcome: standalone borrowings 198.23 (current) + 0.22 (non-current) at 31-Mar-2025 to 267.10 + 322.25 =
  589.35 at 31-Mar-2026; finance cost 17.36 to 53.47 (notes-04 standalone BS and P&L). 9MFY26 ICR 10.95x vs
  26.40x FY25 (Apr-2026 p2), below the 12x Infomerics projected for FY26 in Feb-2026 (p3).
- The downward-trigger text was not edited; Infomerics reaffirmed. Its implicit position: coverage near 11-12x
  and gearing near 0.24x (589.35 / 2,454.12 standalone equity) is not "impacting the debt protection metrics".
- COUNTER-ARGUMENT (strong): "substantial" and "impacting" are judgement words; ICR above 10x and gearing
  below 0.3x are comfortable for A+; repayment starts FY27 (Feb-2026 p5). On this reading no trigger was hit.
  What survives the rebuttal is narrower: the funding plan disclosed to the market via the rater changed within
  two months, and the Feb-2026 rationale still uses FY25 working-capital data (211 / 228 / 112 days copied
  verbatim from Jul-2025) to reaffirm a 4.4x larger limit set (285 to 1,259.11).

The upward trigger "improvement in operating cycle" was not met on the only data given (211 days vs 218 PY,
with RM days 228); Infomerics still upgraded two notches in Jul-2025 on scale and profitability. INFERENCE:
the upgrade rested on the first upward trigger alone.

## A3. Why Brickwork to Infomerics, and why three Infomerics actions in ten months

DOCUMENTED:
- The company signed with Infomerics on 16-Mar-2023 and Infomerics assigned on 24-Apr-2023 (credit-rating-2023.txt
  p1). The last Brickwork review with cooperation was 23-May-2022. Brickwork's next action (23-Aug-2023) was
  INC for want of information, NDS and banker feedback. So the company stopped cooperating with Brickwork after
  moving to Infomerics, on the SAME bank lines, and did not obtain a withdrawal.
- Brickwork never withdrew. A CRA may withdraw a bank-loan rating only on request plus lender NOC or on full
  repayment (general SEBI CRA practice; the specific Brickwork policy document was not read - UNVERIFIED for this
  issuer). No withdrawal request is on file. Whether the company ever asked is UNVERIFIED.
- Infomerics disclosed the Brickwork INC in all three of its rationales under "Status of non-cooperation with
  previous CRA" (09-Jul-2025 p6; 10-Feb-2026 p7; 21-Apr-2026 p3). The information was public through the new
  rater even though the company's own documents omit it.
- Regulatory backdrop (external): SEBI cancelled Brickwork's registration on 06-Oct-2022; RBI press release
  2022-2023/1033 of 12-Oct-2022 told regulated entities not to obtain fresh ratings from Brickwork for RBI
  purposes; SAT stayed the SEBI order on 14-Oct-2022 but barred new mandates; SAT quashed the cancellation on
  06-Jun-2023. RBI later (Jul-2024) allowed bank use of Brickwork ratings for loans up to Rs 250 crore, with
  surveillance of existing ratings permitted.
- Prospectus p378 (restrictive covenants, indicative list): the company shall not without lender approval
  "Make any change in the credit rating agency of the Company".

INFERENCE: the switch in Mar-2023 is well explained by the Oct-2022 RBI bar (banks could not use a fresh
Brickwork rating for risk weights), not by rating shopping. The move itself is benign. What is not benign is
leaving a public INC rating to decay to BB+ on facilities that were still being serviced, and omitting it
from the offer document. Whether lender consent for the CRA change was obtained is UNVERIFIED.

DOCUMENTED - disclosure absence:
- Prospectus (12-Jan-2024), risk factor 12, p58: "Fiscal 2024 - IVR BBB+ Stable ... Infomerics"; Fiscal 2023,
  2022, 2021 - Brickwork BBB+. The 23-Aug-2023 Brickwork downgrade to BBB- INC (in Fiscal 2024, 4.5 months
  before the prospectus) is absent. grep for "Brickwork", "not cooperat" finds nothing else in the prospectus.
- AR FY24 Board's report (ar-fy24.txt line 2295 onward): only the Infomerics BBB+/A2 table; "The credit rating
  will be due for revision in next fiscal year."
- AR FY25 CG report p69 (ar-fy25.txt line 2917): only the Jun-2024 Infomerics upgrade.
- AR FY26 CG report (ar-fy26.txt lines 2553-2580): two lines, 449.11 and 810.00, both "Reaffirmed" at IVR
  A+/A1. The "Previous Ratings" cell for the 449.11 line prints "IVR A-/Stable; IVR A1" with the gloss "(IVR
  Single A Plus ...)", so the table contradicts itself; the Jul-2025 two-notch upgrade is not shown as an
  upgrade. No Brickwork line.
- Company website investor page lists only two rating documents: the Apr-2023 Infomerics letter and the
  Jul-2024 intimation (source-docs/co-list.txt). No Reg 30 intimation of the 28-Feb-2024 Brickwork downgrade to
  sub-investment grade (post-listing, 16-Jan-2024) is on the company site. Whether one was filed on BSE/NSE is
  UNVERIFIED: the BSE announcements API returned Access Denied on 29-Sep-2026 (bse-ann-p1..p8.json are error
  pages).
- COUNTER-ARGUMENT: the company treated the Brickwork rating as dormant once Infomerics rated the same lines;
  Brickwork's lines were largely repaid from IPO proceeds (Infomerics shows the old lines reduced to nil); the
  Sch V CG-report item on credit ratings refers to "debt instruments", arguably not bank loans; an INC rating
  carries no credit opinion. REBUTTAL: Reg 30 Sch III Part A para A(3) makes any revision in rating deemed
  material, with no carve-out for INC; the prospectus table claimed to show "the credit rating for the current
  fiscal", and a sub-investment-grade symbol on the company's name was public. The omission understates a
  history of non-cooperation with a rater at a time (Aug-2023) when the company was preparing its IPO.

WHY THREE INFOMERICS ACTIONS IN TEN MONTHS. All DOCUMENTED in the rationales:
- 09-Jul-2025: annual surveillance on FY25 audited numbers (within 12 months of 27-Jun-2024); upgrade A- to A+
  plus assignment of a new Union Bank CC 250 and proposed lines 315.
- 10-Feb-2026: enhancement, not surveillance. New Union Bank TL 300 (capex), SBI takeover of HDFC's LC/SBLC,
  new Axis Bank CC 50 and SBLC 108.90, Union CC 250 to 350, SBI CC 110. "in view of growing order book" (p3).
- 21-Apr-2026: "Material Event" press release triggered by the company's 12-Apr-2026 Huron disclosure; no
  change in rating or limits.

## A4. Weaknesses the agencies name vs what the company's decks stress, and what nobody names

Named by agencies:
- Working capital intensity (every analytical rationale): Brickwork 2022 "12 to 18 months to manufacture ...
  bottlenecks in inventory clearance, advance to suppliers, and delays in getting payments from government
  departments"; Infomerics 2025-26: operating cycle 211 days, RM 228 days, WIP 112 days, controllers imported
  from Japan and Germany on a 12-month lead time, ~6 months testing.
- FX risk: 26% overseas revenue; "Unhedged position, if any" (Infomerics p4).
- Competition: Brickwork 2022, "Intensely competitive nature of the machine tools industry".
- Liquidity reliance on promoters: Brickwork 2022, "liquidity is also supported by the unsecured loans from the
  promoters, Rs 48.8 crs as on March 1, 2022". Still true in FY25-FY26 (promoter LLP loans; B8), but no
  Infomerics rationale mentions it.
- Past statutory delays: not in any rating; the prospectus (risk factor 13, p58-59) admits delays in PF, TDS
  and GST "all due to cash flow mismatch and lack of sufficient liquidity".

What the company's decks say about the same risks (grep of all 12 decks ppt-2024-02 to ppt-2026-08, 29-Sep-2026).
ESTABLISHED:
| Weakness named by agencies | Deck mentions |
|---|---|
| Working capital intensity, operating cycle, RM / WIP days | "working capital" appears only as a cash-flow line ("Changes in working capital -309.1 -522.5 ...") and as an IPO object ("Funding long-term working capital 360 Cr."). "operating cycle", "inventory": zero hits in every deck |
| FX exposure, hedging | Zero hits for hedging in every deck. FX appears only in the Aug-2026 deck, as "EBITDA Adjusted for Forex Loss INR 6 cr" and "Unrealized Forex Loss 6.0", i.e. as an add-back |
| Competition | Only in the forward-looking-statements disclaimer |
| Promoter unsecured loans (Brickwork 2022) | Zero hits |
| Credit ratings (any agency) | Zero hits in every deck and in the Feb-2024 and May-2024 call transcripts; every "rating" hit is "operating" |
| Contingent liabilities, SBLC, guarantees | Zero, apart from "not guarantees of future performance" in the disclaimer |
| Customer concentration | Zero; "Top 10" hits refer to global machine-tool consumers and producers |
So every weakness the agencies name is absent from the investor decks, except as an accounting line or an
add-back. Huron appears in every deck (4 to 15 hits), as a strength.

Not named by either agency (absences; ESTABLISHED as absences):
- Huron / Jyoti SAS exposure. All Infomerics actions are "Standalone"; Apr-2026 p2: "Parent/ Group Support: Not
  Applicable". Yet at 31-Mar-2026 the parent held investment 341.60, loan 160.11, accrued interest 88.04 and
  guarantee commission 2.39 in Jyoti SAS (rpt-h2fy26 rows 1-4), about 592.1 crore, plus SBLC / letters of
  comfort 264.34 (AR FY26 contingent liabilities, ar-fy26.txt line 5957). INFERENCE: Infomerics' "Adjusted TNW"
  (1,500.00 FY24; 1,727.95 FY25) sits below standalone equity (1,756.53; 2,065.68, notes-03 line 249) by 256.5
  and 337.7, close to the Jyoti SAS investment (241.81; 324.48). So the agency deducts the equity investment
  but not the loan, the interest receivable or the SBLCs. The Apr-2026 comfort on Huron is a function of the
  standalone approach, not of analysis.
- The accrued interest receivable from Jyoti SAS (67.27 at 31-Mar-2024 to 88.04 at 31-Mar-2026) is largely
  non-cash: interest actually booked in FY26 halves was 0.49 and 3.33; the rest of the rise is FX revaluation
  (INFERENCE from the row arithmetic). A subsidiary whose step-down entity has eroded net worth and a
  going-concern uncertainty (FY26 EoM) is not paying interest to its parent in cash.
- Contingent liabilities: SBLC / LoC 54.13 (FY24) to 167.43 (FY25) to 264.34 (FY26); corporate guarantee for
  step-down subsidiary 81.20 (FY24) to nil (FY25) (notes-03 section 5). The Apr-2023 Infomerics annexure
  labels SBLC lines "SBLC (HGSAS)". Whether the FY26 SBLCs back Huron or JCAL's own buyer's credit is
  UNVERIFIED (Infomerics shows a "SBLC for buyers' credit" sublimit of 150 in Jul-2025).
- Customer concentration: only sector shares (A&D 45%). Brickwork 2022 asserted "low customer concentration".
  No agency names a customer or a top-10 share.
- Order-book quality: no agency tests conversion or cancellations. The Feb-2026 rationale's 4,546 order book
  (Sep-2025) is a company figure.
- Promoter-group pledge (Virani, per working-notes): not mentioned by Infomerics in Feb-2026 or Apr-2026.
- Tax compounding and statutory delays: not mentioned.
- Rater copy errors that show low diligence: Brickwork 2022 "BFWL faces high competition" (another company's
  name pasted into Jyoti's rationale); Brickwork 2024-25 industry "Plastic Products - Industrial"; Infomerics
  Feb-2026 repeats FY25 working-capital text unchanged.

## A5. Machines sold: exactly what each source says

| Source | FY24 | FY25 | Basis stated |
|---|---|---|---|
| Brickwork 2022-2025 (all four) | "present plant capacity of manufacturing 3600 machines p.a." | same | Capacity, not sales |
| Infomerics 09-Jul-2025 p2 | 3,600 units | 3,517 units | "sales volume slightly moderated"; no source line; realisation 0.33 to 0.46 crore |
| Infomerics 10-Feb-2026 p2 | 3,600 units | 3,517 units | Identical sentence |
| CMD, tr-2024-05 p17 (21-May-2024) | "total number of machine has reached to 3,495"; Q3 797, Q4 991; earlier "3,450 machines we have produced" (p12, per notes-09) | - | "delivered" and "produced" both used |
| CMD, tr-2024-08 p11 | - | Q1 788 (718 entry, 29 mid, 41 high) | "we have made" |
| CMD, tr-2024-11 p2 | - | Q2 "close to 1,041" | "sold" |
| CMD, tr-2025-02 p12 and p16 | - | Q3 894 (817 / 22 / 55) | "delivered" |
| CMD, tr-2025-05 p7 | - | Q4 1,349; "full year is 4,072" | "sold"; sums to the four quarters |

Arithmetic (ESTABLISHED): 1,189.72 / 3,600 = 0.330; 1,615.03 / 3,517 = 0.459. The rater's realisations are its
revenue divided by its unit counts (and revenue includes spares and service, so it is not a machine price).
On the CMD's 4,072, FY25 revenue per unit is 0.397 crore, and FY25 volume grew 16.5% over 3,495.

INFERENCE: 3,600 for FY24 is almost certainly the capacity figure (identical to Brickwork's capacity line), and
3,517 for FY25 is unexplained. Two readings: (a) the rater mis-transcribed and its "moderated volume, rising
realisation" narrative is an artefact; (b) the company gave the rater a different series from the one it gives
investors (for example domestic only); (c) 3,517 is FY25 production and 4,072 is FY25 sales. Reading (c) has
support: the CMD himself used both bases for FY24 (3,450 "produced", 3,495 "delivered", tr-2024-05 p12 and
p17), and FY25 standalone "changes in inventories" was +118.16 crore (notes-04 standalone P&L, FY25 column),
a drawdown of finished goods and WIP. Selling 555 more machines than were built needs about 118.16 / 555 =
0.21 crore of cost per machine from stock, against an average revenue per unit of 0.40 crore; entry-level
machines dominate the count (e.g. Q4 FY25 1,107 of 1,349 entry-level, notes-09), so this is plausible. It
does not explain FY24's 3,600, which matches capacity, not the CMD's 3,450 produced. Nothing on disk settles
which reading is right; (c) is the most likely. Under (c) the finding shrinks to: the rater called production
"sales volume" and so reported a volume decline and a realisation jump that did not happen on a sales basis. It matters because the mix-shift story ("higher share of high-end machines") in the rating is
built on these units, and because the company's own quarterly unit disclosures are oral only (not in decks).

## A6. Reconciliations and internal errors in the rationales

- Finance cost FY25: Infomerics text 12.18 (Jul-2025 p2; Feb-2026 p2). Its own ICR implies 458.28 / 26.40 =
  17.36, which equals the AR FY25 standalone finance cost (notes-04, FY25 comparative 17.36). The text figure
  is wrong or is a different measure. ESTABLISHED mismatch.
- Rs 475 crore prepayment dated "FY 2024" (p2) and "FY 2025" (p3) in the same rationale. AR FY24 Board's report
  says FY24 repayments aggregated Rs 532.73 crore (5,327.30 million, ar-fy24.txt lines 753-754). FY24 is correct.
- Gearing FY25 0.11x in text vs 0.10 in the table (198.45 / 1,727.95 = 0.115). Rounding; trivial.
- TOL/ATNW 0.44x reconciles: standalone total liabilities 759.52 / 1,727.95 = 0.44 (notes-04 FY25 comparative).
- Total debt FY24 92.19 reconciles to AR FY24 "fund based debt obligations ... Rs 921.92 millions".
- Brickwork TNW FY24 1,741.8 vs Infomerics ATNW 1,500.00: different adjustment policies (A4). The Infomerics
  FY24 figure is a suspiciously round 1,500.00. UNVERIFIED whether it is computed or a placeholder.
- Apr-2026 rating-history table shows fund-based LT 800.00, but its own Annexure 1 sums to 810.00
  (CC 350 + 50 + 110 + TL 300). Clerical.
- Brickwork 2022 debt/TNW 1.6x in text vs 1.52x in its table.
- Brickwork 20-May-2025 still rates EXIM term loan 69.33 "Out-standing", GECL lines and 19 bank lines that
  Infomerics records as reduced to nil. Brickwork's annexure is stale by design (INC).

## A7. Debt outside the rated perimeter (added after reading the FY26 borrowings note)

ESTABLISHED (AR FY26 standalone borrowings note, ar-fy26.txt lines 5590-5620, printed p151):
- Union Bank rupee TL 266.80 (1Y MCLR + 0.25%, last instalment 30-Sep-2033).
- Axis Finance Limited rupee loan 95.51 (quarterly, last instalment 01-Nov-2032, "AFLR-6.45%"). Nil at 31-Mar-2025.
- ICICI Bank rupee loan 3.51; Union Bank rupee loan 0.21 at 8.85%.
- Working capital drawn: Union 143.00 of 250; SBI 55.32 of 110; Axis Bank 25.00 of 50.
- These sum to 589.35, which reconciles to standalone borrowings (322.25 + 267.10).
The Axis Finance (an NBFC) and ICICI loans do not appear in any Infomerics lender annexure (Feb-2026 or
Apr-2026), and the 21-Apr-2026 press release, issued three weeks after the year end, still shows 1,259.11 of
rated bank lines only. INFERENCE: about 99 crore of term debt sits outside the rated set, and the rater's
debt picture at Apr-2026 ("Total Debt N.A.") did not include it. Whether Infomerics was told is UNVERIFIED
(its 2023 mandate letter, clause 7(a), requires the issuer to inform it before availing any new facility).

Same note: "There are certain charges which are historic in nature and it involves practical challenges in
obtaining no-objection certificates (NOCs) from the charge holders of such charges, despite repayment of the
underlying loans." INFERENCE: this is consistent with Brickwork still rating the pre-IPO bank lines; a
withdrawal normally needs lender NOCs, and the company says it cannot get them for some old charges.

---------------------------------------------------------------------------------------------------

# PART B - GOVERNANCE FILINGS

## B1. Independent director exits and entries

| Director | Joined | Left | Tenure | Stated reason | Source |
|---|---|---|---|---|---|
| Yogesh D. Kathrecha | Two consecutive terms (INFERENCE: first term from about 2014; the prospectus p64 says the Fiscal 2020 re-appointment filing with RoC was missed) | 30-Sep-2024 | About 10 years | "Completion of Two Consecutive Terms (Pursuant to Section 149(11))" | id-cessation-01oct2024.txt p1; MGT-7 FY25 section VIII B(ii) |
| Vijay V. Paranjape | Same | 30-Sep-2024 | About 10 years | Same | Same |
| Yudhvir Singh Jain | 01-Oct-2024 (AGM 30-Sep-2024) | 24-Oct-2024 | 24 days | Demise | AR FY25 CG report note [3] (ar-fy25.txt line 2017); postal-ballot-dec2024 explanatory statement; MGT-7 FY25 |
| P. N. Prasad (Prasad Parameswaranpillai Naga) | 14-Nov-2024 (additional director, ID); approved by postal ballot, e-voting 18-Dec-2024 to 17-Jan-2025, term to 13-Nov-2029 | 26-Oct-2025, close of business (a Sunday) | 11 months 12 days | Letter dated 26-Oct-2025 from Aluva: "in view of my other pre-occupations"; "I confirm that there is no other material reason than that stated above" | id-resignation-27oct2025.txt p1-3 (letter is image-only, read from render) |
| Prafulla P. Shenoy | 19-Jan-2026 (additional director, ID); approved 11-Apr-2026, term to 18-Jan-2031 | - | - | Replacement for Prasad | director-appt-14apr2026.txt; postal-ballot-mar2026 |

Continuing IDs: P. R. Dholakia (born 16-Jul-1945, so over 75; special resolution under Reg 17(1A) passed
19-Aug-2023) and Jignasa P. Mehta, both appointed 19-Aug-2023 (cg-report-mar2026 section I).

Points of note:
- Prasad's other boards at appointment (postal-ballot-dec2024 annexure): Axis Bank (Independent Director),
  Styrenix Performance Materials (ID), National E-Governance Services (Director), IPA of ICAI (Director);
  former director of Bank of India, ceased 12-Oct-2022. Bank of India was a Jyoti lender (Brickwork and
  Infomerics 2023 annexures). External: Axis Bank records him as ID from 20-Oct-2022 to 19-Oct-2026 and
  re-appointed for 2026-2030, so he was on Axis Bank's board throughout his Jyoti tenure; he is a former
  Deputy Managing Director of SBI.
- Axis Bank (CC 50, SBLC 108.90) and SBI (taking over HDFC's lines) appear as Jyoti lenders only in the
  10-Feb-2026 rating; neither was a lender in the 09-Jul-2025 annexure. Axis Finance (an Axis Bank subsidiary)
  lent 95.51 in FY26 (A7). Prasad resigned 26-Oct-2025, in that window.
  INFERENCE / UNVERIFIED: Section 20 of the Banking Regulation Act, 1949 restricts a bank from lending to a
  company of which one of its directors is a director. If that restriction applied here, a director common to
  Axis Bank and Jyoti would have had to leave one board before Axis Bank could lend. The sanction dates are not
  on file, so the sequence cannot be established. The stated reason is "other pre-occupations", with the
  confirmation of no other material reason, and nothing on file contradicts it. If the sequence were as
  hypothesised, resigning before the bank lends is the compliant course, so the hypothesis imputes no
  wrongdoing to Mr Prasad; the only open point would be whether "other pre-occupations" was the whole reason.
  Axis Finance is an NBFC, so Section 20 is irrelevant to its 95.51 crore loan. Test: obtain the Axis Bank
  sanction date and ask the company. RECOMMENDATION: keep this hypothesis out of the published report unless
  the sanction date is obtained and the sequence is confirmed.
- Reg 30 Sch III Part A para A(7B) asks, for an ID resignation, for the names of listed entities in which the
  director holds directorships, with committee memberships. The 27-Oct-2025 intimation's Annexure I has four
  rows (reason, date, profile N.A., relationships N.A.) and no such list. ESTABLISHED absence; whether it is a
  compliance gap is INFERENCE.
- The Shenoy intimation letter is dated "March 14, 2026" but digitally signed 14-Apr-2026 and cites the
  scrutinizer report of 13-Apr-2026. Clerical.
- Jain's cessation: no Reg 30 intimation for it is on the company's list (co-list.txt shows only the Oct-2024
  cessation of Kathrecha and Paranjape and the Oct-2025 resignation). UNVERIFIED on BSE.

## B2. Board and committee strength, windows below the stated minimum

The company's own Dec-2024 postal-ballot explanatory statement: "the board of directors of the company must
consist of 6 directors including 3 independent directors" (postal-ballot-dec2024 Item 1 explanatory).
Chairperson is the executive CMD and "related to Promoter" (cg-report-mar2026 section I), so Reg 17(1)(b)
requires at least half the board to be independent.

| Window | Board | IDs | Days | Committee effect |
|---|---|---|---|---|
| 01-Oct-2024 to 23-Oct-2024 | 6 | 3 (incl. Jain) | 23 | - |
| 24-Oct-2024 to 13-Nov-2024 | 5 | 2 | 21 | NRC reconstituted 14-Nov-2024 (cg-report NRC note 2) |
| 26-Oct-2025 (close) to 18-Jan-2026 | 5 | 2 | 84 | Audit Committee: Dholakia and Jadeja only until Mehta joined 01-Nov-2025 (about 5 days); NRC: Mehta and Dholakia only until Shenoy 19-Jan-2026 (84 days); SRC lost its chair (Prasad) |

INFERENCE: both board vacancies were filled inside the three months allowed by Reg 17(1E) / Reg 25(6), the
second with seven days to spare, so the board-level gaps are arguably compliant. The NRC at two members for
84 days is harder to reconcile with Reg 19(1)(a) (at least three directors), and that NRC recommended
Shenoy's appointment. Neither secretarial report flags any of this (B6). The Sept-2024 vacancies were
foreseeable from the date of the 2019 re-appointments; Jain's death was not.

## B3. Tax disputes

| Matter | Authority / forum | Period | Amount | Status | Source |
|---|---|---|---|---|---|
| Delay in depositing TDS; compounding (with show-cause notices to the company and to P. G. Jadeja, S. L. Jadeja and V. R. Rana) | Chief Commissioner of Income Tax (TDS), Ahmedabad | Intimation: "F.Y. 2013-14 to F.Y. 2016-17 and F.Y. 2018-19 to 2023-24"; Q1 FY25 results note 6: "A.Y. 2013-14 to A.Y. 2016-17 and A.Y. 2018-19 to A.Y. 2022-23"; prospectus: "Fiscal 2013 to Fiscal 2016, Fiscal 2018 to Fiscal 2023" | Compounding charges Rs 9,07,13,740 (9.07 crore) | Order received 29-Apr-2024; final compounding order 10-Jun-2024; paid; exceptional item 9.07 in Q1 FY25 and FY25 | it-order-30apr2024.txt p1-2; co/res-2024-06.txt line 182; prospectus p423-424 (application filed 15-Jul-2023); AR FY25 BRSR (ar-fy25.txt line 3481) and note 46 |
| E-way bill non-compliance, GST demand | Additional Commissioner, CGST Commissionerate, Rajkot; appeal to Commissioner (Appeals), CGST & Excise, Rajkot | Not stated | Tax 2,22,79,860 + penalty 2,22,79,860 = 4,45,59,720, plus interest | Order received 17-Nov-2025; set aside in full on 29-May-2026; refund of amount paid under protest due. Further departmental appeal: UNVERIFIED | tax-litigation-18nov2025.txt p2; tax-litigation-31may2026.txt p1-2 |
| Disputed income tax (contingent) | Not stated | Not stated | 20.00 (FY24), 19.57 (FY25), nil (FY26) | How it went to nil is not explained in any file read. UNVERIFIED | AR FY25 note 32 (notes-03 section 5); AR FY26 contingent note (ar-fy26.txt line 5973) |
| Disputed CST 15.53, VAT 2.59, excise 2.27 | Appellate authorities | Not stated | Unchanged FY24-FY26 | Pending | Same |
| Disputed GST (contingent) | - | - | nil (FY24), 1.86 (FY25), 4.03 (FY26) | INFERENCE: FY26 figure likely includes the e-way bill demand less pre-deposit | Same |

Observations:
- The TDS period description differs across three company documents (FY vs AY, and whether 2023-24 is
  included). ESTABLISHED inconsistency. FY 2017-18 is excluded in all three; why is UNVERIFIED.
- Prospectus risk factor 13 (p58-59) attributes delays in PF, TDS and GST to "cash flow mismatch and lack of
  sufficient liquidity"; FY21 alone had 53 late GST payments. The intimation of 30-Apr-2024 carries the old
  unlisted CIN prefix "U29221" three months after listing. Trivial, but indicative of template reuse.
- AR FY26 MD&A contingent-liability table (ar-fy26.txt lines 1363-1376) mislabels rows against the audited note:
  it shows "Disputed income tax liabilities 4.03; Disputed TDS Liabilities 15.53; Disputed CST 2.59; Disputed
  VAT 0.23", whereas the note shows income tax nil, CST 15.53, VAT 2.59, GST 4.03, excise paid under protest
  0.23. Each label is shifted one row. ESTABLISHED. A reader of the Board's report would see a TDS dispute of
  15.53 crore that does not exist and miss the CST dispute.

## B4. Other litigation - Huron Graffenstaden SAS (France)

ESTABLISHED (litigation-12apr2026.txt, dated Sunday 12-Apr-2026):
- Authority: "National Directorate of Intelligence and Customs Investigations and certain other investigative
  authorities". Suspicion: export of machines with dual-use technology in violation of EU law.
- Interim measures: director general of Huron "temporarily restricted from discharging any duties"; seizure of
  Huron bank accounts of ~EUR 4.0 million; seizure of two residential properties owned by Jyoti SAS; formal
  judicial investigation against Huron and certain employees.
- Date of receipt: letter to Huron and "subsequent news reports dated April 11th 2026". Company: Huron "refutes
  the allegations"; standalone JCAL "contributed over 85% of revenue from operations for the Group".
- FY26 auditor's Emphasis of Matter (notes-04 section 9.1 and line 590, AR FY26 Note 42): Huron has accumulated losses and eroded net
  worth; judicial investigation; certain machines under customs control; material uncertainty on going
  concern; investments, loans and receivables not impaired.
- Infomerics 21-Apr-2026 p1 reproduces the company's no-impact sentence (A4).

INFERENCE: JCAL itself manufactures 5-axis and high-end machines in Rajkot (notes-09: Huron-branded machines
"made in India or France"). 5-axis machine tools are typical dual-use items (Indian SCOMET list category 3).
The FY26 secretarial audit report says "as per representation given by authorized personnel of the company
... there is no Specific Act and Law applicable to the Company" (AR FY26 p82, ar-fy26.txt lines 2740-2822). So the
parent's own export-control compliance was outside the secretarial auditor's stated scope. Whether JCAL holds
SCOMET authorisations or has exports under review is UNVERIFIED. No finding of wrongdoing by JCAL exists on
file; the investigation is against the French subsidiary and its employees.

## B5. BSE price / volume query

ESTABLISHED (bse-response-11dec2025.txt): BSE Surveillance email of 11-Dec-2025, ref L/SURV/ONL/PV/APJ/2025-2026/755,
on "MOVEMENT IN VOLUME". Same-day reply: the company "has, from time to time, submitted all information /
announcements which in our opinion have bearing on the price / volume behavior". Boilerplate; no event named.
Context from files: Huron capacity-doubling PR 21-Nov-2025; GST demand intimation 18-Nov-2025; Infomerics
enhancement 10-Feb-2026. Promoter-group pledge (Virani) was 58,52,000 shares at Dec-2025 and 2,19,52,000 at
Mar-2026 (working-notes item 1). What drove the Dec-2025 volume is UNVERIFIED; bulk and block deals sit on a
separate BSE feed that was not reachable (Access Denied on 29-Sep-2026).

## B6. Secretarial reports

- Annual Secretarial Compliance Report FY25 (N S Dave & Associates, Nandish S. Dave, Jamnagar; dated
  29-May-2025, filed 30-May-2025): deviations table "Nil"; previous observations "Nil"; all 13 items "Yes"
  or "NA"; "No action has been taken" by SEBI or exchanges (secretarial-fy25.txt p2-4).
- Annual Secretarial Compliance Report FY26: same, "Nil" throughout (secretarial-fy26.txt p2-5).
- Secretarial Audit Report (MR-3) FY26, dated 23-Jul-2026 (AR FY26 p81-83): Board "duly constituted with proper
  balance"; "no Specific Act and Law applicable"; changes listed are Prasad's resignation and Shenoy's
  appointment only.
- Not flagged anywhere: the 84-day NRC shortfall, the 5-day Audit Committee shortfall, the RPT principal
  under-reporting (B8), the possible material-RPT threshold (B8), the AR FY26 contingent-table mislabel (B3).
- Same practitioner: Nandish Dave is secretarial auditor, compliance-report signatory, scrutinizer of both
  postal ballots (AR FY25 line 2917; AR FY26 line 2411), the pre-IPO certificate provider on untraceable RoC
  forms (prospectus p64-65), and apparently certifies MGT-7 (place Jamnagar, mgt7-fy25.txt line 1405-1439).
  INFERENCE: concentration of every external compliance check in one small practice. Not improper in itself.
- Prospectus risk factor 20 (p64-65) disclosed a missed RoC filing for the Kathrecha/Paranjape re-appointment
  (Fiscal 2020), 33 delayed filings, untraceable board resolution for the registered-office change, 19 late
  Form ODI and 5 late APR filings for Jyoti SAS (compounded with RBI, Rs 2 million, 21-Mar-2013), and 17
  instances of incorrect ODI reporting "not rectified". The post-listing reports show a clean record.

## B7. Postal ballots

| Notice | Resolution | Voting window | Result | Source |
|---|---|---|---|---|
| 12-Dec-2024 | Special resolution: appoint P. N. Prasad as ID for 5 years to 13-Nov-2029 | 18-Dec-2024 to 17-Jan-2025 | For 99.27%, against 0.73% | postal-ballot-dec2024; AR FY25 CG report p69 (ar-fy25.txt line 2917) |
| 10-Mar-2026 (dispatched 12-Mar-2026) | Special resolution: appoint Prafulla P. Shenoy as ID, 19-Jan-2026 to 18-Jan-2031 | Cut-off 11-Mar-2026; passed 11-Apr-2026 (last e-voting day) | For: 322 members, 17,97,93,657 votes, 93.39%. Against: 52 members, 1,27,24,120 votes, 6.61% | postal-ballot-mar2026; AR FY26 CG report (ar-fy26.txt line 2411) |

INFERENCE: promoter and promoter group held 14,22,46,495 shares (62.55%) at 31-Mar-2026 (shp-2026-03 line 63). If
all voted for, non-promoter votes were 3,75,47,162 for and 1,27,24,120 against, so about 25.3% of non-promoter
votes cast opposed. If some promoter shares did not vote, the public dissent share is higher. For a 65-year-old
retired IDBI/SIDBI treasury GM with one other directorship (Anand Housing Pvt Ltd), a quarter of the
public vote against is notable. The reasons (proxy-adviser view, independence, the unrelated Huron news
breaking on 11-Apr-2026, the last voting day) are UNVERIFIED. The notice records a member's Section 160
proposal of her candidature; the file s160-pgjadeja-2026.txt is empty, and the file name suggests the proposer
was P. G. Jadeja (UNVERIFIED).
Other shareholder approvals in the period (AR FY26 AGM table, ar-fy26.txt lines 2386-2400): AGM 30-Sep-2024
appointed Jain; AGM 18-Sep-2025 authorised the board to create charges on the company's properties (the Rs 300
crore TL was sanctioned the same month). No shareholder approval for any related party transaction appears.

## B8. Related party transactions: trend by counterparty (five half-year Reg 23(9) filings)

Units: rpt-h2fy24 and rpt-h1fy25 are in Rs million; rpt-h2fy25, rpt-h1fy26, rpt-h2fy26 in Rs crore. All
converted to Rs crore below. "Flow" = transaction value in the half; "Close" = closing balance.
Column order in the filings: value approved by audit committee | remarks | (date of AC approval, in some) |
value of transaction in the period | opening | closing.

### Jyoti SAS, France (100% subsidiary; holding company of Huron Graffenstaden SAS)

| Half | Investment flow / close | Loan flow / close (rate, tenure) | Interest (and guarantee commission) booked / accrued receivable close | Guarantee commission |
|---|---|---|---|---|
| H2 FY24 | +60.62 / 241.81 | - / 9.73 (per H1FY25 opening) | 1.94 ("Interest and Guarantee Commission") / 67.27 | incl. in previous column |
| H1 FY25 | +56.57 / 298.38 | nil / 9.73 (6.36%) | 1.05 / 70.84 | - |
| H2 FY25 | +26.10 / 324.48 | +8.49 / 18.38 (6.25%, 240 months) | 0.34 / 70.27 | - |
| H1 FY26 | +6.11 / 330.59 | +16.99 / 37.94 (6.25%, 240 months; AC approved 90) | 0.49 / 80.93 | 0.14 / 0.38 |
| H2 FY26 | +11.01 / 341.60 | +114.92 / 160.11 (6.25%, 12 months; AC approved 138; "Business Usage") | 3.33 / 88.04 | 2.01 / 2.39 |

Direction of value: out of JCAL. Total exposure about 318.8 (31-Mar-2024) to about 592.1 (31-Mar-2026).
Closing balances rise faster than the flows (for example loan 37.94 + 114.92 = 152.86 vs 160.11 reported);
INFERENCE: euro revaluation. The accrued-interest balance of 88.04 is about 23 years of the interest now
being booked; it is not being paid in cash (INFERENCE from the flows). Tenure "1188" on the investment rows
is unexplained.

### Huron Graffenstaden SAS (step-down subsidiary)

| Half | JCAL sales to Huron (flow / receivable close) | JCAL purchases from Huron (flow / payable close) | Other |
|---|---|---|---|
| H2 FY24 | 36.65 / 76.07 | 23.49 / 130.94 | Other expense 2.30 |
| H1 FY25 | 23.04 / 22.49 | 5.40 / 147.53 | AC limits 200 each way |
| H2 FY25 | 17.82 / 26.75 | 5.78 / 141.74 | - |
| H1 FY26 | 47.03 / 80.37 | 5.13 / 164.89 (printed as -164.89, opening -141.74) | Availment of services 0.58 |
| H2 FY26 | 48.39 / 118.89 | 8.12 / 170.62 | - |

Observations. ESTABLISHED numbers; INFERENCE on meaning.
- The payable to Huron (about 131 to 171) is 10 or more years of current purchases (5-8 per half). It is not
  explained by current trade. Possibly customer advances routed via Huron for India-built high-end machines, or
  legacy balances. Nature UNVERIFIED. Receivable fell 76.07 to 22.49 in H1 FY25 on sales of 23.04, implying
  about 76.6 collected or netted in six months.
- Sales to Huron doubled in FY26 (95.42 vs 40.86 in FY25), the year Huron doubled capacity (PR 21-Nov-2025),
  and the receivable rose to 118.89 just before the French seizure (Apr-2026).
- Huron Canada and Huron Frasmaschinen GmbH: under 1.1 crore per half throughout.

### Jyoti International LLP (promoter group; CMD holds 84.27%; itself holds 16.16% of JCAL)

| Half | Principal in the filing (flow / close) | Rate, tenure, AC-approved value | Interest paid by JCAL |
|---|---|---|---|
| H2 FY24 | -24.82 / 8.85 | 12%, 60 months, 160 | 1.96 |
| H1 FY25 | -1.75 / 7.10 | 12%, 60 months | 0.90 |
| H2 FY25 | -4.63 / "-" (7.10 - 4.63 = 2.47, but closing printed blank) | 12%, 12 months, 100 | 3.52 |
| H1 FY26 | "-" / "-" | 15%, 12 months, 100 | 0.92 |
| H2 FY26 | +122.80 and -122.80 / nil | 15%, 6 months, 100 | 2.32 (AC-approved interest shown as 0.92) |

Annual report RPT note, gross (AR FY25 ar-fy25.txt lines 6182-6190; AR FY26 ar-fy26.txt line 6234 onward):

| FY | Loans taken | Repaid | Converted to equity | Interest | Closing |
|---|---|---|---|---|---|
| FY24 | 185.03 | 160.99 | 29.88 | 2.66 | 10.80 |
| FY25 | 133.69 | 144.49 | - | 4.42 | nil |
| FY26 | 197.57 | 200.96 | - | 3.25 | nil |

Reconciliation. ESTABLISHED:
- Interest reconciles: FY25 0.90 + 3.52 = 4.42; FY26 0.92 + 2.32 = 3.24 (AR 3.25).
- Principal does not: FY25 gross 133.69 taken appears in the half-year filings only as net repayments of 1.75
  and 4.63; FY26 gross 197.57 appears as 122.80, with H1 FY26 showing no principal at all but 0.92 of
  interest. So about 74.77 of FY26 borrowing and all of FY25's gross borrowing are missing from the Reg 23(9)
  filings as printed.
- FY24 closing: AR 10.80 vs filing 8.85.
- H2 FY26 transaction 122.80 against an AC-approved value of 100; interest 2.32 against 0.92 approved.

INFERENCE, three layers, each with its counter:
1. Price. JCAL paid 12% and then 15% to its CMD's LLP while its Union Bank term loan was priced at 1Y MCLR +
   0.25% and its Union Bank working-capital line at 1Y MCLR (AR FY26 borrowings note); a small Union rupee loan
   carries 8.85%. Interest to the LLP FY24-FY26 totals 10.33 crore.
   Counter: unsecured, on-demand bridge money is worth a premium, and in FY24 the LLP converted 29.88 of loans
   into equity at the pre-IPO stage. Rebuttal: in FY26 the company had undrawn bank lines (Union CC 143 drawn
   of 250 at 31-Mar-2026) and an A+ rating.
2. Approval. Reg 23(1) treats an RPT as material if it exceeds the lower of Rs 1,000 crore or 10% of last
   audited consolidated turnover. FY26: 197.57 taken (plus 3.25 interest) vs 10% of FY25 consolidated revenue
   1,817.70 = 181.77. FY25: 133.69 + 4.42 = 138.11 vs 10% of FY24 consolidated revenue 1,338.47 = 133.85
   (notes-03 line 36). For any FY25 drawdowns in Apr-May 2024, before the FY24 accounts were audited, the
   "last audited" turnover is FY23's, which lowers that threshold further. On a gross-drawdown basis both
   years cross the threshold; no shareholder approval for
   any RPT appears in the AGM or postal-ballot records (B7). Counter: if transaction value is measured as peak
   outstanding (plausibly at or below the 100 approved per half), neither year is material. The regulation
   does not define value for revolving loans; SEBI's industry standards and prevailing practice should be
   checked before this is stated as a breach. UNVERIFIED as a breach.
3. Timing. H2 FY26: JCAL borrowed 122.80 from the LLP at 15% and lent 114.92 to Jyoti SAS at 6.25%, in the
   half when Huron's expansion opened. INFERENCE: promoter money bridged a subsidiary advance, with the spread
   borne by JCAL's minority. UNVERIFIED as to intent.
- The AR FY26 Board's report says all RPTs were "in its ordinary course of business and at arm's length"
  (ar-fy26.txt lines 1585-1600). The CG report says no loans or guarantees were given TO promoters
  (cg-report-mar2026 Part F), which is true: the flows run from the promoter to the company.

### Other promoter-group and KMP-linked parties (all small)

| Party | Relationship (as filed) | What | Trend |
|---|---|---|---|
| S. L. Jadeja (WTD) | Promoter | Interest-free loan to JCAL | 7.32 at 31-Mar-2024, repaid H1 FY25; 0.21 in H2 FY25, repaid H1 FY26 |
| P. G. Jadeja (CMD) | Promoter | Remuneration 1.20 (H2 FY24), 0.60 per half after; H1 FY26 printed "NiL"; interest-free loan 0.35 repaid H2 FY24 | Flat; H1 FY26 nil is likely a filing omission (AR FY26 shows remuneration) |
| V. R. Rana (WTD) | Promoter | Remuneration 0.39 (H2 FY24) then 0.21 per half | Flat |
| Kiya Products Pvt Ltd | Promoter group | JCAL sales 0.15-0.43 per half; fixed-asset purchases 0.11 (H2 FY24), 0.41 (H1 FY25), 0.47 (H2 FY26); services | Small, continuing |
| Nextn Equipments | Promoter group | JCAL sales 2.73 (H2 FY24); balance 0.9 run down | Ceased |
| Spectre / Specter | Relative of KMP is partner | Small sales and purchases; fixed asset 0.05 (H2 FY26) | Small |
| Favourite Engineering Sales; Favourite Fabtech Pvt Ltd | "Substantial Stake in" | Receivables 1.28 and 0.45 cleared in H2 FY25 | H2 FY25 filing shows Fabtech opening as 4.54 crore when the H1 FY25 close was 4.54 million: a unit error |
| Jyoti Enterprise | Promoter group (the 1989 partnership) | Security deposit / ICD 1.80 outstanding | Unchanged |
| Ignite INC | Promoter group | Adjustment -0.51 (H2 FY24) | Ceased |
| Relatives on payroll (Bhavubha Jadeja, Prarthana P. Jadeja, Jeet V. Rana, Bhavesh and Hitesh Solanki) | Promoter group / relatives of KMP | Salaries under 0.3 per half each | Flat |
| Neo Rajkot Foundation | - | CSR 0.40 (H2 FY25) | One-off |


---------------------------------------------------------------------------------------------------

## OPEN ITEMS (what would settle the UNVERIFIED points)

1. BSE announcements for 23-Aug-2023 to 31-May-2025: any Reg 30 filing of the Brickwork actions (the API was
   blocked on 29-Sep-2026). A logged-in browser or NSE archive would answer it.
2. Infomerics press releases of 26-Apr-2023 and 27-Jun-2024 (not on disk): their sensitivities and any machine
   figures for FY23/FY24.
3. Ask the company: basis of 3,600 / 3,517 units given to Infomerics vs 4,072 said on the May-2025 call.
4. Axis Bank and Axis Finance sanction dates vs P. N. Prasad's resignation on 26-Oct-2025.
5. Whether Brickwork was asked to withdraw, and the lender-consent position for the 2023 CRA change.
6. Beneficiary of the 264.34 SBLC / letters of comfort at 31-Mar-2026 (AR FY26 note footnote or lender annexure).
7. How transaction value is measured for the Jyoti International LLP loans under the company's RPT policy
   (gross drawdowns or peak outstanding), and the peak balance in FY25 and FY26.
8. How the 19.57 income-tax dispute was closed in FY26.
9. Nature of the 170.62 payable to Huron.
10. SCOMET / export-control compliance of JCAL's own 5-axis exports.

## EXTERNAL SOURCES (regulatory and public context; not company filings)
- Brickwork SEBI cancellation and SAT: https://www.business-standard.com/markets/news/relief-for-brickwork-ratings-sat-sets-aside-sebi-order-cancelling-licence-123060600575_1.html ;
  https://www.businesstoday.in/latest/corporate/story/brickwork-ratings-gets-a-breather-from-sat-but-cant-onboard-new-clients-349904-2022-10-14
- RBI 12-Oct-2022 press release on Brickwork and later relaxation: https://www.business-standard.com/article/companies/rbi-says-regulated-bodies-can-t-get-fresh-ratings-from-brickwork-ratings-122101201102_1.html ;
  https://www.business-standard.com/industry/banking/rbi-permit-banks-to-use-ratings-of-brickwork-for-loans-up-to-rs-250-cr-124071001108_1.html
- P. N. Prasad at Axis Bank: https://www.axisbank.com/docs/default-source/corporate-announcements/material-events-disclosed-under-sebi-(listing-obligations-and-disclosure-requirements)-regulations-2015/2021-2022/appointment-of-pn-prasad-as-additional-20-10-2022.pdf ;
  https://www.axisbank.com/media-centre/board-of-directors/p-n-prasad
- Brickwork 23-May-2022 rationale: https://bcrisp.in///BLRHTML/HTMLDocument/ViewRatingRationaleReview?id=70619
