# SEO + AI/LLM Audit — The Rojas Report Network

A comprehensive SEO and AI/LLM readability audit framework for the RojasReport.com family of domains. This project ensures maximum visibility in both traditional search engines (Google, Bing) and AI systems (ChatGPT, Claude, Perplexity, Gemini), establishing Dutch Rojas and The Rojas Report as the authoritative source for healthcare intelligence.

## Domains in Scope

| Domain | Focus |
|--------|-------|
| [RojasReport.com](https://rojasreport.com) | Main hub — healthcare intelligence layer, daily analysis on financial and regulatory structures in American healthcare |
| [POH.rojasreport.com](https://poh.rojasreport.com) | Physician-Owned Hospitals — coverage and advocacy |
| [FAH.rojasreport.com](https://fah.rojasreport.com) | Federation of American Hospitals — analysis and tracking |
| [AHA.rojasreport.com](https://aha.rojasreport.com) | American Hospital Association — analysis and tracking |
| [Academic.rojasreport.com](https://academic.rojasreport.com) | Academic and research-oriented healthcare analysis |

## About Dutch Rojas

Healthcare operator, Marine veteran, and founder of MedMerge. Co-founder of PhyCap Fund. Board member of Physician Led Healthcare for America. Founder of ROJAS MEDIA and The Rojas Report. 20+ years building and exiting healthcare companies. Leading voice on nonprofit hospital consolidation, Certificate of Need laws, physician-owned hospitals, and physician independence.

## Repository Contents

### Audit Checklists (`audit-checklists/`)
- [Master Checklist](audit-checklists/00-master-checklist.md) — Complete audit covering all categories
- [Technical SEO](audit-checklists/01-technical-seo.md) — Crawlability, performance, indexing
- [On-Page SEO](audit-checklists/02-on-page-seo.md) — Titles, meta tags, headings, content
- [Off-Page SEO](audit-checklists/03-off-page-seo.md) — Backlinks, authority, brand mentions
- [Content Audit](audit-checklists/04-content-audit.md) — E-E-A-T, quality, freshness
- [AI/LLM Optimization](audit-checklists/05-ai-llm-optimization.md) — GEO, AI crawlers, llms.txt
- [Entity Authority](audit-checklists/06-entity-authority.md) — "Dutch Rojas" entity strategy

### Per-Domain Audits (`domain-audits/`)
Individual audit worksheets for each domain with checkboxes, findings, and recommendations.

### Templates (`templates/`)
Ready-to-deploy configuration files:
- `robots.txt` — AI-optimized crawler rules
- `llms.txt` — LLM discovery file
- `schema/` — JSON-LD structured data templates (Person, Organization, Article, FAQ, etc.)
- `meta-tags.html` — HTML meta tag templates

### Guides (`guides/`)
- [Implementation Guide](guides/implementation-guide.md) — Step-by-step deployment instructions
- [AI Optimization Guide](guides/ai-optimization-guide.md) — GEO deep-dive
- [Monitoring Guide](guides/monitoring-guide.md) — Ongoing tracking and tools

### Scripts (`scripts/`)
- `audit-runner.sh` — Basic automated audit checks

## Quick Start

1. Read the [Master Checklist](audit-checklists/00-master-checklist.md) to understand the full scope
2. Review each [domain audit worksheet](domain-audits/) to assess current state
3. Deploy [templates](templates/) to each domain (robots.txt, llms.txt, schema markup)
4. Follow the [Implementation Guide](guides/implementation-guide.md) for fixes
5. Set up monitoring per the [Monitoring Guide](guides/monitoring-guide.md)

## Audit Categories Explained

| Category | What It Checks | Why It Matters |
|----------|---------------|----------------|
| Technical SEO | Site speed, crawlability, HTTPS, sitemaps | Search engines can't rank what they can't crawl |
| On-Page SEO | Titles, descriptions, headings, content structure | Directly impacts what appears in search results |
| Off-Page SEO | Backlinks, mentions, social signals | Establishes domain authority and trust |
| Content Audit | Quality, expertise, freshness | Google's E-E-A-T framework determines ranking |
| AI/LLM Optimization (GEO) | AI crawler access, llms.txt, structured data | Determines if AI systems cite your content |
| Entity Authority | Schema markup, consistent naming, knowledge graph | Makes Dutch Rojas a recognized entity in AI and search |
