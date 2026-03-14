#!/bin/bash

# Codex: The Agency — Install Script
# Copies all skills to your Codex project

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="$SCRIPT_DIR/skills"

echo ""
echo "🎬 Codex: The Agency"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if a target project was specified
if [ -n "$1" ]; then
  TARGET_DIR="$1"
  echo "Installing skills to: $TARGET_DIR"
else
  TARGET_DIR="$(pwd)"
  echo "Installing skills to current directory: $TARGET_DIR"
fi

# Create skills directory in target project
INSTALL_PATH="$TARGET_DIR/skills"
mkdir -p "$INSTALL_PATH"

# Copy all skills
SKILL_COUNT=0
for category_dir in "$SKILLS_DIR"/*/; do
  category=$(basename "$category_dir")
  mkdir -p "$INSTALL_PATH/$category"

  for skill_dir in "$category_dir"*/; do
    if [ -d "$skill_dir" ]; then
      skill=$(basename "$skill_dir")
      cp -r "${skill_dir%/}" "$INSTALL_PATH/$category/"
      echo "  ✅ $category/$skill"
      SKILL_COUNT=$((SKILL_COUNT + 1))
    fi
  done
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ $SKILL_COUNT skills installed to $INSTALL_PATH"
echo ""
echo "📋 Next steps:"
echo ""
echo "  1. Copy an AGENTS.md template to your project root:"
echo "     cp agents-md/mobile-app.md YourProject/AGENTS.md"
echo "     cp agents-md/saas-startup.md YourProject/AGENTS.md"
echo ""
echo "  2. Open your project in Codex and start a thread:"
echo "     \$mobile-app-builder Add push notifications to my Expo app"
echo "     \$growth-hacker Build a referral system with unique codes"
echo "     \$reddit-community-builder Write a launch post for r/entrepreneur"
echo ""
echo "🎬 The Agency is ready. Ship something."
echo ""
