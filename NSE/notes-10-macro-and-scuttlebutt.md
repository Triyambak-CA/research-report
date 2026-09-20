# NSE - Macro/Official Data and Scuttlebutt Notes
Compiled 21-Sep-2026, revised same day after primary-document review. Research task,
not part of the deep-dive report drafting itself.

## MATERIAL CONTEXT FLAG (affects both parts below, and affects working-notes.md)
The working-notes.md in this folder describes NSE as "PRE-OPEN, DRHP stage" as of the
21-Sep-2026 run start. That is now stale. Five independent secondary media outlets
(Outlook Business, Millennium Post, Entrepreneur India, Kotak Neo, Chittorgarh.com),
all dated 15-Sep-2026 or later, report:
- RHP dated 10-Sep-2026.
- Price band Rs 1,700 to Rs 1,785 per equity share.
- Issue size approx. Rs 21,494-22,569 crore, OFS of ~12.64 crore shares (the DRHP itself,
  confirmed from the primary document in source-docs, states an OFS of up to
  148,905,525 shares; the two share counts are not reconciled here - flagging the gap,
  not inferring a cause for it).
- Subscription window 17-Sep-2026 to 21-Sep-2026 (TODAY is the reported closing day).
- Anchor book 16-Sep-2026. Allotment 22-Sep-2026. Listing proposed on BSE 24-Sep-2026.
- Reported as India's second-largest IPO after Hyundai Motor India (Rs 27,870 crore, 2024).
This is corroborated across five independent secondary outlets, which is a stronger
basis than a single-source claim, but I did NOT open the RHP itself or a BSE/SEBI
primary record to confirm it, so it stays labelled SECONDARY. It materially changes
the offer's status from "DRHP stage" to "subscription closing today, listing imminent"
and should be escalated to whoever owns the report draft, not just filed here.

**SEPARATE CORRECTION TO WORKING-NOTES.MD, FOUND WHILE VERIFYING SCUTTLEBUTT ON THE
COLOCATION SETTLEMENT (see Part 2.1):** working-notes.md's open item says "SEBI
settlement said to be approved around 20-Jun-2026." Having now read the DRHP itself
(source-docs/NSE-DRHP-18-Jun-2026.pdf, page ~26 of the risk factors and page 397
litigation chapter), the primary document says NSE filed settlement APPLICATIONS with
SEBI on the Colocation and Dark Fibre matter on 20-JUN-2025 (not 2026), then filed
REVISED settlement terms on 13-Mar-2026 for a cumulative amount of Rs 14,912.07 million
(~Rs 1,491 crore), which were STILL PENDING as at the DRHP date (17-Jun-2026) - not
approved. I am flagging this here rather than editing working-notes.md myself, since
that file is outside this task's scope, but the date and the "approved" characterisation
both need correction before the report relies on that item.

---

# PART 1: OFFICIAL INDUSTRY AND MACRO DATA

## 1. Capital market growth - demat accounts, investors, SIP, folios (5 years)
No single official SEBI bulletin table consolidating a clean 5-year unique-investor/demat
series was obtained in this session (see gaps section). Figures below are as reported by
market-data aggregators and financial media citing depository/AMFI data; none were opened
at the primary depository or AMFI-PDF level in this session, so all are SECONDARY.

| Metric | Figure | Date/Period | Source |
|---|---|---|---|
| Total demat accounts | 17.10 crore (CDSL 13.34 cr + NSDL 3.76 cr) | 31-Aug-2024 | SBI Securities blog citing depository data - SECONDARY |
| Total demat accounts | 21.0 crore (CDSL 16.77 cr + NSDL 4.23 cr) | Oct-2025 | Angel One market update citing depository data - SECONDARY |
| NSDL active demat accounts | 4.51 crore | May-2026 | Trade media - SECONDARY |
| CDSL active demat accounts | 18.38 crore | May-2026 | Trade media - SECONDARY |
| MF folio count | 17.78 crore -> 23.45 crore (+32%) | FY24 -> FY25 | AMFI Annual MF Report Fiscal 2025 (amfiindia.com), as reported by Business Standard, 19-May-2025 |
| MF folio count | 25.60 crore (from 25.19 crore in Sep) | Oct-2025 | AMFI monthly data via trade media - SECONDARY |
| SIP contributing accounts | 8.11 crore | Mar-2025 | AMFI, cited in Business Standard 19-May-2025 |
| SIP contributing accounts | crossed 9 crore | Sep-2025 | AMFI monthly note - SECONDARY |
| Avg monthly SIP inflow | Rs 16,602 cr (FY24) -> Rs 24,113 cr (FY25) | FY24 vs FY25 | AMFI, via Business Standard 19-May-2025 |
| Monthly SIP inflow | Rs 25,926 cr (Mar-2025, +34.53% YoY) | Mar-2025 | AMFI Monthly Note March 2025 (amfiindia.com), named but not opened at source |
| Monthly SIP inflow | Rs 29,361 cr | Sep-2025 | AMFI, trade media report - SECONDARY |
| Monthly SIP inflow | Rs 31,961 cr | Jul-2026 | Trade media - SECONDARY |
| SIP AUM | Rs 13.35 lakh crore | end FY25 | AMFI Annual Report FY25 via Business Standard |

An earlier draft of this note also cited an "11 crore demat accounts by Dec-2022"
figure attributed to Business Standard; the underlying search hit was actually a 2017
PTI story about 2016 accounts data, a mismatch. That row has been dropped rather than
re-attributed on guesswork.

**GAP:** I did not open the AMFI Annual Report FY25 PDF, the AMFI Monthly Note PDFs, or
a SEBI bulletin with a consolidated demat/unique-investor series, at the primary-source
level, in this session. Treat every row above as reported-from-primary, not
confirmed-from-primary.

## 2. Securities Transaction Tax (STT) collections, last 5 years

**Primary-source finding (confirmed by direct download and pdftotext extraction of
the Receipt Budget 2026-2027, indiabudget.gov.in/doc/rec/allrec.pdf, 21-Sep-2026):**
the Receipt Budget does NOT carry a standalone "Securities Transaction Tax" line in its
main tax-revenue tables. STT is explicitly folded into the "Taxes on Income" head. The
document's own text (page 5 of the printed Receipts document) states: "Taxes on
Income... This head also includes other taxes, mainly the Securities Transaction Tax...
Revised Estimate of Taxes on Income for 2025-2026 is Rs 13,12,000 crore as against the
Budget Estimate of Rs 14,38,000 crore. Budget Estimate for 2026-2027 is Rs 14,56,000
crore." No STT-only figure can be isolated from this document. The same "Income Tax
includes STT" footnote also appears in the state-devolution annexures (Annex 4A/4B) of
the same document, confirming this is a structural feature of how the Budget reports
STT, not a one-off omission. This is why standalone STT figures only exist in the
Budget speech, PIB press releases, or CBIC/tax-department press notes, not in the
Receipt Budget's main tables. **I could not locate a working, fetchable primary
document with a clean standalone 5-year STT Actuals series in this session** (the
CBDT income-tax time-series PDF referenced in earlier search results returned an
unreadable/blocked file on direct download attempt, 21-Sep-2026). The table below is
therefore SECONDARY throughout.

| Fiscal year | Figure (Rs crore) | Status | Source |
|---|---|---|---|
| FY 2021-22 | 23,191 | Actuals (as reported) | Trade media reporting on Budget documents - SECONDARY |
| FY 2022-23 | 20,000 (BE) | Budget Estimate | Business Standard, Budget 2022, 01-Feb-2022 |
| FY 2023-24 | 33,778 | Actuals (as reported) | Trade media citing Budget documents - SECONDARY |
| FY 2024-25 | Rs 16,634 cr collected 01-Apr to 11-Jul-2024 (+128% YoY vs Rs 7,285 cr same period FY24); by 02-Feb-2025 (Business Standard, "STT collection estimates...") cumulative FY25 collection to date was reported near Rs 42,000 cr; RE for FY25 was revised upward, reported in the same window, to Rs 55,000 cr (from an earlier Rs 37,000 cr RE) at the time of Budget 2025-26 (01-Feb-2025) | Part-year actual + Revised Estimate for the same fiscal year, reported at similar dates. These two figures are consistent with each other (a part-year actual of ~Rs 42,000 cr by early Feb tracking toward a Rs 55,000 cr full-year RE), not contradictory. An earlier draft of this note mis-dated the "Rs 42,000 cr" report as Feb-2026 rather than 02-Feb-2025 (misread of the article URL date), which had wrongly manufactured an apparent discrepancy; that has been corrected here. | Upstox news, Jul-2024; Business Standard, 02-Feb-2025, "STT collection estimates: building castles in the air on shifting sands" - SECONDARY throughout |
| FY 2025-26 | Not established | - | Not found within scope of this search |

### STT rate changes with effective dates
| Change | Old rate | New rate | Effective date | Source |
|---|---|---|---|---|
| STT on sale of futures | 0.0125% | 0.02% | 01-Oct-2024 | Union Budget 2024-25 (23-Jul-2024); rate and date corroborated across multiple outlets (ICICI Direct, Business Today) |
| STT on sale of options (on premium) | 0.0625% | 0.1% | 01-Oct-2024 | Same Budget 2024-25 announcement |
| STT on futures (further hike) | 0.02% | 0.05% | 01-Apr-2026 | Union Budget 2026-27 (Feb-2026), reported by NewKerala and Motilal Oswal - SECONDARY, not independently checked against the Finance Bill 2026 text |
| STT on options premium (further hike) | 0.10% | 0.15% | 01-Apr-2026 | Same Budget 2026-27 |
| STT on exercise of options | 0.125% | 0.15% | 01-Apr-2026 | Same Budget 2026-27 |
Both the 2024 and 2026 hikes were explicitly justified by government/finance-ministry
statements as measures to discourage speculative F&O trading, citing SEBI's own finding
that most individual F&O traders lose money (see Part 1.3, now confirmed from SEBI's own
primary study, not just media). **The 01-Apr-2026 rates are reported, not independently
verified against the Finance Bill 2026 text, in this session.**

Stamp duty on securities transactions: **NOTHING VERIFIED.** No official stamp-duty
collection series was located in the time available.

## 3. Equity derivatives turnover - PRIMARY SOURCE READ AND EXTRACTED
Document: SEBI, "Comparative study of growth in Equity Derivatives Segment vis-a-vis
Cash Market after recent measures" (sebi.gov.in/sebi_data/attachdocs/jul-2025/1751900271726.pdf),
dated by its own analysis window to Jul-2025 (covers data through May-2025). Downloaded
and converted with pdftotext; the tables below are transcribed directly from that
document, not from media summaries. This is the strongest primary source in this note.

**Measures the study analyses (SEBI's own list, Table 1 of the study):**
| Measure | Effective from |
|---|---|
| Rationalization of Weekly Index derivatives products | 20-Nov-2024 |
| Increase in tail risk coverage on options expiry day | 20-Nov-2024 |
| Increased contract size for index derivatives (NSE 02-Jan-2025, BSE 10-Jan-2025) | Jan-2025 |
| Rationalization of Monthly index derivative products (each exchange to one expiry day/week: BSE Tuesday, NSE Thursday, MSE Friday) | Jan-2025 |
| Upfront collection of option premium from buyers | 10-Feb-2025 |
| Removal of calendar spread treatment on expiry day | 10-Feb-2025 |
| Intraday monitoring of position limits (breach penalty exempted pending further directions, per circular 28-Mar-2025) | 01-Apr-2025 |
Underlying circulars: SEBI circular dated 01-Oct-2024 (framework) and a further circular
dated 29-May-2025 (risk-metric strengthening). **These circular dates are now
CONFIRMED, taken directly from the SEBI study's own text**, resolving the "UNVERIFIED
at circular level" gap flagged in the first draft of this note.

**Table 2 of the SEBI study - long-term average daily turnover, FY20-FY25 (Rs crore):**
| Segment | FY20 | FY21 | FY22 | FY23 | FY24 | FY25 | 5Y CAGR |
|---|---|---|---|---|---|---|---|
| Equity Derivatives Segment (EDS), premium terms | 92,724 | 1,21,882 | 1,47,039 | 1,62,728 | 1,97,649 | 2,63,832 | 23% |
| Cash Market (CM) | 39,148 | 66,007 | 72,368 | 57,666 | 87,978 | 1,20,782 | 25% |

**Table 4 of the SEBI study - individual investors' average daily traded value in EDS (Rs crore):**
| | FY20 | FY21 | FY22 | FY23 | FY24 | FY25 | 5Y CAGR |
|---|---|---|---|---|---|---|---|
| Overall EDS | 25,359 | 36,045 | 35,250 | 40,735 | 48,860 | 61,534 | 19% |
| Index options | 1,256 | 3,326 | 7,954 | 15,423 | 20,796 | 25,324 | 82% |

**Tables 5-10 of the SEBI study - short-window comparison, Dec-May periods, the window
the study built around the Nov-2024/2025 measures (Rs crore unless stated):**
| Metric | Dec24-May25 (A) | Dec23-May24 (B) | Dec22-May23 (C) | A vs B | A vs C |
|---|---|---|---|---|---|
| EDS avg daily turnover, market-wide | 2,43,094 | 2,55,206 | 1,66,730 | -5% | +46% |
| Cash Market avg daily turnover | 1,05,544 | 1,18,190 | 55,366 | -11% | +91% |
| Index options premium turnover | 61,533 | 67,467 | 54,086 | -9% | +14% |
| Index options notional turnover | 3,18,50,658 | 4,48,42,314 | 2,24,69,205 | -29% | +42% |
| EDS individual-investor turnover | 56,042 | 62,722 | 41,272 | -11% | +36% |
| Unique individual traders in EDS (count) | 67,55,579 | 84,06,551 | 54,68,988 | -20% | +24% |

**Table 11/12 of the SEBI study - individual trader profit/loss, FY22-FY25:**
| Year | Net profit (Rs crore) | No. of traders (lakh) | Loss-makers (%) | Avg per-person P&L (Rs) |
|---|---|---|---|---|
| FY22 | -40,824 | 42.7 | 90.2% | -95,517 |
| FY23 | -65,747 | 58.4 | 91.7% | -1,12,677 |
| FY24 | -74,812 | 86.3 | 91.1% | -86,728 |
| FY25 | -1,05,603 | 96.0 | 91.0% | -1,10,069 |
Net losses of individual traders WIDENED 41% YoY in FY25 (to Rs 1,05,603 crore),
even as the percentage of loss-makers stayed flat around 91%. This is the SEBI study's
own headline finding (para 18), not a media paraphrase.

The study also states (para 16), citing World Federation of Exchanges data for
Mar-2025: Indian exchanges hold the top global position by number of index-derivative
contracts traded, with average contracts more than 4.3 times the second-ranked
exchange - though it notes minimum contract-size increases from Jan-2025 make
contract-count trends non-comparable to earlier periods.

### THE CONTRADICTION THE TASK ASKED ME TO HUNT FOR - NOW SOURCED TO SEBI'S OWN PRIMARY TEXT
SEBI's own study documents TWO simultaneous, opposite-direction truths inside a single
document, depending on which base year is chosen:
- YoY (Dec24-May25 vs Dec23-May24): EDS turnover down 5% market-wide, index options
  down 9% (premium) / 29% (notional), individual-investor turnover down 11%, unique
  individual traders down 20%, and individual trader net losses UP 41% YoY to a record
  Rs 1,05,603 crore in FY25 with loss-maker incidence steady at ~91%.
- 2-year (Dec24-May25 vs Dec22-May23): every one of those same metrics is UP, sharply
  (turnover +46%, index options +14%/+42%, individual turnover +36%, unique traders +24%).
This is the official regulator's own document, not a comparison across two different
issuers' documents - and it is precisely why the choice of comparison base year
determines whether the "official" story reads as growth or decline. An exchange's
own IPO industry chapter would be expected to lean on the 5-year CAGR (Table 2: 23%
EDS CAGR, individual EDS CAGR 19%, index options individual CAGR 82%) or the 2-year
comparison, both of which are strongly positive; SEBI's own post-measures framing (the
entire reason the study exists) leans on the YoY dip and the widening trader losses to
justify continued and further tightening (culminating in the Apr-2026 STT hike, Part
1.2 above). **Any turnover growth chart in NSE's DRHP/RHP industry chapter should be
checked against which base year and which window it uses**, against these SEBI numbers.

## 4. Official concern about derivatives volumes / measures in force
- Confirmed directly from the SEBI study text (see Part 1.3 tables above): SEBI circular
  dated 01-Oct-2024 (initial framework) and 29-May-2025 (further risk-metric measures)
  are both real, dated, primary regulatory actions, not just media-reported rumours of
  action.
- Business Standard, 24-Mar-2025 (opinion piece): "SEBI proposals seek orderly conduct in
  F&O market amid volatility" - indicates an active SEBI consultation process around that
  date, ahead of the 29-May-2025 circular. Not independently opened at consultation-paper
  level.
- The government's Apr-2026 STT hike (Budget 2026-27) is the clearest fiscal-policy
  "measure in force" flowing from the same official loss/turnover findings (Part 1.2).

---

# PART 2: SCUTTLEBUTT AND UNPUBLISHED SIGNALS
**Everything below is lower-reliability signal - media commentary, job-portal listings,
crowd-sourced employee-review sites, and LinkedIn-adjacent reporting. None of it is a
verified fact in the SEBI/RBI/Budget/DRHP sense of Part 1. Labelled accordingly.**

## 1. Senior hires/exits, current MD and CEO, co-location departures
- **Current MD and CEO: Ashishkumar Chauhan**, in office since 17-Jul-2022 (NSE's own
  website bio, nseindia.com/static/mr-ashishkumar-chauhan - a primary company source).
  Previously MD & CEO of BSE (appointed 2012, per Business Standard archival reporting).
- **05/06-Sep-2026:** Media reports named Chauhan as one of three internal candidates
  under consideration for Tata Sons Chairman (alongside Tata Steel CEO T V Narendran and
  Tata Sons Group CFO Saurabh Agrawal). NSE issued a formal clarification calling the
  reports "not based on any information available with the exchange"; Chauhan stated he
  remains "fully committed" to NSE and its ongoing IPO/listing process. Sources: Upstox
  news report and indiaipo.in, both dated 05/06-Sep-2026. Scuttlebutt/media-rumour
  territory even though NSE's denial is itself a company statement; the underlying Tata
  Sons succession story is unconfirmed and explicitly denied by NSE. Worth noting purely
  as a governance-continuity signal at a sensitive moment (subscription window open/
  closing this same month), not as a prediction.
- **Colocation/Dark Fibre matter - now CONFIRMED from the DRHP itself** (source-docs/
  NSE-DRHP-18-Jun-2026.pdf; see also the correction flag at the top of this note): NSE
  filed settlement applications with SEBI on 20-Jun-2025, and revised settlement terms
  on 13-Mar-2026 for a cumulative amount of Rs 14,912.07 million, PENDING as at the DRHP
  date of 17-Jun-2026. Separately, per the same DRHP: SAT reversed the WTM Order's
  disgorgement direction on 09-Aug-2023 and set aside the AO Order on 14-Dec-2023; SEBI
  appealed both to the Supreme Court, and the Supreme Court directed SEBI to refund
  Rs 310 million to NSE in the Dark Fibre WTM appeal (specific refund date not
  established in this session). The former senior executives most associated with the
  original case are Chitra Ramakrishna (former MD & CEO) and Ravi Narain (former
  Vice-Chairman); SEBI disposed of proceedings against NSE and several ex-officials on
  13-Sep-2024 citing insufficient evidence (Business Standard, Business Today, both
  13-Sep-2024).
- **No LinkedIn-sourced CXO-level exit/hire list for the last 24 months could be
  compiled in this session** - this environment has no direct LinkedIn search access,
  and general web search did not surface a dated list of recent (2024-2026) CXO moves at
  NSE or its subsidiaries beyond the co-location-era names above and the Chauhan/Tata
  story. **Gap, stated as such, not filled with plausible names.**

## 2. Hiring volume and mix (job portals)
- Naukri.com listing pages show headline counts such as "662 NSE surveillance job
  vacancies" (Aug-2026) and "16,962 NSE job vacancies" (Nov-2025) / "25,568 National
  Stock Exchange NSE jobs" (Aug-2026). **These figures are almost certainly NOT specific
  to National Stock Exchange of India as an employer** - "NSE" as a search keyword on a
  generic job-portal keyword-match page collides with many unrelated listings, and these
  read as generic keyword aggregation counts, not an employer-filtered count. Flagged as
  LOW-CONFIDENCE/LIKELY NOISE, not reported as a genuine hiring signal. LinkedIn showed
  "608 NSE jobs in India" with the same caveat.
- **Nothing verified** on an employer-filtered current open-role count at National Stock
  Exchange of India Limited specifically, or on the breakdown by function (technology vs
  surveillance vs compliance vs new product).

## 3. AmbitionBox / Glassdoor signals
- General search surfaced Glassdoor pages for "AmbitionBox.com" the review-aggregator
  COMPANY itself (reviews of AmbitionBox as an employer), not NSE reviews sourced via
  AmbitionBox - a search-tool mismatch, discarded rather than reported as if it concerned
  NSE.
- One fragment did concern NSE specifically: a search snippet referencing a "National
  Stock Exchange of India '100 job security' Reviews" page on Glassdoor, and a separate
  paraphrase alleging "high attrition due to employee dissatisfaction... HR policies for
  increment being very poor where managers have all the power to manipulate." **This is
  a paraphrase of an unidentified, undated review with no reviewer count and no link I
  personally opened and read. Treat as a rumour of a rumour, not as a rating.**
  Recommend opening ambitionbox.com and glassdoor.co.in NSE-specific company pages
  directly for a dated aggregate score and representative review text, which I could not
  do reliably through search snippets alone in this session.

## 4. Trading member/broker commentary: outages, co-location, fees
- **24-Feb-2021 outage - CONFIRMED against SEBI's own published documents:**
  - SEBI press release, "Trading halt at NSE on February 24, 2021" (sebi.gov.in, Mar-2021).
  - Trading halted for approximately four hours from around 10:08 am after failure of
    telecom links serving NSE's primary and disaster-recovery Storage Area Network (SAN),
    cascading into NSE Clearing's (NCL's) risk management system and other systems (index
    computation, surveillance).
  - SEBI issued show-cause notices to top NSE executives (reported by Business Standard,
    03-Nov-2021), citing deficiencies in orderly execution of trades and inadequate
    surveillance systems; SEBI's probe reportedly found faulty design in critical trading
    infrastructure and capacity lower than required for peak load (Moneylife, reporting
    on the SEBI order - this specific "faulty design" characterisation is media
    paraphrase of the order, not a direct quote I verified against the order text).
  - **Settlement order dated Jun-2023, SEBI's own published order** (sebi.gov.in/
    enforcement/orders/jun-2023, "Settlement Order in the matter of failure of systems
    of NSE and NCL upon occurrence of glitch on February 24, 2021"): NSE, NCL and three
    senior executives settled for a total of Rs 72.64 crore (Business Standard,
    28-Jun-2023). This is a primary regulatory document, the strongest-sourced item in
    this whole Part 2 alongside the DRHP-confirmed colocation dates above.
- **BSE competitive dynamics / market share shift, post expiry-day changes:**
  - Business Standard, 01-May-2024: BSE's average daily notional derivatives volume
    reached a 20.6% market share (versus effectively zero roughly a year earlier), on
    overall segment ADTV of Rs 432 lakh crore (as reported, notional basis). HDFC
    Securities (a broker - a market participant, not a regulator) projected BSE's
    derivative ADTV could reach Rs 114 lakh crore in FY26 with market share potentially
    crossing 30% - **explicitly a broker's forward projection/claim, not an outcome.**
  - SEBI approved NSE's index derivatives expiry day moving to Tuesday for contracts
    expiring after 01-Sep-2025 (consistent with Table 1 of the SEBI study in Part 1.3,
    which independently confirms NSE Thursday / BSE Tuesday / MSE Friday as the
    rationalised single-expiry-day structure from Jan-2025 - note the study's own text
    names NSE as Thursday and BSE as Tuesday, the reverse pairing from some trade-media
    reports; this note defers to the SEBI primary document's own table over secondary
    reporting on which exchange got which day).
  - No BSE management public statement specifically framing NSE's IPO or competitive
    threat was located in this session. **Nothing verified on direct BSE commentary
    about the NSE IPO itself.**

## 5. MD/Chairman public statements on IPO timing, settlement, regulatory approval (12 months)
- Chauhan's "fully committed" statement, 05/06-Sep-2026 (Part 2.1) - the clearest dated,
  on-record MD statement located, addressing IPO commitment/continuity rather than
  timing specifics.
- Reported (not independently opened at primary-document level): NSE received a SEBI
  no-objection certificate (NOC) on 30-Jan-2026, subject to completing the listing
  process before 30-Jan-2027, with the MD reportedly indicating an 8-9 month timeline
  from that NOC to listing. Given the RHP/price-band developments corroborated for
  mid-Sep-2026 (top-of-note flag), this reported timeline now appears to have been
  realistic or conservative, but the NOC document itself was not opened in this session.
- No separately dated chairman-level (as distinct from MD-level) public statement was
  located.

## 6. SEBI observations timeline / signals on the NSE listing
- Business Standard, 27-Mar-2025 ("NSE IPO hangs in the balance as SEBI flags regulatory
  gaps in fresh letter") - media reporting of a SEBI letter raising regulatory-gap
  concerns, roughly 15 months before the eventual DRHP filing. Not independently opened
  at source.
- The reported 30-Jan-2026 NOC (Part 2.5) is the clearest dated SEBI signal located,
  again not independently opened at source.
- Given the corroborated RHP/price-band reporting (top-of-note flag), SEBI observations
  on the DRHP appear to have already been issued and cleared by the RHP stage
  (early Sep-2026), ahead of the Dec-2026/2027 listing window some mid-2026 analyst
  commentary anticipated. **Reconcile directly against the RHP document itself before
  this goes into any report** - it corrects the more cautious analyst commentary that
  was appearing in searches alongside it.

---

## Sources not reached / explicit gaps (do not fill these by inference)
- RBI Handbook of Statistics, Economic Survey chapter on financial markets, IBEF pages,
  NITI Aayog publications, WFE/FIA global contract volume data as an independent source
  (the SEBI study's own citation of WFE data, Part 1.3, is the only WFE-sourced figure
  in this note) - **NOT consulted in this session.** A follow-up pass should pull the
  latest Economic Survey (2025-26, tabled with Union Budget 2026-27, Feb-2026) and the
  RBI Handbook for an independent cross-check of the demat/SIP figures in Part 1.1.
- A standalone official STT Actuals series for FY22-FY25 - the Receipt Budget document
  was checked directly (see Part 1.2) and confirmed NOT to carry this as a separate
  line; a CBDT income-tax time-series document that might carry it separately could not
  be downloaded in readable form in this session. This remains a genuine primary-source
  gap, not an oversight.
- Stamp duty on securities transactions - nothing verified.
- Employee attrition rate, LinkedIn CXO-move list, hiring-mix breakdown, and a directly-
  read (not paraphrased) AmbitionBox/Glassdoor NSE score with a date - all explicit gaps,
  stated as such in Part 2 rather than estimated.
- The RHP itself, the SEBI NOC of 30-Jan-2026, and the SEBI letter of Mar-2025 referenced
  in Part 2.5/2.6 - none opened at primary-source level in this session; all rest on
  secondary reporting, however well-corroborated.
