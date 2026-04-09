#!/bin/bash
# ============================================================
# Rojas Report Network — SEO Patch Deployer
# Run from any directory. Clones, patches, commits, pushes.
# Requires: git configured with GitHub access
# ============================================================

set -e

WORKDIR="$HOME/rojas-seo-deploy"
mkdir -p "$WORKDIR"
cd "$WORKDIR"

echo "============================================"
echo "  Rojas Report SEO Patch Deployer"
echo "============================================"
echo ""

# --- AHA ---
echo "[1/4] AHA.rojasreport.com"
if [ -d "AmericanHospitalAssociation" ]; then
  cd AmericanHospitalAssociation && git pull
else
  git clone https://github.com/HollandHouseHellevoet/AmericanHospitalAssociation.git
  cd AmericanHospitalAssociation
fi

# Fix OG image
cp "aha-site/public/AHA OG Image.png" "aha-site/public/og-image.png" 2>/dev/null || true

# Apply patch
git apply --check ../patches/aha-seo-patch.diff 2>/dev/null && \
  git apply ../patches/aha-seo-patch.diff && \
  echo "  ✓ Patch applied" || echo "  → Patch already applied or conflict — skipping"

git add .
git diff --cached --quiet || git commit -m "SEO: add llms.txt, full AI bot coverage, schema markup"
git push
echo "  ✓ AHA pushed"
cd "$WORKDIR"
echo ""

# --- FAH ---
echo "[2/4] FAH.rojasreport.com"
if [ -d "FAH-Rojas-Report" ]; then
  cd FAH-Rojas-Report && git pull
else
  git clone https://github.com/HollandHouseHellevoet/FAH-Rojas-Report.git
  cd FAH-Rojas-Report
fi

git apply --check ../patches/fah-seo-patch.diff 2>/dev/null && \
  git apply ../patches/fah-seo-patch.diff && \
  echo "  ✓ Patch applied" || echo "  → Patch already applied or conflict — skipping"

git add .
git diff --cached --quiet || git commit -m "SEO: add llms.txt, missing AI search bots"
git push
echo "  ✓ FAH pushed"
cd "$WORKDIR"
echo ""

# --- Academic ---
echo "[3/4] Academic.rojasreport.com"
if [ -d "AiandAmc" ]; then
  cd AiandAmc && git checkout main && git pull
else
  git clone https://github.com/HollandHouseHellevoet/AiandAmc.git
  cd AiandAmc
  git checkout main
fi

git apply --check ../patches/academic-seo-patch.diff 2>/dev/null && \
  git apply ../patches/academic-seo-patch.diff && \
  echo "  ✓ Patch applied" || echo "  → Patch already applied or conflict — skipping"

git add .
git diff --cached --quiet || git commit -m "SEO: add llms.txt, missing AI search bots"
git push
echo "  ✓ Academic pushed"
cd "$WORKDIR"
echo ""

# --- POH ---
echo "[4/4] POH.rojasreport.com"
if [ -d "Physician-Owned-Hospitals-" ]; then
  cd Physician-Owned-Hospitals- && git pull
else
  git clone https://github.com/HollandHouseHellevoet/Physician-Owned-Hospitals-.git
  cd Physician-Owned-Hospitals-
fi

git apply --check ../patches/poh-seo-patch.diff 2>/dev/null && \
  git apply ../patches/poh-seo-patch.diff && \
  echo "  ✓ Patch applied" || echo "  → Patch already applied or conflict — skipping"

git add .
git diff --cached --quiet || git commit -m "SEO: add llms.txt, AI bots, schema markup"
git push
echo "  ✓ POH pushed"
cd "$WORKDIR"
echo ""

echo "============================================"
echo "  All 4 sites patched and pushed."
echo "  Netlify/GitHub Pages will auto-deploy."
echo "============================================"
echo ""
echo "MANUAL TODO:"
echo "  1. Verify https://rojasreport.com/logo.png exists"
echo "  2. Create OG image for POH (1200x630px → poh-site/public/og-image.png)"
echo "  3. HAC + rojasreport.com root still need patches"
