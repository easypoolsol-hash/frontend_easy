#!/bin/bash
# Setup script to install git hooks for this repository

HOOKS_DIR=".github/hooks"
GIT_HOOKS_DIR=".git/hooks"

echo "🔧 Installing git hooks..."
echo ""

# Method 1: Configure git to use our custom hooks directory (recommended)
echo "Setting up git hooks path..."
git config core.hooksPath "$HOOKS_DIR"

# Make hooks executable
chmod +x "$HOOKS_DIR/pre-commit"

echo ""
echo "✅ Git hooks installed successfully!"
echo ""
echo "📋 Installed hooks:"
echo "   - pre-commit: Prevents direct commits to master/main"
echo ""
echo "🔒 Branch protection is now active."
echo "   All commits to master/main will be blocked."
echo "   Use 'develop' branch for all changes."
echo ""
echo "To disable hooks (not recommended):"
echo "   git config --unset core.hooksPath"
echo ""
