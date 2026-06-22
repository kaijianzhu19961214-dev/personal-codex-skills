---
name: workflow-orchestrator
description: Personal workflow orchestration skill. Use when Codex needs to combine multiple tools, APIs, scripts, files, MCP calls, web research steps, or local commands into a repeatable multi-step workflow with clear inputs, outputs, checkpoints, error recovery, idempotency, and user confirmation for risky actions.
---

# Workflow Orchestrator

Use this skill when the user's request is best handled as a coordinated workflow rather than a single command or one-off answer.

中文说明：这个 skill 是从飞书 `lark-workflow-*` 抽象出来的个人版。重点是把“查数据 -> 处理 -> 生成输出 -> 校验 -> 同步/提交”这类多步骤任务变成可复用、可恢复、可确认的流程。

## Core Rules / 核心规则

- Define the workflow boundary before executing: goal, inputs, outputs, tools, and stop conditions.
- 执行前先界定边界：目标、输入、输出、工具和停止条件。
- Make data contracts explicit between steps: each step should produce a named object, file, or decision.
- 步骤之间要有明确数据契约：每步输出一个命名对象、文件或决策。
- Prefer inspectable intermediate artifacts over hidden state.
- 优先生成可检查的中间结果，不依赖隐形状态。
- Build in checkpoints before risky writes, external sends, deletes, payments, pushes, or irreversible operations.
- 写入外部系统、发送、删除、支付、推送或不可逆操作前设置确认点。
- Design for resume: if a step fails, identify completed work and the next safe retry point.
- 设计可恢复流程：失败时说明已完成内容和下一次安全重试点。

## Workflow Shape / 工作流结构

For non-trivial tasks, sketch this before implementation:

```text
Input -> Collect -> Normalize -> Analyze/Transform -> Produce -> Verify -> Deliver
```

Use concrete names:

```text
{date_range}
  -> fetch_source_records
  -> normalized_records.json
  -> summary.md
  -> validation_report
  -> final_delivery
```

## Default Process / 默认流程

1. Identify the task type:
   - Research workflow
   - Data/report workflow
   - API/tool orchestration
   - Documentation workflow
   - Git/release workflow
   - Monitoring or recurring workflow
2. Define inputs and assumptions. Convert relative dates to absolute dates when needed.
3. Choose tools and order. Prefer existing skills and local project scripts.
4. Create a short plan only when the task has meaningful branching or risk.
5. Execute step by step, validating each important output before moving on.
6. Pause for explicit confirmation before risky external side effects.
7. Summarize outputs, validation, and any safe resume point.

## Reference Routing / 参考文件

- For designing a reusable workflow, read `references/workflow-design.md`.
- 要把流程沉淀成可复用模板时，读取 `references/workflow-design.md`。
- For failure handling and idempotency, read `references/recovery-idempotency.md`.
- 涉及失败恢复、重复执行、幂等时，读取 `references/recovery-idempotency.md`。

## Output Style / 输出风格

- Chinese first, concise and operational.
- 中文优先，简洁可执行。
- Show only useful structure; do not over-plan tiny tasks.
- 小任务不要过度规划。
- When a workflow writes files or changes external state, report changed files, commands/tools used, and validation performed.
- 有文件或外部状态变更时，说明改了什么、用了什么工具、验证了什么。

