---
name: skill-priority-policy
description: Personal Codex skill priority and ownership policy. Use when Codex needs to decide which skill should win, audit duplicate or overlapping skills, explain system vs personal vs project-local instructions, update the personal skills repository layout, choose whether to wrap or edit a third-party skill, or design stable loading and override rules for Codex skills.
---

# Skill Priority Policy

## Purpose

Use this skill to keep a personal Codex skill library predictable. Treat skill loading as an ownership and scope problem: system skills provide baseline capability, personal skills encode durable user preferences, and project instructions adapt behavior to the current repository.

中文说明：这个 skill 用来固定“谁说了算”的规则，避免第三方 skill、个人改造版、项目 AGENTS.md 互相打架。

## Priority Model

Apply this priority order when instructions overlap:

1. Current user request: the latest explicit user instruction wins for the current turn.
2. Project-local instructions: `AGENTS.md` and repository conventions win for work inside that project.
3. Personal skills repository: skills maintained under `/Users/zhukaijian/Desktop/Codex/Skills/skills` define reusable personal workflows.
4. Installed user skills: symlinks or installed folders under `~/.codex/skills` expose personal skills to Codex.
5. System skills: `~/.codex/skills/.system` and bundled runtime skills are baseline capabilities and should not be edited directly.
6. Vendor or marketplace sources: third-party repos are references unless deliberately vendored or wrapped.

If two skills can handle the same task, prefer the more specific personal skill. If specificity is equal, prefer the skill whose description best matches the user's exact wording.

## Ownership Rules

- Do not edit `.system` skills directly.
- Do not hand-edit third-party marketplace skills unless the task is explicitly to patch the vendored copy.
- Prefer creating a personal wrapper or adapted skill for durable preferences such as Chinese-first output, FastAPI conventions, Obsidian workflows, or source-preserving summaries.
- Keep the personal repository as the canonical source; use `scripts/link_skills.sh` to expose skills through symlinks.
- Avoid duplicate skill names. If a third-party skill overlaps, choose a clearer personal name such as `content-summarizer`, `skill-vetter`, or `obsidian-pkm-workflows`.
- Add Chinese notes with `skill-chinese-notes` only when they clarify local usage without weakening the original trigger metadata.

## Conflict Handling

When skills or rules conflict:

1. Identify the smallest scope that applies: current request, project, personal skill, installed skill, system skill.
2. Preserve safety rules from higher-level instructions.
3. Explain the conflict briefly if it affects the output.
4. Choose one controlling workflow and avoid mixing incompatible procedures.
5. If the conflict is structural, update the personal skill description or README so the next trigger is unambiguous.

## Repository Checks

When auditing this repository:

- Run `git status --short --branch` before edits.
- Check for duplicate names with `find skills -maxdepth 2 -name SKILL.md` and inspect frontmatter names.
- Confirm personal skills are linked into `~/.codex/skills` by running `./scripts/link_skills.sh`.
- Validate changed skills with `quick_validate.py`.
- Commit only relevant files.

For detailed policy notes and examples, read `references/priority-rules.md`.
