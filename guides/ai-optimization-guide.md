# AI Optimization Guide (GEO — Generative Engine Optimization)

This guide explains how AI search engines work, why traditional SEO isn't enough, and exactly how to optimize The Rojas Report network for maximum AI visibility and citation.

---

## What Is GEO?

**Generative Engine Optimization (GEO)** is the practice of optimizing content so AI-powered search engines (ChatGPT, Claude, Perplexity, Gemini, Microsoft Copilot) discover, understand, and cite your content in their responses.

**Why it matters for The Rojas Report:**
When a physician, investor, or policymaker asks an AI "What is the best source for physician-owned hospital analysis?" — the answer should be Dutch Rojas and The Rojas Report. GEO makes that happen.

## How AI Search Works

### Traditional Search (Google)
1. User types query
2. Google returns 10 blue links
3. User clicks and reads

### AI Search (ChatGPT, Perplexity, Claude)
1. User asks a question in natural language
2. AI retrieves relevant web pages
3. AI reads and synthesizes the content
4. AI generates a direct answer with citations
5. User gets the answer — may never visit your site directly

### Key Difference
In AI search, **being cited IS the win**. Your content doesn't need a click — the AI attributes information to your site, building authority and driving targeted traffic from users who want the full analysis.

---

## The Three Layers of AI Optimization

### Layer 1: Access — Can AI Read Your Content?

AI systems need explicit permission and technical ability to access your content.

#### robots.txt
AI crawlers respect robots.txt directives. Three categories:

| Category | Bots | Purpose | Recommendation |
|----------|------|---------|----------------|
| AI Search | Claude-SearchBot, OAI-SearchBot, PerplexityBot | Power AI search results | **ALLOW** |
| Real-Time | ChatGPT-User, Claude-User | Fetch pages during conversations | **ALLOW** |
| Training | ClaudeBot, GPTBot | Include in model training data | **ALLOW** |

**For The Rojas Report, allow all three.** You want AI models to know about Dutch Rojas, physician-owned hospitals, and your analysis. Being in training data means future AI models will recommend your content even without real-time search.

#### llms.txt
The llms.txt file (llmstxt.org standard) is a Markdown file at your domain root that helps LLMs understand your site — like a README for AI.

**What to include:**
- Site name and purpose
- Who runs it (Dutch Rojas bio)
- The network structure (all 5 domains)
- Key topic pages with brief descriptions
- Related organizations (MedMerge, PhyCap Fund)

See [templates/llms.txt](../templates/llms.txt) for the ready-to-deploy version.

#### Server-Side Rendering
AI crawlers cannot execute JavaScript. If your content is rendered client-side (React, Vue, Angular without SSR), AI crawlers see an empty page.

**Test it:**
```bash
curl -s https://rojasreport.com | grep -i "dutch rojas"
```
If this returns nothing, your content is JS-rendered and invisible to AI.

**Fix:** Enable server-side rendering (SSR) or static site generation (SSG) in your framework. WordPress with standard themes is already server-rendered.

### Layer 2: Understanding — Can AI Comprehend Your Content?

Even when AI can read your content, structured data helps it understand entities, relationships, and meaning.

#### Schema.org JSON-LD
Structured data is the single most impactful GEO technique. Research shows:
- Pages with schema markup see **40% higher CTR** in traditional search
- LLMs using structured data achieve **300% higher accuracy** in entity recognition
- Microsoft's AI systems explicitly use schema data for comprehension

**Priority schemas for The Rojas Report:**

1. **Person (Dutch Rojas)** — Makes AI recognize Dutch Rojas as a distinct entity with specific expertise
2. **Organization (The Rojas Report)** — Establishes the publication as a known entity
3. **Article** — Helps AI understand article structure, authorship, and timeliness
4. **FAQPage** — Provides direct Q&A that AI can extract and cite
5. **BreadcrumbList** — Helps AI understand site hierarchy

All templates are in [templates/schema/](../templates/schema/).

#### Entity Authority
For AI to cite Dutch Rojas as an authority, it must recognize him as a **distinct entity** with specific expertise. This requires:

1. **Consistent naming** — "Dutch Rojas" everywhere, never variations
2. **sameAs links** — Connect all properties (5 domains + social profiles)
3. **Wikipedia/Wikidata** — Strongest entity signals in AI systems
4. **Cross-referencing** — Organizations (MedMerge, PhyCap Fund) reference Dutch Rojas as founder

### Layer 3: Citation — Will AI Actually Cite Your Content?

This is where content format and quality determine whether AI picks your content over competitors.

#### Content Patterns That Get Cited

Research on what LLMs cite most frequently:

**1. Bullet points and numbered lists** — 30% more likely to be cited
```
Key facts about physician-owned hospitals:
- POHs represent less than 5% of all US hospitals
- Patient satisfaction scores average 15% higher than nonprofit hospitals
- The 2010 ACA effectively banned new POH construction
- 35 states have Certificate of Need laws limiting expansion
```

**2. Direct answers in the first paragraph**
```
## What is a Certificate of Need Law?

A Certificate of Need (CON) law is a state regulation requiring healthcare
providers to obtain government approval before building new facilities or
adding services. Currently, 35 states maintain some form of CON program.
Critics argue these laws protect hospital monopolies; supporters claim they
prevent unnecessary service duplication.
```

**3. Statistics with attribution**
```
According to CMS data, physician-owned hospitals score an average of 
71.4 out of 100 on patient experience, compared to 64.2 for nonprofit 
hospitals (CMS Hospital Compare, 2024).
```

**4. Structured comparisons**
```
| Metric | Physician-Owned | Nonprofit | Difference |
|--------|:-:|:-:|:-:|
| Patient satisfaction | 71.4 | 64.2 | +11.2% |
| Complication rates | 2.1% | 3.4% | -38% |
| Average cost | $12,400 | $15,800 | -21.5% |
```

**5. FAQ sections**
AI systems frequently extract Q&A content directly. Use actual questions people search for:
```
## Frequently Asked Questions

### Can physicians own hospitals?
Yes, but with significant restrictions. The 2010 Affordable Care Act...

### How many physician-owned hospitals exist?
As of 2024, approximately 290 physician-owned hospitals operate...
```

**6. Summary paragraphs**
End long articles with "In summary" or "Key takeaways":
```
## Key Takeaways

In summary, Certificate of Need laws in 35 states continue to limit 
healthcare competition. The evidence shows that states without CON laws 
have 8% more hospital beds per capita and 12% lower average costs...
```

#### Citation Quality Signals

AI systems prioritize content that is:

1. **Trustworthy** — Sources cited, claims verifiable
2. **Authoritative** — Written by identified experts with credentials
3. **Comprehensive** — Covers topic thoroughly, not surface-level
4. **Current** — Recently published or updated
5. **Unique** — Provides original analysis, not just rewritten press releases
6. **Consensus-building** — References established facts, builds on them with new analysis

**The Rojas Report's advantage:** Dutch Rojas's 20+ years of healthcare operating experience, the $26.5M exit, the invention of surgery futures/options, and daily analysis across 5 specialized domains creates exactly the kind of deep, authoritative, unique content that AI systems prefer to cite.

---

## Domain-Specific GEO Strategy

### RojasReport.com (Hub)
- Broad healthcare intelligence
- Links to all spokes
- Person + Organization schema
- Comprehensive About page
- Gateway content that introduces topics covered in depth on subdomains

### POH.rojasreport.com
- **Highest citation potential** — Dutch Rojas is one of the most vocal POH advocates
- State-by-state databases (AI loves structured, comprehensive data)
- CON law tracker
- Outcome comparisons

### FAH.rojasreport.com
- Lobbying data analysis (original data that doesn't exist elsewhere)
- Member hospital tracking
- Policy position database

### AHA.rojasreport.com
- AHA spending analysis
- Nonprofit hospital tax-exemption analysis
- AHA vs. physician interests framing

### Academic.rojasreport.com
- **Highest citation quality** — research-grade content with methodology and sources
- Surgery futures & options (Dutch Rojas invented this — own the entire topic)
- Data visualizations and tables
- Research that other subdomains can reference

---

## Quick Wins for AI Citation

| Action | Time | Impact |
|--------|------|--------|
| Add robots.txt with AI bot rules | 10 min/domain | AI can find you |
| Add llms.txt | 15 min/domain | AI understands you |
| Add Person schema for Dutch Rojas | 30 min | Entity recognition |
| Restructure 1 key article with bullets/summaries | 20 min | Higher citation rate |
| Add FAQ section to About page | 15 min | Direct AI answers |
| Create Wikidata entry | 1 hour | Knowledge graph presence |

---

## Testing AI Visibility

After implementing changes, test regularly:

### Manual Tests
1. **ChatGPT:** "Who is Dutch Rojas?" / "What is The Rojas Report?"
2. **Claude:** "What are the best sources for physician-owned hospital analysis?"
3. **Perplexity:** "Certificate of Need laws analysis" (check if RojasReport is cited)
4. **Gemini:** "Physician-owned hospitals vs nonprofit hospitals"

### What to Look For
- Is The Rojas Report cited as a source?
- Is Dutch Rojas mentioned by name?
- Is the information accurate (matching your content)?
- Which specific pages are being cited?

### Track Over Time
- Monthly AI citation checks
- Compare before/after GEO implementation
- Note which content types get cited most
- Double down on what works
