---
name: requesting-code-review
description: Personal focused code review request workflow inspired by Superpowers-style independent review. Use when Codex has completed or is about to merge a meaningful code/configuration change and needs to review diffs for bugs, regressions, missing tests, safety issues, API behavior changes, FastAPI/Python conventions, quant research correctness, automation side effects, or documentation mismatches before committing, pushing, or relying on the work.
---

# Requesting Code Review

Use this skill to create a clean review pass over work products. The review should focus on findings, not praise.

中文说明：这个 skill 用于在提交、合并、依赖结果前做聚焦审查，优先找 bug、回归风险、测试缺口和量化研究正确性问题。

## Review Setup

1. Identify the review target:
   - current git diff
   - specific files
   - a commit
   - generated report
   - config or automation change
2. Summarize intended behavior in 2-4 bullets.
3. Inspect the diff and relevant surrounding code.
4. Review from highest-risk path first.
5. Report findings with file and line references when possible.

## Finding Format

Lead with findings ordered by severity:

```text
Findings
- [P1] file:line - problem, impact, suggested fix
- [P2] file:line - problem, impact, suggested fix

Open Questions
Tests / Verification
```

If no issues are found, say so clearly and mention residual risk.

## Review Focus

- behavioral regressions
- missing edge cases
- test gaps
- data leakage or alignment errors
- wrong assumptions in documentation
- unsafe automation or secret handling
- dependency or environment fragility
- mismatch with project `AGENTS.md`

## References

For review prompts and severity rules, read `references/review-checklist.md`.
