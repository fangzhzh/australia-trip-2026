#!/bin/bash
# Encrypt raw/ HTML files → root level for GitHub Pages
# Usage: ./build.sh [password]
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
PASSWORD="${1:-180816}"
SALT="713ab0dfc0629bf6bc09bb743037482b"

npx staticrypt "$DIR"/raw/*.html -p "$PASSWORD" --salt "$SALT" -d "$DIR" \
  --short \
  --template-title "🇦🇺 澳洲亲子游" \
  --template-instructions "" \
  --template-button "进入 →" \
  --remember 0

echo "✅ All files encrypted. Ready to commit & push."
