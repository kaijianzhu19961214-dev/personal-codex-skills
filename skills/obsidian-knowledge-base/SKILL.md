---
name: obsidian-knowledge-base
description: Personal Obsidian knowledge base workflow for creating, updating, organizing, and linking Markdown notes in the user's Obsidian vault. Use when the user asks to save research, summarize content into Obsidian, create second-brain notes, capture project decisions, maintain MOCs, write literature/permanent/project notes, add YAML frontmatter, tag notes, link related notes, or bootstrap the Obsidian vault at /Users/zhukaijian/Documents/Obsidian Vault.
---

# Obsidian Knowledge Base

Use this skill to turn research, summaries, project decisions, and technical notes into durable Obsidian Markdown notes. Default Vault:

```text
/Users/zhukaijian/Documents/Obsidian Vault
```

中文说明：这是用户个人 Obsidian 知识库工作流。它负责把网页、PDF、长文总结、会议纪要、代码 session、项目决策等内容入库，形成可检索、可链接、可持续维护的 Markdown 笔记系统。

## Core Principles

- Chinese-first. Preserve English for code identifiers, API names, titles, and exact source names.
- Preserve sources: URL, file path, author, date, access time, related project, and conversion/summarization route.
- Write notes as Markdown files inside the Vault. Do not paste large note bodies into chat unless the user asks.
- Prefer incremental updates over duplicating notes. Search before creating.
- Keep facts, inference, action items, and open questions separated.
- Use wiki links for durable internal references: `[[note-title]]`.
- Use tags sparingly and consistently; prefer links and MOCs for structure.
- Never store secrets, API keys, private tokens, or credentials in Obsidian notes.

## Folder System

Use the Vault structure defined in `references/vault-structure.md`.

Default folders:

```text
00_Inbox/
10_Projects/
20_Areas/
30_Resources/
40_Permanent/
50_MOCs/
60_Daily/
90_Archive/
99_Templates/
attachments/
```

## Workflow

1. Identify note type:
   - inbox capture
   - literature/source note
   - permanent note
   - project note
   - meeting note
   - code session handoff
   - MOC/index note
   - daily note
2. Read `references/note-types.md` for the correct template and destination.
3. If source material is external or long:
   - use `markdown-converter` for conversion
   - use `content-summarizer` for summary
   - then create the Obsidian note from the distilled result
4. Search the Vault for an existing related note before writing:
   - title keywords
   - source URL
   - project name
   - aliases
5. Create or update a Markdown note with YAML frontmatter.
6. Add links to relevant MOC/project notes where useful.
7. Report changed file paths and any follow-up needed.

## Required Frontmatter

Every created note should include YAML frontmatter unless the user explicitly asks for plain Markdown.

```yaml
---
title: ""
type: inbox|literature|permanent|project|meeting|code-session|moc|daily
status: seed|draft|active|evergreen|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
source:
  - ""
tags:
  - ""
---
```

Use `aliases`, `project`, `area`, `related`, `confidence`, `review_after`, or `cssclasses` only when useful.

## Writing Rules

- Start with a short `## Summary` or `## TL;DR`.
- For source notes, include `## Key Points`, `## Evidence`, `## Quotes` only when useful, and `## My Notes`.
- For permanent notes, write one durable idea per note.
- For project notes, include status, decisions, next actions, and related files/repos.
- For meeting notes, include decisions, action items, owners, deadlines, and open questions.
- For code session notes, include repo, branch, changed files, tests, blockers, and next commands.

## Bootstrapping

When the user asks to initialize, repair, or standardize the Vault, run or adapt:

```bash
skills/obsidian-knowledge-base/scripts/bootstrap_vault.sh "/Users/zhukaijian/Documents/Obsidian Vault"
```

This creates folders and template Markdown files without overwriting existing files.

## Resource Routing

- Folder conventions: `references/vault-structure.md`
- Note type rules and templates: `references/note-types.md`
- Tag and link conventions: `references/linking-and-tags.md`
- Vault bootstrap script: `scripts/bootstrap_vault.sh`
- Template source files: `assets/templates/`
