#!/bin/sh

set -eu

SKILL_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

echo "Checking: $SKILL_DIR"

for file in SKILL.md agents/openai.yaml references/web-pages.md references/mobile-apps.md references/style-diversity.md references/quality-floor.md assets/direction-board.html; do
  if [ ! -f "$SKILL_DIR/$file" ]; then
    echo "Missing: $file"
    exit 1
  fi
done

if ! head -n 1 "$SKILL_DIR/SKILL.md" | grep -q '^---$'; then
  echo "SKILL.md is missing YAML frontmatter"
  exit 1
fi

if ! grep -q '^name: zack-ui$' "$SKILL_DIR/SKILL.md"; then
  echo "SKILL.md has the wrong skill name"
  exit 1
fi

for resource in $(grep -oE '(references|assets)/[A-Za-z0-9._/-]+' "$SKILL_DIR/SKILL.md" | sort -u); do
  if [ ! -e "$SKILL_DIR/$resource" ]; then
    echo "Missing referenced resource: $resource"
    exit 1
  fi
done

echo "Install looks valid."
echo "Open a new agent session and ask: Use zack-ui to redesign this page."
