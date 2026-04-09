# Technical SEO Audit Checklist

Evaluate the technical foundation of each domain. Technical SEO ensures search engines (and AI crawlers) can discover, crawl, render, and index your content.

**Apply to each domain:** RojasReport.com | POH | FAH | AHA | Academic

---

## Crawlability & Indexing

- [ ] **robots.txt** exists at domain root and is accessible
  - Verify: `https://[domain]/robots.txt`
  - Not blocking important pages
  - Includes AI crawler rules (see [AI/LLM checklist](05-ai-llm-optimization.md))
  - References sitemap URL
- [ ] **XML Sitemap** exists and is valid
  - Verify: `https://[domain]/sitemap.xml`
  - Lists all important pages
  - No 4xx/5xx URLs in sitemap
  - Submitted to Google Search Console
  - Submitted to Bing Webmaster Tools
  - Last modified dates are accurate
- [ ] **Google Search Console** set up for each domain/subdomain
- [ ] **Bing Webmaster Tools** set up for each domain/subdomain
- [ ] **Noindex tags** — verify no important pages are accidentally noindexed
  - Check: `<meta name="robots" content="noindex">`
  - Check: `X-Robots-Tag` HTTP header
- [ ] **Crawl budget** — no infinite URL patterns or parameter traps

## URL Structure

- [ ] URLs use hyphens (not underscores) as word separators
- [ ] URLs are lowercase
- [ ] URLs are descriptive and human-readable
- [ ] No unnecessary query parameters in indexed URLs
- [ ] URL depth is reasonable (no more than 4-5 levels deep)
- [ ] Trailing slashes are consistent (either always or never)
- [ ] No session IDs or tracking parameters in URLs

## Site Architecture

- [ ] Important pages reachable within 3 clicks from homepage
- [ ] Clear navigation structure (header, footer, breadcrumbs)
- [ ] No orphaned pages (pages with no internal links pointing to them)
- [ ] Logical content hierarchy (categories > subcategories > pages)
- [ ] HTML sitemap available for users (optional but helpful)

## HTTPS & Security

- [ ] All pages served over HTTPS
- [ ] SSL/TLS certificate is valid and not expired
- [ ] HTTP to HTTPS redirect in place (301)
- [ ] No mixed content warnings (HTTP resources on HTTPS pages)
- [ ] HSTS header enabled (`Strict-Transport-Security`)
- [ ] Security headers present (X-Content-Type-Options, X-Frame-Options)

## Performance & Core Web Vitals

- [ ] **Largest Contentful Paint (LCP)** < 2.5 seconds
  - Test: Google PageSpeed Insights
  - Optimize: image compression, server response time, render-blocking resources
- [ ] **Cumulative Layout Shift (CLS)** < 0.1
  - Test: Google PageSpeed Insights
  - Fix: set dimensions on images/videos, avoid injecting content above existing content
- [ ] **Interaction to Next Paint (INP)** < 200ms
  - Test: Google PageSpeed Insights
  - Optimize: reduce JavaScript execution time, break up long tasks
- [ ] **Server response time (TTFB)** < 800ms
- [ ] GZIP or Brotli compression enabled
- [ ] Browser caching configured with appropriate expiry headers
- [ ] Images optimized (WebP/AVIF format, appropriate dimensions, lazy loading)
- [ ] CSS and JavaScript minified
- [ ] Critical CSS inlined for above-the-fold content
- [ ] No render-blocking resources in document head
- [ ] CDN in use for static assets (if applicable)

## Mobile

- [ ] Passes Google Mobile-Friendly Test
- [ ] Responsive design (not separate mobile site)
- [ ] Touch targets are appropriately sized (48x48px minimum)
- [ ] No horizontal scrolling required
- [ ] Font sizes readable without zooming (16px base minimum)
- [ ] Viewport meta tag present: `<meta name="viewport" content="width=device-width, initial-scale=1">`

## Canonical & Duplicate Content

- [ ] Every page has a canonical tag pointing to itself or the preferred version
- [ ] No conflicting canonical tags
- [ ] www vs non-www redirects in place (one canonical version)
- [ ] No duplicate content across subdomains (same article on POH and main site)
- [ ] Pagination handled correctly (rel="next"/"prev" or single-page preference)

## Structured Data

- [ ] JSON-LD format used (Google's preferred format)
- [ ] Validates in [Google Rich Results Test](https://search.google.com/test/rich-results)
- [ ] Validates in [Schema.org Validator](https://validator.schema.org/)
- [ ] No errors or warnings in Google Search Console structured data reports
- [ ] See [templates/schema/](../templates/schema/) for ready-to-use templates

## Server & Infrastructure

- [ ] Server returns correct HTTP status codes (200, 301, 404, etc.)
- [ ] Custom 404 page exists and is helpful
- [ ] No server errors (5xx) on important pages
- [ ] DNS resolution is fast
- [ ] Uptime monitoring in place

---

## Tools for Technical SEO Audit

| Tool | Purpose | Cost |
|------|---------|------|
| Google Search Console | Crawl errors, indexing, performance | Free |
| Google PageSpeed Insights | Core Web Vitals, performance | Free |
| Bing Webmaster Tools | Indexing, crawl data | Free |
| Screaming Frog | Full site crawl, broken links, redirects | Free (500 URLs) / Paid |
| Ahrefs Site Audit | Comprehensive technical audit | Paid |
| GTmetrix | Performance testing | Free / Paid |
| SSL Labs | SSL certificate testing | Free |
