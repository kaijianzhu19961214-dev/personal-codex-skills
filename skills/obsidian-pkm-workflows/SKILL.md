---
name: obsidian-pkm-workflows
description: Personal Obsidian PKM maintenance workflows for inbox triage, connection review, weekly synthesis, note promotion, vault health feedback, and Codex session knowledge maintenance. Use when the user asks to organize Inbox notes, classify Obsidian notes, find note connections, create weekly knowledge synthesis, promote literature/inbox notes into permanent notes, diagnose vault structure, or maintain the user's Obsidian knowledge system at /Users/zhukaijian/Documents/Obsidian Vault.
---

# Obsidian PKM Workflows

Use this skill to maintain the user's Obsidian Vault as a living knowledge system. It complements `obsidian-knowledge-base`: that skill defines the Vault structure and note formats; this skill defines recurring workflows.

中文说明：这个 skill 负责 Obsidian 的持续维护流程，包括 inbox-triage、connection-review、weekly-synthesis、note-promotion 和 vault-health-feedback。目标不是多写笔记，而是让笔记不断被分类、链接、提炼和晋升。

Default Vault:

```text
/Users/zhukaijian/Documents/Obsidian Vault
```

## Core Rules

- Search before creating or moving notes.
- Preserve sources and creation dates.
- Do not delete notes unless the user explicitly asks.
- For bulk moves/edits, show a plan first and prefer small batches.
- Keep user-facing output concise: changed files, decisions, unresolved items.
- Follow folder and frontmatter conventions from `obsidian-knowledge-base`.

## Workflow Router

Use the user's request to choose one workflow:

- `inbox-triage`: sort raw notes from `00_Inbox/`.
- `connection-review`: find backlinks, related notes, and missing MOC links.
- `weekly-synthesis`: summarize a week of notes into durable insights and next actions.
- `note-promotion`: turn source/inbox/project notes into permanent notes.
- `vault-health-feedback`: diagnose stale, orphaned, duplicate, or under-linked notes.
- `context-maintenance`: compress Codex/project sessions into Obsidian handoff notes.

## Inbox Triage

Use when `00_Inbox/` has unsorted captures.

Steps:

1. List inbox notes.
2. Read titles/frontmatter/first sections.
3. Classify each note:
   - project
   - area
   - resource/literature
   - permanent candidate
   - daily/log
   - archive/delete candidate
4. Propose destination paths.
5. Ask before bulk moving if many files are affected.
6. Update frontmatter: `type`, `status`, `tags`, `updated`.
7. Add links to relevant MOCs.

Output:

```text
Inbox Triage
Moved
Updated
Permanent Candidates
Needs User Decision
```

## Connection Review

Use after adding new notes or when the user asks "这些笔记之间有什么关系".

Steps:

1. Identify target notes or recent notes.
2. Search for shared keywords, tags, sources, projects, and concepts.
3. Suggest wiki links and MOC placement.
4. Add links only when the relationship is meaningful.
5. Note missing bridges as open questions.

Relationship labels:

- `supports`: provides evidence.
- `contrasts`: disagrees or provides a counterexample.
- `extends`: develops the idea further.
- `applies-to`: connects a concept to a project.
- `source-of`: source note backing a permanent note.

## Weekly Synthesis

Use for weekly review, work summary, learning summary, or project recap.

Steps:

1. Collect notes from `60_Daily/`, recent `00_Inbox/`, active `10_Projects/`, and new `30_Resources/`.
2. Compress noisy notes with `context-compression` if needed.
3. Extract:
   - decisions
   - repeated themes
   - completed work
   - open loops
   - permanent-note candidates
   - next actions
4. Create a weekly note under `60_Daily/YYYY-Www-weekly-synthesis.md` or project folder when project-specific.
5. Link relevant MOCs and project notes.

Output sections:

```text
本周主线
关键决策
沉淀知识
项目进展
下周行动
待确认
```

## Note Promotion

Use when a note has a durable idea worth extracting.

Steps:

1. Identify the source note and candidate idea.
2. Check if a similar permanent note already exists.
3. Create or update one permanent note in `40_Permanent/`.
4. Link source note and relevant MOCs.
5. Keep one idea per permanent note.
6. Mark source note with a backlink to the permanent note.

Promotion output:

```text
Promoted Idea
Source Note
Permanent Note
Links Added
Open Questions
```

## Vault Health Feedback

Use monthly or when the Vault feels messy.

Checks:

- inbox count and oldest inbox note
- orphan notes without links
- notes without frontmatter
- duplicate or near-duplicate titles
- project notes without next actions
- resource notes without source
- permanent notes not linked from any MOC
- stale active project notes

Do not fix everything at once. Return a prioritized maintenance plan.

## Context Maintenance

Use after long Codex sessions or project work.

Steps:

1. Use `context-compression` to compress the session.
2. Create/update a code-session note using `obsidian-knowledge-base`.
3. Update the project note with decisions and next actions.
4. Link files, commits, branches, and validation status.

## MCP Notes

If an Obsidian MCP is available, use it for search and structured vault operations. If not, direct filesystem operations are acceptable because the Vault is plain Markdown. Prefer read-only MCP mode until workflows are proven safe.
