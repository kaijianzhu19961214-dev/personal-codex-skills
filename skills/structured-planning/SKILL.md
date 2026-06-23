---
name: structured-planning
description: Personal structured planning workflow inspired by Superpowers-style planning. Use when Codex needs to turn a vague or complex request into an executable plan before implementation, especially for multi-step engineering work, research workflows, Obsidian/skills maintenance, quant research, report production, migrations, debugging campaigns, or tasks where scope, constraints, risks, dependencies, acceptance criteria, and verification steps must be made explicit before acting.
---

# Structured Planning

Use this skill to make work legible before execution. The goal is not to create ceremony; the goal is to reduce hidden assumptions.

中文说明：这个 skill 用于把模糊任务拆成可执行计划，尤其适合复杂代码改动、量化研究、Obsidian 工作流、研报输出和多工具协作。

## Planning Flow

1. Restate the objective in one sentence.
2. Identify the current state:
   - repo or workspace
   - relevant files or systems
   - known constraints
   - user preferences
3. Separate facts, assumptions, and open questions.
4. Define the output artifact:
   - code change
   - research note
   - report
   - automation
   - configuration
   - decision memo
5. Break work into small ordered steps.
6. Define verification for each risky step.
7. Mark steps that need user confirmation before irreversible actions.
8. Execute only after the plan is clear enough for the task's risk level.

## Planning Output

For lightweight tasks, use a short paragraph plus 3-5 steps.

For substantial tasks, produce:

```text
目标
当前状态
假设与待确认
执行步骤
验证方式
风险与回滚
预计产出
```

## Guardrails

- Do not over-plan trivial one-file changes.
- Do not ask for confirmation when a safe assumption is obvious.
- Do not hide uncertainty; label it.
- Prefer executable checkpoints over abstract milestones.
- Keep plans close to the user's actual goal.

## References

For detailed checklists, read `references/planning-checklist.md`.
