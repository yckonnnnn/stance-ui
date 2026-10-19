#!/bin/sh

set -eu

SKILL_DIR=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

echo "Checking: $SKILL_DIR"

for file in SKILL.md agents/openai.yaml; do
  if [ ! -f "$SKILL_DIR/$file" ]; then
    echo "Missing: $file"
    exit 1
  fi
done

if ! head -n 1 "$SKILL_DIR/SKILL.md" | grep -q '^---$'; then
  echo "SKILL.md is missing YAML frontmatter"
  exit 1
fi

if ! grep -q '^name: stance-ui$' "$SKILL_DIR/SKILL.md"; then
  echo "SKILL.md has the wrong skill name"
  exit 1
fi

echo "Install looks valid."
echo "Open a new agent session and ask: Use stance-ui to redesign this page."
