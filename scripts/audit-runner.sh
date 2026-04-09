#!/bin/bash
#
# SEO Audit Runner — The Rojas Report Network
#
# Basic automated checks for all RojasReport domains.
# Checks HTTP status, robots.txt, sitemap.xml, llms.txt,
# SSL certificates, and key response headers.
#
# Usage: ./audit-runner.sh
#
# Requirements: curl, openssl
#

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Domains to audit
DOMAINS=(
  "rojasreport.com"
  "poh.rojasreport.com"
  "fah.rojasreport.com"
  "aha.rojasreport.com"
  "academic.rojasreport.com"
)

# Result counters
PASS=0
WARN=0
FAIL=0

# Utility functions
pass() {
  echo -e "  ${GREEN}[PASS]${NC} $1"
  ((PASS++))
}

warn() {
  echo -e "  ${YELLOW}[WARN]${NC} $1"
  ((WARN++))
}

fail() {
  echo -e "  ${RED}[FAIL]${NC} $1"
  ((FAIL++))
}

info() {
  echo -e "  ${BLUE}[INFO]${NC} $1"
}

header() {
  echo ""
  echo -e "${BLUE}========================================${NC}"
  echo -e "${BLUE}  $1${NC}"
  echo -e "${BLUE}========================================${NC}"
}

subheader() {
  echo ""
  echo -e "  ${BLUE}--- $1 ---${NC}"
}

# Check if a URL is accessible and return HTTP status
check_url() {
  local url=$1
  local description=$2
  local status

  status=$(curl -s -o /dev/null -w "%{http_code}" -L --max-time 10 "$url" 2>/dev/null)

  if [ "$status" = "200" ]; then
    pass "$description (HTTP $status)"
    return 0
  elif [ "$status" = "301" ] || [ "$status" = "302" ]; then
    warn "$description — redirects (HTTP $status)"
    return 1
  elif [ "$status" = "000" ]; then
    fail "$description — connection failed"
    return 2
  else
    fail "$description (HTTP $status)"
    return 2
  fi
}

# Check SSL certificate
check_ssl() {
  local domain=$1
  local expiry

  expiry=$(echo | openssl s_client -servername "$domain" -connect "$domain:443" 2>/dev/null | openssl x509 -noout -enddate 2>/dev/null | cut -d= -f2)

  if [ -z "$expiry" ]; then
    fail "SSL certificate — could not connect"
    return
  fi

  local expiry_epoch
  expiry_epoch=$(date -d "$expiry" +%s 2>/dev/null || date -j -f "%b %d %T %Y %Z" "$expiry" +%s 2>/dev/null)
  local now_epoch
  now_epoch=$(date +%s)
  local days_left=$(( (expiry_epoch - now_epoch) / 86400 ))

  if [ "$days_left" -gt 30 ]; then
    pass "SSL certificate valid ($days_left days remaining, expires $expiry)"
  elif [ "$days_left" -gt 0 ]; then
    warn "SSL certificate expiring soon ($days_left days remaining)"
  else
    fail "SSL certificate EXPIRED ($expiry)"
  fi
}

# Check response headers
check_headers() {
  local url=$1
  local headers

  headers=$(curl -s -I -L --max-time 10 "$url" 2>/dev/null)

  if echo "$headers" | grep -qi "strict-transport-security"; then
    pass "HSTS header present"
  else
    warn "HSTS header missing"
  fi

  if echo "$headers" | grep -qi "x-content-type-options"; then
    pass "X-Content-Type-Options header present"
  else
    warn "X-Content-Type-Options header missing"
  fi

  if echo "$headers" | grep -qi "content-encoding.*\(gzip\|br\)"; then
    pass "Compression enabled"
  else
    warn "Compression not detected (gzip/brotli)"
  fi
}

# Check if robots.txt mentions AI bots
check_ai_bots() {
  local domain=$1
  local robots_content

  robots_content=$(curl -s -L --max-time 10 "https://$domain/robots.txt" 2>/dev/null)

  if [ -z "$robots_content" ]; then
    fail "robots.txt — could not fetch"
    return
  fi

  local bots=("ClaudeBot" "Claude-SearchBot" "GPTBot" "OAI-SearchBot" "ChatGPT-User" "PerplexityBot")
  local found=0

  for bot in "${bots[@]}"; do
    if echo "$robots_content" | grep -qi "$bot"; then
      ((found++))
    fi
  done

  if [ "$found" -eq "${#bots[@]}" ]; then
    pass "AI bots configured in robots.txt ($found/${#bots[@]} bots found)"
  elif [ "$found" -gt 0 ]; then
    warn "Some AI bots configured ($found/${#bots[@]})"
  else
    fail "No AI bot rules in robots.txt"
  fi
}

# Main audit
main() {
  echo ""
  echo -e "${BLUE}╔══════════════════════════════════════════════════╗${NC}"
  echo -e "${BLUE}║  SEO Audit Runner — The Rojas Report Network    ║${NC}"
  echo -e "${BLUE}║  $(date '+%Y-%m-%d %H:%M:%S')                            ║${NC}"
  echo -e "${BLUE}╚══════════════════════════════════════════════════╝${NC}"

  for domain in "${DOMAINS[@]}"; do
    header "$domain"

    subheader "Accessibility"
    check_url "https://$domain" "Homepage"
    check_url "http://$domain" "HTTP to HTTPS redirect"

    subheader "SSL Certificate"
    check_ssl "$domain"

    subheader "SEO Files"
    check_url "https://$domain/robots.txt" "robots.txt"
    check_url "https://$domain/sitemap.xml" "sitemap.xml"
    check_url "https://$domain/llms.txt" "llms.txt"

    subheader "AI Bot Configuration"
    check_ai_bots "$domain"

    subheader "Security Headers"
    check_headers "https://$domain"

  done

  # Summary
  echo ""
  echo -e "${BLUE}========================================${NC}"
  echo -e "${BLUE}  SUMMARY${NC}"
  echo -e "${BLUE}========================================${NC}"
  echo ""
  echo -e "  ${GREEN}PASS:${NC} $PASS"
  echo -e "  ${YELLOW}WARN:${NC} $WARN"
  echo -e "  ${RED}FAIL:${NC} $FAIL"
  echo -e "  TOTAL: $((PASS + WARN + FAIL))"
  echo ""

  if [ "$FAIL" -gt 0 ]; then
    echo -e "  ${RED}Action required: $FAIL items need attention.${NC}"
    exit 1
  elif [ "$WARN" -gt 0 ]; then
    echo -e "  ${YELLOW}$WARN warnings — review recommended.${NC}"
    exit 0
  else
    echo -e "  ${GREEN}All checks passed!${NC}"
    exit 0
  fi
}

main "$@"
