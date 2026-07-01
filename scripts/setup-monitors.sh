#!/usr/bin/env bash
# Interactive setup for web monitors
# Runs once after install to help user configure URLs to watch

set -euo pipefail

MONITORS_DIR="$(dirname "$0")/../agent/monitors"

echo "==> Master Shifu — Web Monitor Setup"
echo ""
echo "Monitors watch competitor pricing, industry news, and filings."
echo "When changes are detected, your next session is pre-loaded with context."
echo ""

for yaml in "$MONITORS_DIR"/*.yaml; do
    lens=$(basename "$yaml" .yaml)
    echo "--- $lens monitors ---"
    
    # Parse existing monitors
    names=($(grep -A1 "name:" "$yaml" | grep "name:" | awk '{print $2}'))
    goals=($(grep -A1 "goal:" "$yaml" | grep "goal:" | cut -d'"' -f2))
    
    for i in "${!names[@]}"; do
        name="${names[$i]}"
        goal="${goals[$i]:-$name}"
        
        echo ""
        echo "  Monitor: $name"
        echo "  Goal: $goal"
        echo "  Current URLs: $(grep -A5 "name: $name" "$yaml" | grep "urls:" | cut -d'[' -f2 | cut -d']' -f1 || echo "none")"
        read -p "  Add URL to watch (or press Enter to skip): " url
        if [ -n "$url" ]; then
            # Use sed to add URL to the urls list
            sed -i '' "/name: $name/,/goal:/s|urls: \[\]|urls:\n      - $url|" "$yaml"
            echo "  ✓ Added $url"
        fi
    done
    echo ""
done

echo "==> Setup complete!"
echo "Push to GitHub to enable the scheduled workflow:"
echo "  git push origin main"
echo ""
echo "Monitors run every 6 hours via GitHub Actions (free)."
