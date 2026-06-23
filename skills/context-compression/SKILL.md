---
name: context-compression
description: Personal context compression workflow inspired by tools like Headroom. Use when the user asks to compress logs, tool outputs, long files, RAG chunks, transcripts, stack traces, previous session context, or large command outputs before analysis; also use when context is too long but key facts, errors, decisions, commands, and evidence must be preserved.
---

# Context Compression

Use this skill to reduce large text while preserving decision-critical information.

中文说明：这个 skill 负责“压缩上下文但不丢关键事实”。适合长日志、测试输出、RAG chunks、长会话、报错堆栈、工具输出和代码 session 交接。

## Core Rules

- Preserve exact error messages, file paths, function names, line numbers, commands, versions, dates, and IDs.
- Remove repeated noise, progress bars, duplicate stack traces, and boilerplate.
- Separate facts from inference.
- Keep enough evidence to debug or cite.
- Never compress away security-relevant details unless redacting secrets.

## Compression Formats

### Logs / Test Output

```text
Failure Summary
Relevant Errors
Impacted Files
Commands Run
Likely Cause
Next Checks
Omitted Noise
```

### Long Session

```text
Goal
Completed
Current State
Decisions
Files/Commands
Open Issues
Next Actions
```

### RAG / Research Chunks

```text
Source Map
Key Facts
Conflicts
Evidence
Useful Quotes
Discarded Noise
```

## Workflow

1. Identify what must be preserved.
2. Remove duplication.
3. Group by topic or failure.
4. Keep exact snippets for evidence.
5. Produce compressed output with an omission note.

If the result is meant for Obsidian, hand off to `obsidian-knowledge-base`.
