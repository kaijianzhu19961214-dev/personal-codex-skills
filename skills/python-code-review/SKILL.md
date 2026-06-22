---
name: python-code-review
description: Personal Python and FastAPI code review workflow. Use when the user asks Codex to review Python code, FastAPI services, SQLAlchemy data access, async workflows, tests, PR diffs, or current branch changes for bugs, regressions, performance risks, type issues, security problems, and missing tests. Focus on actionable findings with file and line references.
---

# Python Code Review

Use this skill for review-style work on Python, FastAPI, SQLAlchemy, async services, and related tests. Lead with findings, not summaries.

中文说明：这个 skill 是用户个人 Python/FastAPI 代码审查规范。重点是发现真实 bug、回归风险、安全问题、性能问题和缺失测试，不做泛泛风格建议。

## Core Rules / 核心规则

- Review like a senior engineer: prioritize correctness, data integrity, security, async behavior, error handling, and maintainability.
- 像资深工程师一样审查：优先看正确性、数据一致性、安全、异步行为、错误处理和可维护性。
- Findings first. Each finding must include severity, file/line reference, impact, and concrete fix direction.
- 问题优先。每个问题必须包含严重级别、文件/行号、影响和修复方向。
- Do not rewrite whole files unless the user asks. For review output, avoid dumping repeated code.
- 除非用户要求，不重写整文件；审查输出不重复大段代码。
- Respect the user's AGENTS.md: Chinese response, typed signatures, Pydantic v2, SQLAlchemy 2.0, async I/O, early returns, unittest.
- 遵循用户 AGENTS.md：中文、类型提示、Pydantic v2、SQLAlchemy 2.0、异步 I/O、早返回、unittest。
- Ignore pure taste issues unless they hide a real risk.
- 纯风格问题不提，除非会导致真实风险。

## Review Workflow / 审查流程

1. Inspect repo state and changed files when reviewing a branch:
   ```bash
   git status --short --branch
   git diff --stat
   ```
2. Identify the review scope: current file, selected diff, branch vs `main`, or whole module.
3. Read relevant code and tests. For wider reviews, read `references/review-checklist.md`.
4. Check behavior paths:
   - valid input
   - invalid input
   - empty data
   - missing resource
   - permission/auth failure
   - external dependency failure
   - concurrency or retry path
5. Verify test coverage when risk is meaningful.
6. Output findings ordered by severity.

## Severity / 严重级别

- `P0`: data loss, security exposure, broken startup, production outage, irreversible external side effect.
- `P1`: likely runtime bug, wrong API behavior, async blocking, transaction bug, missing critical validation.
- `P2`: edge-case bug, weak error handling, missing meaningful test, maintainability risk with clear impact.
- `P3`: low-risk improvement; use sparingly.

## Output Format / 输出格式

```text
Findings
- [P1] <title> — <file:line>
  <impact>
  Fix: <specific direction>

Open Questions
- <only if needed>

Tests
- <what was or was not run/checked>
```

If there are no findings, say that clearly and mention residual test gaps.

