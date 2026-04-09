# Implementation Guide

Step-by-step instructions for deploying SEO and AI optimizations across all RojasReport domains.

---

## Phase 1: Foundation (Deploy Immediately)

These changes have the highest impact and lowest risk. Deploy to all 5 domains.

### 1.1 Deploy robots.txt

**Time:** 10 minutes per domain
**Impact:** AI crawlers can access your content

1. Copy [templates/robots.txt](../templates/robots.txt) 
2. Replace `[DOMAIN]` with the actual domain name
3. Upload to the root of each domain:
   - `https://rojasreport.com/robots.txt`
   - `https://poh.rojasreport.com/robots.txt`
   - `https://fah.rojasreport.com/robots.txt`
   - `https://aha.rojasreport.com/robots.txt`
   - `https://academic.rojasreport.com/robots.txt`
4. Verify each is accessible by visiting the URL in a browser

**WordPress:** Go to Settings > Reading. Uncheck "Discourage search engines from indexing this site." Then either:
- Use Yoast SEO or RankMath to edit robots.txt via the plugin
- Or upload directly via FTP/cPanel to the site root

**Static site / Custom CMS:** Place the file in the web root directory

### 1.2 Deploy llms.txt

**Time:** 15 minutes per domain
**Impact:** AI systems understand your site structure

1. Copy [templates/llms.txt](../templates/llms.txt) for the main domain
2. For subdomains, customize the content to focus on that subdomain's topic
3. Upload to the root of each domain:
   - `https://rojasreport.com/llms.txt`
   - `https://poh.rojasreport.com/llms.txt` (customize for POH focus)
   - etc.
4. Verify by visiting `https://[domain]/llms.txt` — should show raw Markdown

**Subdomain llms.txt customization:**
- Change the H1 heading to match the subdomain (e.g., "# The Rojas Report - Physician-Owned Hospitals")
- Adjust the description blockquote
- Keep the Dutch Rojas bio section
- Update key pages links to subdomain-specific content
- Keep the network section linking to all other subdomains

### 1.3 Create/Update XML Sitemaps

**Time:** 15 minutes per domain
**Impact:** Search engines find all your pages

**WordPress:**
1. Install Yoast SEO or RankMath (if not already installed)
2. Enable XML sitemap in plugin settings
3. Sitemap auto-generated at `/sitemap.xml` or `/sitemap_index.xml`
4. Submit to Google Search Console and Bing Webmaster Tools

**Non-WordPress:**
1. Generate sitemap using a tool like [XML-Sitemaps.com](https://www.xml-sitemaps.com)
2. Upload to domain root
3. Submit to search engines

### 1.4 Set Up Google Search Console

**Time:** 20 minutes per domain
**Impact:** See how Google views your site, get crawl error alerts

1. Go to [Google Search Console](https://search.google.com/search-console)
2. Add each domain as a property
3. Verify ownership (DNS, HTML file, or meta tag)
4. Submit sitemap for each domain
5. Review any existing crawl errors

### 1.5 Set Up Bing Webmaster Tools

**Time:** 10 minutes per domain
**Impact:** Bing indexing + Microsoft AI (Copilot) uses Bing data

1. Go to [Bing Webmaster Tools](https://www.bing.com/webmasters)
2. Import from Google Search Console (fastest method)
3. Submit sitemaps

---

## Phase 2: Schema Markup (High Impact)

Add structured data to establish entity recognition in Google and AI systems.

### 2.1 Person Schema — Dutch Rojas

**Time:** 30 minutes
**Impact:** AI systems recognize Dutch Rojas as a distinct entity

1. Copy [templates/schema/person-dutch-rojas.json](../templates/schema/person-dutch-rojas.json)
2. Replace placeholder values:
   - Update image URL with actual headshot
   - Replace LinkedIn/Twitter URLs with actual profile URLs
   - Add any additional sameAs links (YouTube, Substack, etc.)
3. Add to the About page of RojasReport.com in a `<script type="application/ld+json">` tag
4. Add the same schema (or a simplified version) to About pages on all subdomains
5. Validate at [Google Rich Results Test](https://search.google.com/test/rich-results)

**WordPress (Yoast/RankMath):**
- RankMath: Schema > Custom Schema > Add Person schema
- Yoast: Use the "Schema" tab or add via custom code snippet plugin
- Alternative: Add JSON-LD manually to theme's `header.php` or via a custom plugin

### 2.2 Organization Schema — The Rojas Report

**Time:** 20 minutes
**Impact:** Brand entity recognition

1. Copy [templates/schema/organization.json](../templates/schema/organization.json)
2. Replace placeholder URLs (logo, social profiles)
3. Add to the homepage of RojasReport.com
4. Validate at Google Rich Results Test

### 2.3 Article Schema — All Posts

**Time:** Variable (automate via CMS)
**Impact:** Rich results in search, better AI comprehension

1. Copy [templates/schema/article.json](../templates/schema/article.json)
2. Implement dynamically in your CMS template:
   - Replace `[BRACKETED]` values with template variables
   - Ensure `datePublished` and `dateModified` are populated from post metadata
   - Author always references the Dutch Rojas entity `@id`

**WordPress:**
- Yoast SEO and RankMath both auto-generate Article schema
- Verify the author references match Dutch Rojas Person entity
- Check that `@id` values are consistent

### 2.4 FAQ Schema

**Time:** 15 minutes per FAQ section
**Impact:** FAQ rich results in Google, direct AI answers

1. Copy [templates/schema/faq-page.json](../templates/schema/faq-page.json)
2. Add to any page with FAQ content
3. **Critical:** FAQ schema must exactly match visible Q&A content on the page
4. Customize questions/answers for the specific page topic

### 2.5 Breadcrumb Schema

**Time:** 15 minutes (one-time template setup)
**Impact:** Enhanced navigation in search results

1. Copy [templates/schema/breadcrumb.json](../templates/schema/breadcrumb.json)
2. Implement dynamically in page templates
3. Should reflect actual page hierarchy

---

## Phase 3: On-Page Optimization

### 3.1 Meta Tags

**Time:** 5 minutes per page
**Impact:** Controls what appears in search results

1. Reference [templates/meta-tags.html](../templates/meta-tags.html)
2. For each page, ensure:
   - Title tag: `[Keyword] - [Descriptor] | The Rojas Report` (< 60 chars)
   - Meta description: compelling, includes keyword (120-160 chars)
   - Canonical URL set to the page's own URL
   - Open Graph tags populated
   - Twitter Card tags populated

### 3.2 Heading Structure

Review every page:
1. Exactly one H1 per page
2. H1 contains the primary keyword
3. H2s break content into logical sections
4. H3s for subsections
5. No skipped levels

### 3.3 Image Optimization

For all images:
1. Add descriptive alt text
2. Use descriptive file names
3. Compress images (use [TinyPNG](https://tinypng.com) or [Squoosh](https://squoosh.app))
4. Set width/height attributes
5. Enable lazy loading for below-fold images

### 3.4 Internal Linking

Build the hub-and-spoke link structure:
1. **RojasReport.com homepage** links to all 4 subdomains
2. **Each subdomain** links back to RojasReport.com in header/footer
3. **Related articles** cross-link across subdomains
4. **Author bio** on every article links to the main About page
5. **"More from The Rojas Report"** section on each subdomain

---

## Phase 4: Content Optimization for AI

### 4.1 Restructure Existing Content

For each existing article:
1. Add a direct answer in the first paragraph
2. Break into short paragraphs (2-3 sentences)
3. Add bullet points for key facts
4. Add "Key Takeaways" or "In Summary" section at the end
5. Add FAQ section where natural
6. Ensure all claims cite sources

### 4.2 About Pages

Create or update About pages on all 5 domains:

**RojasReport.com/about:**
- Full Dutch Rojas bio (500+ words)
- Professional headshot
- All affiliations listed
- Links to all subdomains
- Links to social profiles
- Person schema in page markup

**Subdomain about pages:**
- Brief description of the subdomain's focus
- Reference to Dutch Rojas (link to main About page)
- Explanation of how this subdomain fits in The Rojas Report network
- Person schema referencing the main entity

### 4.3 Network Navigation

Add to all 5 domains (header or footer):
```
Part of The Rojas Report Network:
Main | POH | FAH | AHA | Academic
```
Each linking to the respective domain.

---

## Phase 5: Off-Page & Entity Authority

### 5.1 Social Profiles

1. Ensure LinkedIn, Twitter/X profiles are active and link to RojasReport.com
2. Add all profile URLs to Person schema `sameAs` array
3. Post content from all subdomains (not just main domain)

### 5.2 Wikipedia / Wikidata

1. **Gather independent sources** about Dutch Rojas (press coverage, interviews, industry mentions)
2. **Create Wikidata entry** for Dutch Rojas (lower barrier than Wikipedia)
3. **Assess Wikipedia notability** — $26.5M exit, invention of surgery futures/options, and national publication may qualify
4. **If pursuing Wikipedia:** Have someone with no conflict of interest draft the article

### 5.3 Google Knowledge Panel

1. Search "Dutch Rojas" on Google — check if a panel exists
2. If yes: claim and verify it
3. If no: Wikipedia/Wikidata entries are the fastest path to triggering one

---

## Deployment Checklist

### Per Domain

- [ ] robots.txt deployed and verified
- [ ] llms.txt deployed and verified
- [ ] XML sitemap created/updated and submitted
- [ ] Google Search Console configured
- [ ] Bing Webmaster Tools configured
- [ ] Person schema on About page
- [ ] Organization schema on homepage (main domain only)
- [ ] Article schema on all posts
- [ ] BreadcrumbList schema on all pages
- [ ] Meta tags verified on all pages
- [ ] Cross-domain navigation links in place
- [ ] About page created/updated
- [ ] Content restructured for AI readability

### Network-Wide

- [ ] Consistent "Dutch Rojas" naming across all 5 domains
- [ ] Hub-and-spoke internal linking verified
- [ ] Social profiles linked in schema markup
- [ ] Wikidata entry created
- [ ] Wikipedia article assessed/created
- [ ] Google Knowledge Panel checked/claimed
