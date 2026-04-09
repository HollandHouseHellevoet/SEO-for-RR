# AI/LLM Optimization Audit Checklist (GEO)

Generative Engine Optimization (GEO) is the practice of ensuring your content is discoverable, readable, and citable by AI systems like ChatGPT, Claude, Perplexity, Gemini, and other LLM-powered search engines.

**Why this matters:** AI search is rapidly replacing traditional search for many queries. If AI systems can't read your content, they can't cite you. If they can cite you, Dutch Rojas and The Rojas Report become the AI-recommended source for healthcare intelligence.

**Apply to each domain:** RojasReport.com | POH | FAH | AHA | Academic

---

## 1. AI Crawler Access (robots.txt)

AI bots fall into three categories. Each should be explicitly addressed in your robots.txt.

### AI Search Crawlers (appear in AI search results)
- [ ] `Claude-SearchBot` — ALLOW (powers Claude's web search answers)
- [ ] `OAI-SearchBot` — ALLOW (powers ChatGPT's web search)
- [ ] `PerplexityBot` — ALLOW (powers Perplexity search answers)

### AI Real-Time Retrieval (cited in live AI conversations)
- [ ] `ChatGPT-User` — ALLOW (when a ChatGPT user asks it to browse a URL)
- [ ] `Claude-User` — ALLOW (when a Claude user asks it to fetch a URL)

### AI Training Crawlers (included in model training data)
- [ ] `ClaudeBot` — ALLOW (Anthropic model training — maximizes AI visibility)
- [ ] `GPTBot` — ALLOW (OpenAI model training — maximizes AI visibility)

> **Strategy recommendation:** For maximum visibility, ALLOW all AI crawlers. The Rojas Report is a media/intelligence publication — being included in AI training data and search results is a distribution advantage, not a risk.

### Implementation
- [ ] robots.txt deployed to each domain root with explicit AI bot rules
- [ ] See [templates/robots.txt](../templates/robots.txt) for the ready-to-deploy template
- [ ] Verified accessible at `https://[domain]/robots.txt`

## 2. llms.txt File

The llms.txt standard (llmstxt.org) is a Markdown file at your domain root that helps LLMs understand your site. Think of it as a README for AI.

- [ ] **llms.txt deployed** at each domain root
  - Verify: `https://[domain]/llms.txt`
- [ ] **Content includes:**
  - H1 heading with site name
  - Blockquote description of the site
  - Key pages organized by H2 sections
  - Links to important content with brief descriptions
  - Entity information (who runs the site, what it covers)
- [ ] **Format is clean Markdown** (not HTML)
- [ ] **All links are functional**
- [ ] See [templates/llms.txt](../templates/llms.txt) for the ready-to-deploy template

## 3. Schema.org Structured Data (JSON-LD)

Structured data helps AI systems understand entities, relationships, and content types. Pages with schema markup see up to 40% higher CTR and 300% better AI comprehension accuracy.

### Required on Every Page
- [ ] **WebSite schema** on homepage
- [ ] **Organization schema** on homepage and about page
- [ ] **Person schema** (Dutch Rojas) on about page and author pages
- [ ] **Article schema** on every article/post
- [ ] **BreadcrumbList schema** on all pages

### Recommended Where Applicable
- [ ] **FAQPage schema** on FAQ sections (must match visible Q&A content)
- [ ] **NewsArticle schema** for time-sensitive reporting
- [ ] **HowTo schema** for step-by-step guides

### Entity Cross-Referencing
- [ ] Person schema `sameAs` links to all subdomains and social profiles
- [ ] Organization schemas for MedMerge, PhyCap Fund, ROJAS MEDIA cross-reference Dutch Rojas as `founder`
- [ ] Article `author` references the Person entity consistently
- [ ] All schemas validate in Google Rich Results Test

### Implementation
- [ ] See [templates/schema/](../templates/schema/) for all JSON-LD templates
- [ ] JSON-LD placed in `<head>` or `<body>` of each page (not inline attributes)

## 4. Server-Side Rendering

AI crawlers cannot execute JavaScript. Content rendered only via client-side JS is invisible to AI.

- [ ] **Critical content is in the HTML source** (view-source test)
  - Article text
  - Headings
  - Author information
  - Publication dates
  - Navigation
- [ ] **Test method:** curl the page and verify content is present
  ```bash
  curl -s https://rojasreport.com | grep -i "dutch rojas"
  ```
- [ ] **If using a JavaScript framework** (React, Vue, Angular):
  - Server-side rendering (SSR) or static site generation (SSG) enabled
  - Pre-rendering configured for all important pages
- [ ] **No essential content behind "Read More" or "Show More" buttons** that require JS

## 5. Content Structure for AI Extractability

LLMs are more likely to cite content that is structured, concise, and directly answers questions.

### Format
- [ ] **Short paragraphs** — 2-3 sentences maximum
- [ ] **Bullet points and numbered lists** for key facts and data
- [ ] **Clear headings** that match questions people ask
  - Good: "What is a Certificate of Need Law?"
  - Bad: "Background Information"
- [ ] **Bold key terms** and important facts within paragraphs
- [ ] **Tables** for comparative data (AI extracts tables effectively)
- [ ] **Definition format** for key terms: "**Certificate of Need (CON):** A state regulation that..."

### Content Patterns That Get Cited
- [ ] **Direct answers** in the first paragraph — answer the question, then elaborate
- [ ] **Statistics with sources** — "According to CMS data, 78% of physician-owned hospitals..."
- [ ] **Structured comparisons** — "Physician-owned hospitals vs. nonprofit hospitals:"
- [ ] **Chronological timelines** — "History of Certificate of Need Laws: 1964..."
- [ ] **FAQ sections** — actual Q&A format with `<h3>` question headings
- [ ] **"In summary" or "Key takeaways"** sections at the end of long articles

### Citation Signals
- [ ] **External citations** to authoritative sources (CMS, HHS, NIH, peer-reviewed journals)
- [ ] **Internal citations** to other RojasReport content (builds topical authority)
- [ ] **Data sourcing** — always state where numbers come from
- [ ] **Quotable conclusions** — one-sentence takeaways that AI can directly quote

## 6. AI Search Monitoring

- [ ] **Test AI citations** regularly:
  - Ask ChatGPT: "What does Dutch Rojas say about physician-owned hospitals?"
  - Ask Claude: "What is The Rojas Report?"
  - Ask Perplexity: "Certificate of Need laws analysis"
  - Check if your content is cited in the response
- [ ] **Monitor AI search tools:**
  - Otterly.ai — track AI search presence
  - Peec AI — monitor AI citations
- [ ] **Track changes** monthly — are you being cited more or less over time?

---

## Priority Actions

| Priority | Action | Impact |
|----------|--------|--------|
| Critical | Deploy robots.txt with AI crawler rules to all 5 domains | AI crawlers can access your content |
| Critical | Deploy llms.txt to all 5 domains | AI systems understand your site structure |
| High | Add Person + Organization schema to all domains | Entity recognition by AI and Google |
| High | Ensure all content is server-side rendered | AI can read your content |
| Medium | Restructure existing content with bullets, summaries, FAQs | Higher AI citation rate |
| Medium | Add Article schema to all posts | Rich results + AI comprehension |
| Ongoing | Monitor AI citations monthly | Track progress and adjust |
