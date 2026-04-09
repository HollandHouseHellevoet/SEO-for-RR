# Deploy Directory — Production-Ready Files

Each subdirectory contains the files ready to upload to that domain. No placeholders, no templates — just copy and deploy.

## Per-Domain Contents

Each domain folder contains:

| File | Where to Deploy | How |
|------|----------------|-----|
| `robots.txt` | Domain root (`/robots.txt`) | Upload via FTP/cPanel, or paste into CMS robots.txt editor |
| `llms.txt` | Domain root (`/llms.txt`) | Upload via FTP/cPanel to web root |
| `schema-bundle.html` | Paste `<script>` tags into `<head>` | Copy each JSON-LD block into your theme/template header |
| `meta-tags-homepage.html` | Replace meta tags in homepage `<head>` | Update your theme template or CMS SEO settings |
| `about-page-content.html` | Create/update About page | Copy HTML content into your About page editor |
| `network-nav.html` | Add to header or footer of all pages | Paste into your theme footer template |

## Deployment Order

1. **robots.txt** — Upload to all 5 domains first (immediate AI crawler access)
2. **llms.txt** — Upload to all 5 domains (AI site comprehension)
3. **schema-bundle.html** — Add JSON-LD to `<head>` on all domains (entity recognition)
4. **meta-tags-homepage.html** — Update homepage meta tags (search appearance)
5. **about-page-content.html** — Create/update About pages (entity authority)
6. **network-nav.html** — Add cross-domain navigation (hub-and-spoke linking)

## Before Deploying

Replace these values in schema-bundle.html files:
- Image URLs (headshot, logo, OG images) — update with actual image paths
- Social profile URLs — add actual LinkedIn, Twitter/X URLs to `sameAs` arrays

## After Deploying

1. Verify robots.txt: visit `https://[domain]/robots.txt`
2. Verify llms.txt: visit `https://[domain]/llms.txt`
3. Validate schema: paste URL into [Google Rich Results Test](https://search.google.com/test/rich-results)
4. Test social sharing: paste URL into [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/)
