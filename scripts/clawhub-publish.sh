#!/usr/bin/env bash
# Publish aiusd-core skill to ClawHub
# Usage: bash scripts/clawhub-publish.sh
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VERSION=$(node -p "require('$ROOT/package.json').version")
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

# Copy SKILL.md and skill guide files
cp "$ROOT/SKILL.md" "$TMPDIR/SKILL.md"
cp -r "$ROOT/skills" "$TMPDIR/skills"

echo "Publishing aiusd-core v${VERSION} to ClawHub..."
clawhub publish "$TMPDIR" \
  --slug aiusd-core \
  --name "AIUSD Core" \
  --version "$VERSION" \
  --tags latest

echo "Done."
