# Skill Priority Rules

## Practical Mapping

This repository intentionally mirrors the global/workspace priority idea used by other agent systems, but adapts it to Codex:

| Layer | Local path | Role | Edit policy |
|---|---|---|---|
| System | `~/.codex/skills/.system` | Built-in installer, creator, OpenAI docs, image generation | Do not edit |
| User-installed | `~/.codex/skills` | Runtime discovery location | Usually symlinks or installed copies |
| Personal canonical | `/Users/zhukaijian/Desktop/Codex/Skills/skills` | Main source-controlled personal skill library | Edit here |
| Project-local | `AGENTS.md` in a project | Project coding style, tests, local conventions | Edit per project |
| Vendor cache | `vendor/` or downloaded repos | Reference copy of external tools | Do not customize in place unless vendoring is intentional |

## Recommended Pattern

Use this pattern for third-party skills:

1. Install or inspect the upstream skill.
2. Vet it with `skill-vetter`.
3. Add Chinese notes with `skill-chinese-notes` if it will be kept.
4. If the skill should behave differently, create a personal wrapper skill instead of rewriting the upstream copy.
5. Link the personal skill into `~/.codex/skills`.

## Naming Guidance

- Use clear names that describe the durable job: `content-summarizer`, `python-code-review`, `obsidian-pkm-workflows`.
- Avoid vague one-word names unless the upstream ecosystem already makes them standard.
- For experimental skills, prefer a prefix such as `experimental-` until the workflow proves useful.
- For tool-specific skills, use a prefix such as `gh-`, `fastapi-`, `obsidian-`, or `context7-`.

## Duplicate Handling

If a duplicate skill name appears:

1. Inspect both `SKILL.md` files.
2. Keep the canonical personal version under this repository.
3. Rename or remove the less useful duplicate.
4. Do not rely on ambiguous discovery order.

The goal is not to force Codex to guess priority from filesystem order. The goal is to make trigger metadata precise enough that the right skill is obvious.
