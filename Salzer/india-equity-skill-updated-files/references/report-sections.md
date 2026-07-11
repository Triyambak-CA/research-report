# Report Sections Specification

The report must cover all 16 sections below, in order. Where data is unavailable, state so explicitly rather than estimating silently.

## Section 1 - Industry and Sector Analysis
- Industry size, growth rate (volume and value), and where India sits vs global peers.
- Current position in the industry cycle (upcycle, peak, downcycle, trough) with evidence: capacity utilisation, pricing trends, inventory levels across the chain.
- Structural shifts underway: formalisation, import substitution, China+1, premiumisation, consolidation, disruption risk.
- Industry margin structure: who captures value across the chain (raw material supplier, manufacturer, brand, distributor, retailer) and whether that is shifting.
- Regulatory architecture of the industry: licensing, price controls, import duties, anti-dumping actions (DGTR), quality control orders (QCOs), environmental norms.

## Section 2 - Business Model and Value Chain

Immediately after the industry analysis, orient the reader on exactly what the company does and how it makes money, explained the way a capable subordinate briefs a COO: plain, structured, end-to-end, no unexplained jargon. Cover the business for EVERY segment / division / product line the company operates - never collapse a multi-segment company into one description. Do it segment by segment.

Company-level first, then for EACH segment:
- **What it is** - a one-line plain description of the product or service.
- **Inputs and suppliers** - the key raw materials / bought-in components and who provides them; flag the dominant input and the single biggest supply dependency (a commodity like copper, or a sole-source component).
- **What the company actually does** - the transformation / value-add step it owns (manufacture, assembly, integration, certification, distribution).
- **Customers / clients** - who buys it and through what channel (OEMs, government / DISCOMs via intermediaries, distributors and dealers, direct exports); note customer concentration and, critically, whether the company owns the end-customer relationship or sells through a gatekeeper.
- **End use** - where the product ultimately gets used in the real world.
- **Revenue mix** - approximate share of revenue per segment and how the mix is shifting.
- **Value-chain position** - where the company sits (raw-material converter, sub-component maker, system integrator, brand owner) and therefore who captures the margin.

Then a dedicated **"unknown unknowns"** treatment: the non-obvious dependencies, single points of failure, and second-order risks a first read would miss (intermediary / gatekeeper dependence, certification lock-in that cuts both ways, single-geography manufacturing, commodity pass-through lags, JV / subsidiary capital leakage, input-sourcing concentration). Be specific to each segment, not generic.

Render this visually, not as walls of prose (see `html-design-system.md`): a per-segment INPUTS -> COMPANY -> CUSTOMERS -> END-USE value-chain flow, an input / role / customer / end-use detail grid, a stacked revenue-mix bar, and unknown-unknowns callouts. Flag every supplier / customer / mix figure that is inferred rather than disclosed.

## Section 3 - Competitive Landscape and Peer Benchmarking
- Identify the 4-6 closest listed comparables and 1-2 key unlisted competitors.
- For each peer: revenue scale, growth, EBITDA margin, ROCE, leverage, and current valuation multiple.
- Stated long-term and short-term milestones each major competitor is pursuing (capacity targets, market share goals, new segment entries) from their concalls and presentations.
- Where the company ranks on each dimension and whether the gap vs the leader is widening or narrowing.
- Any peer currently in distress or exiting: this often creates share-gain opportunities.

## Section 4 - Competitive Advantage: 6 Cs Moat Framework
Assess durable advantage across six dimensions, with evidence and a durability rating (strong/moderate/weak/none) for each:
1. **Cost** - structural cost advantage in inputs, process, scale, location, backward integration.
2. **Capacity** - capacity position, utilisation headroom, brownfield expansion optionality, time-to-replicate for a new entrant.
3. **Capital** - access to and cost of capital vs peers; balance sheet as a weapon in downturns.
4. **Channel** - distribution reach, dealer/distributor economics and loyalty, direct-to-customer capability, export channel access, channel stuffing risk.
5. **Customer captivity** - switching costs, approvals/qualifications (esp. pharma, auto ancillaries, defence), brand pull, repeat purchase behaviour, client concentration (top 5 / top 10 customer share).
6. **Compliance moat** - regulatory approvals, licences, certifications (USFDA, CE, BIS), patents, or environmental clearances that raise entry barriers.

Conclude with the single most important moat source and its expected half-life.

## Section 5 - Financial Analysis: Last 8 Quarters + 5 Years
Analyse like a top-decile fund analyst, not a data aggregator. Present the 8-quarter trend table, then interpret:
- Revenue: volume vs realisation split wherever disclosable; segment and geography mix shift.
- Margins: gross margin bridge (raw material pass-through vs mix vs operating leverage), EBITDA and PAT margin trajectory, one-off identification.
- Return ratios: ROCE and ROE decomposition (DuPont), incremental ROCE on capital deployed in the last 3 years.
- Working capital: cash conversion cycle trend (receivable days, inventory days, payable days) over 8 quarters; flag any quarter-end window dressing patterns.
- Cash flow: CFO vs EBITDA conversion over 5 years, free cash flow after maintenance and growth capex, capex intensity vs depreciation.
- Balance sheet: net debt trajectory, debt maturity profile, cost of borrowing vs peers, off-balance-sheet items (guarantees, LCs, operating leases).

## Section 6 - Earnings Quality and Forensic Checks
This section exists to catch what Section 5 misses. Run each check explicitly:
- Receivables growth vs revenue growth divergence over 3 years.
- Cash yield check: interest income earned vs average cash and investments held - does the cash appear real?
- CWIP aging: capital work-in-progress that never converts to gross block.
- Other income dependence: % of PBT from non-core income.
- Effective tax rate vs statutory rate reconciliation - persistent low cash tax is a red flag.
- Contingent liabilities as % of net worth, and trend.
- Related party transactions: nature, size, direction (value flowing in or out of the listed entity), and trend.
- Auditor: firm quality, tenure, any resignation/change, audit fee trend, CARO qualifications, emphasis of matter paragraphs.
- Miscellaneous: frequent accounting policy changes, capitalisation of expenses, subsidiary losses parked outside consolidation.

Assign an earnings quality score out of 10 with justification.

## Section 7 - Promoter, Governance and Capital Allocation Track Record
- Promoter background: professional history, other group entities, past ventures (including failures), political exposure, litigation history.
- Promoter shareholding trend over 3 years; pledge % and trend; any creeping acquisition or stake sale via SAST/insider trading disclosures on the exchanges.
- Promoter remuneration and royalty/brand fees as % of PAT; commission structures.
- KMP stability: CFO, CS, or auditor exits in the last 3 years and stated reasons.
- Board composition: genuine independence, relevant domain expertise, attendance records.
- Capital allocation history over 10 years: what did they do with every incremental rupee - capex (and its realised ROIC), acquisitions (and their outcomes), buybacks, dividends, or hoarding. Dilution history: past QIPs/preferential allotments/rights issues, at what price, and how those investors fared.
- ESOP policy and annual dilution rate.

## Section 8 - Management Guidance Scorecard: Last 8 Quarters
Build a guidance-vs-delivery table from concall transcripts and investor presentations:
- Every quantifiable claim made (revenue growth, margin targets, capex completion dates, capacity commissioning, order book conversion, new product launches, debt reduction targets).
- Actual outcome vs claim: hit / miss / overachieved, with magnitude.
- Compute a rough guidance credibility ratio.
- Concall forensics: language drift across quarters (confident to hedged or vice versa), questions repeatedly dodged, whether the promoter or professional management answers hard questions, analyst attendance and coverage trend (rising coverage = discovery phase; falling = abandonment).

## Section 9 - Regulatory and Company-Specific Risks and Advantages
- Live regulatory matters: SEBI orders or investigations, income tax and GST disputes (from contingent liabilities schedule), NCLT/NCLAT proceedings, environmental show-cause notices.
- Industry-specific regulatory dependencies: price controls (NPPA for pharma), tariff orders, PLI eligibility conditions, export incentive schemes (RoDTEP), licensing renewals.
- Regulatory tailwinds: QCOs blocking imports, anti-dumping duties protecting domestic players, mandatory standards favouring organised players.
- Concentration risks: single plant, single customer, single supplier, single geography.
- Rating agency view: latest credit rating, rationale document highlights, outlook, and any migration over 3 years. Quote the risks the rating agency flags - these are often absent from investor presentations.

## Section 10 - Scuttlebutt and Unpublished Signals
Search for ground-level signals that have not yet appeared in filings:
- LinkedIn: senior hires (new CXO from a larger competitor = ambition signal) and senior exits; employee posts about new plants, clients, or products.
- Job portals (Naukri, LinkedIn Jobs): hiring volume and roles as a leading indicator of capacity expansion or new segment entry.
- Glassdoor/AmbitionBox: attrition signals, management culture red flags.
- Import-export shipment data mentions, if reported anywhere public.
- Dealer, distributor, or customer commentary in trade media, industry forums, or social media.
- Any recent news, interviews, or podcast appearances by promoters/management not yet reflected in stock discussion.
Clearly label this section as lower-reliability signal, not verified fact.

## Section 11 - External Headwinds and Tailwinds
- Macro sensitivities: which of these move earnings and by how much - crude/commodity prices, INR/USD, interest rates, freight rates, monsoon/rural demand, urban discretionary demand.
- Global linkages: export dependence, geographic revenue mix, tariff and trade policy exposure (including US tariff actions), China supply dynamics for inputs or competition.
- Quantify where possible: e.g., every USD 10/bbl move in crude changes gross margin by X bps.

## Section 12 - Triggers, Themes and Government Scheme Plays
- Live and upcoming triggers: order wins and current order book (with book-to-bill ratio and execution timeline), capex commissioning dates, new product/market launches, pending approvals (USFDA, defence clearances), demerger/value-unlocking corporate actions, promoter stake changes.
- Government scheme linkage: PLI allocation and milestones, PM Gati Shakti, defence indigenisation lists, solar/renewable policy, Jal Jeevan, railway capex, semiconductor mission - whichever applies, with the company's specific entitlement and delivery status.
- Thematic tailwind classification: is the market currently paying for this theme, is the theme early/crowded/fading.
- Expected trigger calendar for the next 4 quarters.

## Section 13 - Shareholding, Positioning and Flow Analysis
- Shareholding pattern trend over 8 quarters: promoter, FII, DII, retail.
- Marquee investors present and their entry timing; MF monthly portfolio adds/exits in recent months.
- Retail shareholder count trend - a sharp rise often marks froth.
- Delivery percentage trend and any bulk/block deals in the last 12 months.
- Surveillance status: ASM/GSM list history.
- Index events: candidacy for inclusion/exclusion in Nifty indices or MSCI/FTSE rebalancing.
- F&O positioning if in the derivatives segment.

## Section 14 - Valuation
- Current multiples (P/E, EV/EBITDA, P/B, EV/sales as sector-appropriate) vs own 5-year and 10-year history (percentile rank) and vs peers.
- Choose the right primary multiple for the sector and justify the choice.
- **Reverse DCF first**: what revenue growth, margin, and reinvestment assumptions does the current market price imply, and are those achievable given Sections 1-13.
- Then a forward DCF or comparative valuation with explicit assumptions stated in a table.
- Where relevant: SOTP for conglomerates/holdcos (with holding company discount), replacement cost or EV/tonne / EV/MW for asset-heavy businesses, PEG for high-growth.
- Bull / base / bear scenarios with probability weights and the key assumption driving each scenario.

## Section 15 - Pre-Mortem and Anti-Thesis
- Write the strongest short-seller's case against this company in 5-8 points, argued sincerely.
- Identify 3-5 explicit thesis-killers: specific, observable events or data points that would invalidate the investment case.
- Key monitorables dashboard: 5-8 metrics with numeric thresholds to track every quarter (e.g., "receivable days above 90", "pledge above 15%", "gross margin below 32%").
- Base rate check: how have similar setups (same sector, similar valuation, similar cycle position) historically resolved.

## Section 16 - Investment Pitch
- **The 90-second pitch to buy**: the thesis in plain language a fund IC would accept.
- **The 90-second pitch to exit/avoid**: for an existing holder, when and why to sell.
- Do NOT give a Buy/Sell/Hold rating or recommendation - present both cases and let the reader decide.
- Time horizon over which the thesis would play out if the bull case holds.
- One-line summary: "This is a bet on ___, priced as if ___, and it breaks if ___."

## Executive summary (top of report)
One-page executive summary before Section 1: bull/base/bear target range, top 3 positives, top 3 risks, earnings quality score, guidance credibility ratio.

## Source list (end of report)
Dated list of the filings, transcripts, and rating rationales actually used. Flag every claim that could not be verified from a primary source.
