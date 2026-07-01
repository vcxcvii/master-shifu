#!/usr/bin/env bash
set -euo pipefail

REPO="https://github.com/vcxcvii/master-shifu.git"
INSTALL_DIR="${HOME}/.agents/skills/master-shifu"
CLAUDE_DIR="${HOME}/.claude/skills/master-shifu"

echo "==> Installing Master Shifu — Consulting Framework Skills for AI Agents"

# Clone or update
if [ -d "$INSTALL_DIR" ]; then
    echo "  → Updating existing installation at $INSTALL_DIR"
    cd "$INSTALL_DIR" && git pull
else
    echo "  → Cloning to $INSTALL_DIR"
    git clone "$REPO" "$INSTALL_DIR"
fi

# Claude Code compatibility symlink
if [ -d "$HOME/.claude/skills" ]; then
    echo "  → Symlinking for Claude Code..."
    ln -sf "$INSTALL_DIR" "$CLAUDE_DIR"
fi

# Install Scrapling (optional, for lens scraping)
if command -v pip3 &>/dev/null; then
    echo "  → Installing Scrapling for web scraping support..."
    pip3 install "scrapling[fetchers]" 2>/dev/null || echo "  ⚠  Scrapling install skipped (run 'pip3 install scrapling[fetchers]' manually)"
fi

# Install sec-edgar-api (optional, for financial lens)
if command -v pip3 &>/dev/null; then
    echo "  → Installing sec-edgar-api for SEC filing access..."
    pip3 install sec-edgar-api 2>/dev/null || true
fi

echo ""
echo "==> Master Shifu installed!"
echo ""
echo "  Skills available:"
echo "    ls $INSTALL_DIR/skills/"
echo ""
echo "  To use in Claude Code / Codex:"
echo "    Add to your CLAUDE.md or AGENTS.md:"
echo '    "Always load skills from .agents/skills/master-shifu/"'
echo ""
echo "  Quick test:"
echo "    /master-shifu"
echo ""
echo "  Scraping (optional):"
echo "    scrapling extract get https://example.com /tmp/page.md"
echo ""
