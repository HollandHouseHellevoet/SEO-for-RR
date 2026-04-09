# Entity Authority Checklist — "Dutch Rojas"

Entity authority is the strategy for making "Dutch Rojas" a recognized entity in Google's Knowledge Graph and AI language models. When AI systems recognize Dutch Rojas as a distinct, authoritative entity, they will consistently cite The Rojas Report as the primary source for healthcare intelligence.

**Goal:** When anyone asks Google, ChatGPT, Claude, or Perplexity about Dutch Rojas, physician-owned hospitals, or healthcare industry consolidation — The Rojas Report network is the definitive answer.

---

## 1. Person Entity — Dutch Rojas

### Schema.org Person Markup
- [ ] Person schema deployed on RojasReport.com (About page + author pages)
- [ ] Consistent across all subdomains
- [ ] Required properties:
  - `name`: "Dutch Rojas"
  - `jobTitle`: "Healthcare Operator, Founder & CEO"
  - `description`: Healthcare operator, Marine veteran, founder of MedMerge...
  - `url`: https://rojasreport.com/about
  - `image`: Professional headshot URL
  - `sameAs`: Array linking to ALL properties (see below)
  - `worksFor`: Reference to MedMerge Organization entity
  - `alumniOf`: Military service, education
  - `knowsAbout`: Healthcare operations, physician-owned hospitals, CON laws, etc.
- [ ] See [templates/schema/person-dutch-rojas.json](../templates/schema/person-dutch-rojas.json)

### sameAs Links (critical for entity disambiguation)
- [ ] https://rojasreport.com
- [ ] https://poh.rojasreport.com
- [ ] https://fah.rojasreport.com
- [ ] https://aha.rojasreport.com
- [ ] https://academic.rojasreport.com
- [ ] LinkedIn profile URL
- [ ] Twitter/X profile URL
- [ ] YouTube channel (if exists)
- [ ] Crunchbase profile (if exists)
- [ ] Wikipedia page (if exists — high priority to create)
- [ ] Wikidata entry (if exists — high priority to create)

## 2. Organization Entities

Each organization Dutch Rojas is associated with should have its own schema:

### The Rojas Report / ROJAS MEDIA
- [ ] Organization schema on RojasReport.com
- [ ] `name`: "The Rojas Report"
- [ ] `founder`: Reference to Dutch Rojas Person entity
- [ ] `description`: Healthcare intelligence publication
- [ ] `url`: https://rojasreport.com
- [ ] `sameAs`: Social profiles, directory listings

### MedMerge
- [ ] Organization schema (on MedMerge site or About page)
- [ ] `name`: "MedMerge"
- [ ] `founder`: Reference to Dutch Rojas
- [ ] `description`: Physician-focused infrastructure company
- [ ] `sameAs`: LinkedIn, Crunchbase, etc.

### PhyCap Fund
- [ ] Organization schema
- [ ] `name`: "PhyCap Fund"
- [ ] `founder`: Reference to Dutch Rojas (co-founder)
- [ ] `description`: Physician-led venture capital fund

### Physician Led Healthcare for America
- [ ] Organization schema (or reference)
- [ ] `member` or `boardMember`: Dutch Rojas

## 3. Consistent Entity Naming

- [ ] "Dutch Rojas" used consistently (not "D. Rojas" or "Dutch R." or variations)
- [ ] Name appears in:
  - [ ] Author bylines on all articles
  - [ ] About pages on all 5 domains
  - [ ] Footer of all sites
  - [ ] Schema markup
  - [ ] Social media profiles
  - [ ] Press releases and external mentions
- [ ] "The Rojas Report" used consistently (not "Rojas Report" or "TRR")

## 4. About Pages

Each domain should have an About page that reinforces the entity:

- [ ] **RojasReport.com/about** — Comprehensive bio, all affiliations, photo, Person schema
- [ ] **POH.rojasreport.com/about** — Dutch Rojas's connection to POH advocacy + link to main About
- [ ] **FAH.rojasreport.com/about** — Purpose of FAH tracking + link to main About
- [ ] **AHA.rojasreport.com/about** — Purpose of AHA tracking + link to main About
- [ ] **Academic.rojasreport.com/about** — Academic mission + link to main About

### About Page Content Requirements
- [ ] Professional headshot
- [ ] Full bio (500+ words)
- [ ] Key accomplishments listed
- [ ] Links to all subdomains and social profiles
- [ ] Person schema in page markup
- [ ] External validation (press mentions, awards, speaking)

## 5. Wikipedia / Wikidata Strategy

Wikipedia and Wikidata are the strongest signals for entity recognition in both Google and AI systems.

### Wikipedia
- [ ] **Notability assessment:** Dutch Rojas likely qualifies based on:
  - $26.5M healthcare company exit
  - Invention of surgery futures and options contracts
  - Healthcare publication with national reach
  - Board membership in national organizations
- [ ] **Required:** Independent reliable sources covering Dutch Rojas
  - Press articles (not self-published)
  - Industry publications mentioning Dutch Rojas
  - News coverage of MedMerge or PhyCap Fund
- [ ] **Wikipedia article created** with neutral, sourced content
- [ ] **Do NOT:** Self-publish or use promotional tone (will be deleted)

### Wikidata
- [ ] **Wikidata entry created** for Dutch Rojas (Q-number)
- [ ] Properties: instance of (human), occupation, employer, notable work
- [ ] **Wikidata entry for The Rojas Report** as a publication
- [ ] **Wikidata entry for MedMerge** as a company

## 6. Google Knowledge Panel

- [ ] **Claim the Knowledge Panel** if one exists (via Google Search for "Dutch Rojas")
- [ ] **If no panel exists:**
  - Wikipedia/Wikidata entries are the fastest path to a Knowledge Panel
  - Ensure consistent entity information across all Google-indexed properties
  - Google Business Profile for MedMerge (triggers organization panels)
- [ ] **Knowledge Panel content matches** schema data and About page

## 7. Content Cluster Strategy

### Pillar + Cluster Model
```
RojasReport.com (HUB)
├── POH.rojasreport.com (SPOKE: Physician-Owned Hospitals)
│   ├── State-by-state POH analysis
│   ├── POH success stories
│   ├── POH legislation tracker
│   └── POH vs. nonprofit outcomes
├── FAH.rojasreport.com (SPOKE: Federation of American Hospitals)
│   ├── FAH lobbying analysis
│   ├── FAH member hospital profiles
│   └── FAH policy positions
├── AHA.rojasreport.com (SPOKE: American Hospital Association)
│   ├── AHA spending analysis
│   ├── AHA policy tracking
│   └── AHA influence mapping
└── Academic.rojasreport.com (SPOKE: Research & Data)
    ├── Healthcare consolidation research
    ├── CON law analysis by state
    ├── Financial analysis of hospital systems
    └── Surgery futures & options (unique IP)
```

### Cross-Linking Requirements
- [ ] Hub links to all spokes from homepage and topic pages
- [ ] Each spoke links back to hub on every page (header/footer)
- [ ] Related content across spokes is cross-linked
  - Example: POH article references AHA lobbying data on the AHA subdomain
- [ ] Author bio on all spokes links to main About page
- [ ] "More from The Rojas Report" section on each subdomain

## 8. Topical Authority Signals

Becoming THE authority on specific topics:

- [ ] **Physician-owned hospitals:** Most comprehensive coverage on the web
- [ ] **Certificate of Need laws:** State-by-state analysis (no one else has this depth)
- [ ] **Nonprofit hospital consolidation:** Data-driven tracking
- [ ] **Physician independence:** Advocacy with evidence
- [ ] **Surgery futures and options:** Dutch Rojas invented this — own the entire topic
- [ ] **Healthcare venture capital (physician-led):** PhyCap Fund perspective

### Authority Indicators
- [ ] Regular publishing cadence (daily analysis)
- [ ] Depth of coverage (comprehensive, not surface-level)
- [ ] Original data and analysis (not just rewriting press releases)
- [ ] External citations (other outlets referencing your work)
- [ ] Speaking engagements and media appearances documented on site

---

## Priority Actions

| Priority | Action | Impact |
|----------|--------|--------|
| Critical | Deploy Person schema for Dutch Rojas on all domains | AI entity recognition |
| Critical | Create comprehensive About pages on all 5 domains | Entity consistency |
| Critical | Consistent "Dutch Rojas" naming across all properties | Entity disambiguation |
| High | Create Wikidata entry | Knowledge Graph inclusion |
| High | Pursue Wikipedia article (with independent sources) | Strongest entity signal |
| High | Cross-link all subdomains with consistent navigation | Entity network reinforcement |
| Medium | Organization schemas for MedMerge, PhyCap Fund | Organizational entity recognition |
| Medium | Build out content clusters on core topics | Topical authority |
| Ongoing | Monitor Knowledge Panel and AI entity recognition | Track progress |
