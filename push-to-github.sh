#!/bin/bash
# Run this once to create the GitHub repo and push
# Requires: gh CLI authenticated

set -e

REPO_NAME="cosmic-drift"
GITHUB_USER="AjkurianAssistant"

echo "Creating public GitHub repo: $REPO_NAME"
gh repo create "$REPO_NAME" --public --description "An interactive particle universe — HTML5 Canvas with touch support" --source=. --remote=origin --push

echo ""
echo "Done! Your site is live at:"
echo "https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "To enable GitHub Pages, run:"
echo "  gh api repos/$GITHUB_USER/$REPO_NAME/pages -X POST -f source[branch]=main -f source[path]=/"
