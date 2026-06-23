#!/usr/bin/env bash
set -euo pipefail

vault="${1:-/Users/zhukaijian/Documents/Obsidian Vault}"
skill_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
template_dir="$skill_dir/assets/templates"

mkdir -p "$vault"/{00_Inbox,10_Projects,20_Areas,30_Resources,40_Permanent,50_MOCs,60_Daily,90_Archive,99_Templates,attachments}

copy_template() {
  local source="$1"
  local target="$2"
  if [ ! -f "$target" ]; then
    cp "$source" "$target"
  fi
}

copy_template "$template_dir/inbox-note.md" "$vault/99_Templates/inbox-note.md"
copy_template "$template_dir/literature-note.md" "$vault/99_Templates/literature-note.md"
copy_template "$template_dir/permanent-note.md" "$vault/99_Templates/permanent-note.md"
copy_template "$template_dir/project-note.md" "$vault/99_Templates/project-note.md"
copy_template "$template_dir/meeting-note.md" "$vault/99_Templates/meeting-note.md"
copy_template "$template_dir/code-session-note.md" "$vault/99_Templates/code-session-note.md"
copy_template "$template_dir/moc-note.md" "$vault/99_Templates/moc-note.md"
copy_template "$template_dir/daily-note.md" "$vault/99_Templates/daily-note.md"

if [ ! -f "$vault/50_MOCs/Home.md" ]; then
  cat > "$vault/50_MOCs/Home.md" <<'EOF'
---
title: "Home"
type: moc
status: active
created: "2026-06-23"
updated: "2026-06-23"
source: []
tags:
  - type/moc
  - status/active
---

# Home

## Core Areas

- [[AI Tools MOC]]
- [[Python FastAPI MOC]]
- [[Quant Research MOC]]

## Inbox

- [[../00_Inbox]]

## Projects

EOF
fi

for moc in "AI Tools MOC" "Python FastAPI MOC" "Quant Research MOC"; do
  path="$vault/50_MOCs/$moc.md"
  if [ ! -f "$path" ]; then
    cat > "$path" <<EOF
---
title: "$moc"
type: moc
status: active
created: "2026-06-23"
updated: "2026-06-23"
source: []
tags:
  - type/moc
  - status/active
---

# $moc

## Overview


## Core Notes


## Projects


## Resources


## Open Questions

EOF
  fi
done

printf 'Bootstrapped Obsidian vault: %s\n' "$vault"
