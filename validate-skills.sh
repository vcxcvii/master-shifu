#!/usr/bin/env bash
# Validates all SKILL.md files for OKF compliance
set -euo pipefail

errors=0
skills_dir="$(dirname "$0")/skills"

echo "Validating Master Shifu skills..."
echo ""

for skill in "$skills_dir"/*/; do
    name=$(basename "$skill")
    file="$skill/SKILL.md"
    
    if [ ! -f "$file" ]; then
        echo "  ✗ $name: missing SKILL.md"
        errors=$((errors + 1))
        continue
    fi
    
    # Check frontmatter
    if ! head -1 "$file" | grep -q "^---$"; then
        echo "  ✗ $name: missing opening --- (YAML frontmatter)"
        errors=$((errors + 1))
        continue
    fi
    
    # Check type field
    if ! grep -q "^type:" "$file"; then
        echo "  ✗ $name: missing 'type:' in frontmatter"
        errors=$((errors + 1))
        continue
    fi
    
    # Check description
    if ! grep -q "^description:" "$file"; then
        echo "  ✗ $name: missing 'description:' in frontmatter"
        errors=$((errors + 1))
        continue
    fi
    
    # Check tags
    if ! grep -q "^tags:" "$file"; then
        echo "  ✗ $name: missing 'tags:' in frontmatter"
        errors=$((errors + 1))
        continue
    fi
    
    echo "  ✓ $name"
done

echo ""
if [ "$errors" -eq 0 ]; then
    echo "All skills valid! ✓"
else
    echo "$errors skill(s) have errors ✗"
    exit 1
fi
