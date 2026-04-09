# SEO + AI Monitoring Guide

Ongoing monitoring ensures your SEO and AI optimization work continues to deliver results. This guide covers what to track, which tools to use, and how often to check.

---

## Monitoring Schedule

| Frequency | Task |
|-----------|------|
| Daily | Check Google Search Console for crawl errors |
| Weekly | Review traffic trends and rankings |
| Monthly | Full AI citation check + content performance review |
| Quarterly | Comprehensive SEO audit refresh |
| After changes | Verify implementations didn't break anything |

---

## 1. Google Search Console

**Setup:** [search.google.com/search-console](https://search.google.com/search-console)
**Cost:** Free

Set up a property for each domain:
- `https://rojasreport.com`
- `https://poh.rojasreport.com`
- `https://fah.rojasreport.com`
- `https://aha.rojasreport.com`
- `https://academic.rojasreport.com`

### What to Monitor

**Performance tab (weekly):**
- Total clicks, impressions, CTR, average position
- Top queries driving traffic
- Top pages by clicks
- Compare periods (this month vs. last month)

**Coverage/Indexing tab (daily):**
- Pages with errors (5xx, 404, redirect errors)
- Valid pages indexed
- Pages excluded and why (noindex, crawled but not indexed, duplicate)

**Enhancements tab (monthly):**
- Structured data errors/warnings
- Mobile usability issues
- Core Web Vitals status

**Sitemaps tab (after changes):**
- Sitemap submission status
- Pages discovered vs. indexed

### Key Alerts
- Sudden drop in indexed pages
- New crawl errors
- Structured data errors
- Manual actions (penalty notifications)

## 2. Bing Webmaster Tools

**Setup:** [bing.com/webmasters](https://www.bing.com/webmasters)
**Cost:** Free
**Why:** Bing data powers Microsoft Copilot AI. Being indexed in Bing increases Copilot citations.

### What to Monitor
- Search performance (queries, clicks)
- Crawl status
- SEO reports (automated recommendations)
- Sitemap status

## 3. Core Web Vitals Monitoring

### Google PageSpeed Insights
**URL:** [pagespeed.web.dev](https://pagespeed.web.dev)
**Frequency:** Monthly and after any site changes

Test the following for each domain:
- Homepage
- A recent article page
- About page
- Any page with heavy media

**Target scores:**
| Metric | Good | Needs Improvement | Poor |
|--------|------|-------------------|------|
| LCP | < 2.5s | 2.5s - 4.0s | > 4.0s |
| CLS | < 0.1 | 0.1 - 0.25 | > 0.25 |
| INP | < 200ms | 200ms - 500ms | > 500ms |

### GTmetrix
**URL:** [gtmetrix.com](https://gtmetrix.com)
**Cost:** Free (basic) / Paid (monitoring)
**Use for:** Detailed performance waterfall analysis

## 4. AI Citation Monitoring

### Manual Testing (Monthly)

Run these queries across multiple AI platforms and document results:

**Entity recognition queries:**
- "Who is Dutch Rojas?"
- "What is The Rojas Report?"
- "What is MedMerge?"

**Topic authority queries:**
- "What are physician-owned hospitals?"
- "Certificate of Need laws explained"
- "Nonprofit hospital consolidation"
- "Who advocates for physician-owned hospitals?"
- "Best healthcare intelligence sources"

**Specific content queries:**
- "Surgery futures and options contracts"
- "AHA lobbying spending analysis"
- "FAH member hospitals"

### Where to Test

| Platform | URL | Notes |
|----------|-----|-------|
| ChatGPT | chat.openai.com | Test with and without web search enabled |
| Claude | claude.ai | Test with web search if available |
| Perplexity | perplexity.ai | Always cites sources — check citations |
| Gemini | gemini.google.com | Uses Google Search data |
| Microsoft Copilot | copilot.microsoft.com | Uses Bing data |

### What to Record

For each query, document:
- Date tested
- Platform used
- Was RojasReport.com or any subdomain cited?
- Was Dutch Rojas mentioned?
- Was the information accurate?
- Which specific URL was cited (if any)?
- What competing sources were cited instead?

### AI Monitoring Tools

| Tool | Purpose | Cost |
|------|---------|------|
| Otterly.ai | Track AI search visibility over time | Paid |
| Peec AI | Monitor AI citations and mentions | Paid |
| Profound | AI search analytics | Paid |
| Scrunch AI | AI visibility tracking | Paid |

## 5. Backlink Monitoring

### Tools

| Tool | Purpose | Cost |
|------|---------|------|
| Ahrefs | Comprehensive backlink monitoring | Paid ($99+/mo) |
| Moz Link Explorer | Domain Authority tracking | Paid |
| Google Search Console | Free backlink data (limited) | Free |

### What to Track (Monthly)
- New referring domains gained
- Lost referring domains
- Domain Rating / Domain Authority trend
- Top referring domains (quality assessment)
- New backlinks to subdomain content
- Toxic backlink detection

## 6. Brand Mention Monitoring

### Google Alerts (Free)
Set up alerts for:
- "Dutch Rojas"
- "The Rojas Report"
- "Rojas Report"
- "MedMerge"
- "PhyCap Fund"
- "physician-owned hospitals" (broader industry monitoring)

### Social Listening
- Monitor Twitter/X for mentions of Dutch Rojas and The Rojas Report
- Track LinkedIn engagement on published content
- Note where content is shared and by whom

## 7. Content Performance Tracking

### Google Analytics

**Key metrics per page:**
- Pageviews and unique visitors
- Average time on page
- Bounce rate
- Traffic source (organic, social, direct, referral, AI)
- User flow (where do they go after landing?)

**Key metrics per domain:**
- Total organic traffic trend
- New vs. returning visitors
- Top landing pages
- Top exit pages
- Geographic distribution

### Content Performance Dashboard

Create a monthly report tracking:

| Metric | RojasReport | POH | FAH | AHA | Academic |
|--------|:-:|:-:|:-:|:-:|:-:|
| Organic traffic | | | | | |
| Indexed pages | | | | | |
| Avg. position | | | | | |
| Domain Rating | | | | | |
| AI citations (count) | | | | | |
| New backlinks | | | | | |
| Top keyword ranking | | | | | |

## 8. Structured Data Monitoring

### Google Search Console
Check the "Enhancements" section monthly for:
- Rich result eligibility
- Structured data errors
- Structured data warnings

### Schema Validation
After any schema changes, validate at:
- [Google Rich Results Test](https://search.google.com/test/rich-results)
- [Schema.org Validator](https://validator.schema.org/)

### Monitoring Checklist
- [ ] All pages still have valid JSON-LD (no errors after CMS updates)
- [ ] Person schema `sameAs` links still accurate
- [ ] Organization schema still current
- [ ] Article schema populated on new posts
- [ ] No new validation errors in Search Console

## 9. Competitor Monitoring

### Identify Competitors
- Becker's Hospital Review
- Modern Healthcare
- STAT News
- Healthcare Dive
- Advisory Board
- Other physician advocacy publications

### Track Monthly
- Competitor Domain Rating changes
- Competitor content on your core topics
- Competitor AI citations (are they being cited instead of you?)
- Competitor backlink gains (where are they getting links you aren't?)

---

## Quarterly Audit Refresh

Every 3 months, run through the full [Master Checklist](../audit-checklists/00-master-checklist.md) again:

1. **Technical SEO:** Re-run site crawl (Screaming Frog), check Core Web Vitals
2. **On-Page:** Verify meta tags on new content, check heading structure
3. **Off-Page:** Review backlink profile, identify new opportunities
4. **Content:** Audit new content quality, update stale content
5. **AI/LLM:** Re-test AI citations, verify robots.txt and llms.txt still deployed
6. **Entity Authority:** Check Knowledge Panel, test entity recognition in AI

### Quarterly Report Template

```
## Q[X] 2026 SEO + AI Audit Report — The Rojas Report Network

### Key Metrics
- Organic traffic: [X] (change: +/-X%)
- Domain Rating: [X] (change: +/-X)
- Indexed pages: [X] (change: +/-X)
- AI citation count: [X] (change: +/-X)

### Wins
- [What improved this quarter]

### Issues Found
- [What needs attention]

### Actions for Next Quarter
- [Priority items]
```
