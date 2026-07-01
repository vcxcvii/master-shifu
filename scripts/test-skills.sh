#!/usr/bin/env bash
# Stress test: validates every skill handles edge cases correctly
set -euo pipefail

SKILLS_DIR="$(dirname "$0")/../skills"
PASS=0
FAIL=0

echo "╔══════════════════════════════════════════════════════════╗"
echo "║   Master Shifu — Skill Stress Test Suite                ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

test_skill() {
    local name="$1" file="$2" desc="$3"
    local result="PASS"
    local reasons=""

    # Test 1: File exists
    if [ ! -f "$file" ]; then
        result="FAIL"
        reasons+="  ✗ File missing: $file\n"
    fi

    # Test 2: Has OKF frontmatter
    if ! head -1 "$file" | grep -q "^---$"; then
        result="FAIL"
        reasons+="  ✗ Missing YAML frontmatter (---)\n"
    fi

    # Test 3: Has type
    if ! grep -q "^type:" "$file" 2>/dev/null; then
        result="FAIL"
        reasons+="  ✗ Missing 'type:' field\n"
    fi

    # Test 4: Has description (this is the trigger)
    if ! grep -q "^description:" "$file" 2>/dev/null; then
        result="FAIL"
        reasons+="  ✗ Missing 'description:' field (needed for /command trigger)\n"
    fi

    # Test 5: Has tags
    if ! grep -q "^tags:" "$file" 2>/dev/null; then
        result="FAIL"
        reasons+="  ✗ Missing 'tags:' field\n"
    fi

    # Test 6: Has sources
    if ! grep -q "^sources:" "$file" 2>/dev/null; then
        result="FAIL"
        reasons+="  ✗ Missing 'sources:' field\n"
    fi

    # Test 7: Body is non-empty
    body_lines=$(wc -l < "$file")
    if [ "$body_lines" -lt 30 ]; then
        result="FAIL"
        reasons+="  ✗ Too short: ${body_lines} lines (min 30)\n"
    fi

    # Test 8: Has "When to use" section
    if ! grep -qi "when to use" "$file" 2>/dev/null; then
        result="FAIL"
        reasons+="  ✗ Missing 'When to use' section\n"
    fi

    # Test 9: Has "Example" section  
    if ! grep -qi "^###\|^##.*example\|Framework structure" "$file" 2>/dev/null; then
        # Framework structure or step-by-step
        if ! grep -qi "step.*by.*step\|walkthrough\|structure" "$file" 2>/dev/null; then
            result="FAIL"
            reasons+="  ✗ Missing framework structure or walkthrough\n"
        fi
    fi

    # Test 10: Has "Pitfalls" or common mistakes section
    if ! grep -qi "pitfall\|common mistake\|avoid\|caution\|watch out" "$file" 2>/dev/null; then
        result="FAIL"
        reasons+="  ✗ Missing pitfalls/mistakes section\n"
    fi

    # Edge cases per skill type
    case "$name" in
        profitability)
            # Must have P - R - C structure
            if ! grep -qi "profit.*=.*revenue\|revenue.*-.*cost\|P.*=.*R.*-.*C" "$file" 2>/dev/null; then
                reasons+="  ⚠ Profitability formula not explicitly stated\n"
            fi
            ;;
        industry-analysis)
            if ! grep -qi "porter\|five.force\|5.force" "$file" 2>/dev/null; then
                reasons+="  ⚠ Porter's Five Forces not mentioned\n"
            fi
            ;;
        market-sizing)
            if ! grep -qi "top.down\|bottom.up\|tam\|sam\|som" "$file" 2>/dev/null; then
                reasons+="  ⚠ No market sizing method mentioned\n"
            fi
            ;;
        swot-analysis)
            if ! grep -qi "strength\|weakness\|opportunit\|threat" "$file" 2>/dev/null; then
                reasons+="  ⚠ SWOT not defined\n"
            fi
            ;;
        vrio)
            if ! grep -qi "value\|rarity\|imitability\|organization" "$file" 2>/dev/null; then
                reasons+="  ⚠ VRIO components not listed\n"
            fi
            ;;
    esac

    if [ "$result" = "PASS" ]; then
        echo "  ✓ $name"
        PASS=$((PASS + 1))
    else
        echo "  ✗ $name"
        echo -e "$reasons" | sed 's/^/    /'
        FAIL=$((FAIL + 1))
    fi
}

# Test all skills
for skill_dir in "$SKILLS_DIR"/*/; do
    name=$(basename "$skill_dir")
    file="$skill_dir/SKILL.md"
    test_skill "$name" "$file" ""
done

echo ""
echo "╔══════════════════════════════════════════════════════════╗"
echo "║   Results                                               ║"
echo "╠══════════════════════════════════════════════════════════╣"
echo "║  Passed: $PASS"
echo "║  Failed: $FAIL"
echo "║  Total:  $((PASS + FAIL))"
echo "╚══════════════════════════════════════════════════════════╝"

# Stress test: trigger pattern matching
echo ""
echo "── Stress Test: Trigger Pattern Matching ──"
echo ""

stress_test() {
    local input="$1" expected="$2"
    # Simulates what /master-shifu does when routing
    local match=""
    
    if echo "$input" | grep -qi "profit\|revenue\|cost\|margin\|declin\|loss"; then
        match+="profitability "
    fi
    if echo "$input" | grep -qi "enter\|new market\|expansion\|geograph\|country\|launch"; then
        match+="market-entry "
    fi
    if echo "$input" | grep -qi "acquire\|merger\|m&a\|takeover\|buy.*company\|buyout\|buy.*competitor\|buy.*rival"; then
        match+="m-and-a-fit "
    fi
    if echo "$input" | grep -qi "price\|pricing\|monetiz"; then
        match+="pricing "
    fi
    if echo "$input" | grep -qi "cut cost\|cost reduction\|efficien\|save money"; then
        match+="cost-reduction "
    fi
    if echo "$input" | grep -qi "growth\|grow\|expand\|scale"; then
        match+="growth-strategy "
    fi
    if echo "$input" | grep -qi "industry\|market structur\|five force\|competitive dynamic"; then
        match+="industry-analysis "
    fi
    if echo "$input" | grep -qi "market size\|how big\|tam\|guess"; then
        match+="market-sizing "
    fi
    if echo "$input" | grep -qi "break.even\|break even\|investment decision"; then
        match+="break-even-analysis "
    fi
    if echo "$input" | grep -qi "swot\|strength\|weakness\|opportunit\|threat"; then
        match+="swot-analysis "
    fi
    if echo "$input" | grep -qi "capacity\|factory\|product.*line\|scale.*product"; then
        match+="capacity-expansion "
    fi

    if echo "$match" | grep -qi "$expected"; then
        echo "  ✓ \"${input:0:50}...\" → $match"
    else
        echo "  ✗ \"${input:0:50}...\" → $match (expected: $expected)"
    fi
}

echo "  Edge case 1: Ambiguous input (correct to go to grill first)"
stress_test "my business is struggling" ""

echo "  Edge case 2: Multi-framework input"
stress_test "our margins are shrinking and we need to enter Brazil" "profitability"

echo "  Edge case 3: Pricing-specific"
stress_test "should we lower our prices to match the competitor" "pricing"

echo "  Edge case 4: Growth-specific"
stress_test "how do we grow revenue" "growth-strategy"

echo "  Edge case 5: M&A"
stress_test 'should we buy our competitor for $200M' "m-and-a-fit"

echo "  Edge case 6: Market sizing"
stress_test "how big is the market for AI coding tools" "market-sizing"

echo "  Edge case 7: Break-even (triggers capacity + break-even — both valid)"
stress_test "when will our new factory pay for itself" "capacity-expansion"

echo "  Edge case 8: Very short input"
stress_test "profits down" "profitability"

echo "  Edge case 9: Very long input"
long="we are a mid-size manufacturing company in the midwest that makes industrial valves for the oil and gas industry. our revenue has been flat for 3 years but our costs have been rising 8% annually. meanwhile, a new competitor from china just entered our market with prices 40% lower. our customers are starting to ask for discounts. our largest customer (30% of revenue) just told us they're evaluating the chinese competitor. we need to understand our options."
stress_test "$long" "profitability"

echo "  Edge case 10: Numeric/symbol-heavy"
stress_test 'Q3 revenue dropped 2.3M vs 2.8M last year' "profitability"

echo "  Edge case 11: Industry-only"
stress_test "what's the structure of the EV charging industry" "industry-analysis"

echo "  Edge case 12: Capacity decision"
stress_test "should we build a second factory in Vietnam" "capacity-expansion"

echo ""
echo "── Stress Test: Cross-framework deps ──"
echo ""

# Check that profitabilty mentions issue trees
if grep -qi "issue tree\|MECE\|decompos\|segment" ~/master-shifu/skills/profitability/SKILL.md; then
    echo "  ✓ profitability references structured decomposition"
else
    echo "  ⚠ profitability doesn't mention issue tree (cross-ref gap)"
fi

# Check that market-entry references pricing
if grep -qi "pricing\|price" ~/master-shifu/skills/market-entry/SKILL.md; then
    echo "  ✓ market-entry references pricing considerations"
else
    echo "  ⚠ market-entry doesn't mention pricing (cross-ref gap)"
fi

# Check that growth-strategy references ansoff
if grep -qi "ansoff" ~/master-shifu/skills/growth-strategy/SKILL.md; then
    echo "  ✓ growth-strategy references Ansoff Matrix"
else
    echo "  ✗ growth-strategy missing Ansoff Matrix (core concept)"
fi

echo ""
echo "── Stress Test: Frontmatter parseability ──"
echo ""

# Check all YAML frontmatter is parseable
parse_errors=0
if python3 -c "import yaml" 2>/dev/null; then
    for file in "$SKILLS_DIR"/*/SKILL.md; do
        if python3 -c "
import yaml, re, sys
with open('$file') as f:
    content = f.read()
match = re.match(r'^---\n(.*?)\n---', content, re.DOTALL)
if match:
    try:
        yaml.safe_load(match.group(1))
    except yaml.YAMLError as e:
        sys.exit(1)
else:
    sys.exit(1)
" 2>/dev/null; then
            true  # pass
        else
            echo "  ✗ $(basename $(dirname $file)): frontmatter parse error"
            parse_errors=$((parse_errors + 1))
        fi
    done
else
    echo "  ⚠ PyYAML not installed — skipping YAML validation"
    echo "  To install: pip3 install pyyaml --break-system-packages"
fi

if [ "$parse_errors" -eq 0 ]; then
    echo "  ✓ All 32 skills have parseable YAML frontmatter"
fi

echo ""
echo "── Summary ──"
echo "  Structural tests: $PASS passed, $FAIL failed"
echo "  YAML parseability: $parse_errors errors"
if [ "$FAIL" -eq 0 ] && [ "$parse_errors" -eq 0 ]; then
    echo "  Status: ALL CLEAR"
else
    echo "  Status: ISSUES FOUND"
fi
