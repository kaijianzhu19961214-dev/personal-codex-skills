---
name: fastapi-api-doc
description: Personal FastAPI API documentation workflow. Use when the user asks Codex to generate, update, review, or improve API docs for FastAPI routes, Pydantic request/response models, service endpoints, OpenAPI behavior, README API sections, or changed HTTP interfaces. Docs must be Chinese-first and include purpose, input, output, errors, examples, and validation notes.
---

# FastAPI API Doc

Use this skill for documenting FastAPI endpoints and Python API surfaces. It complements `technical-writing` with a narrower FastAPI endpoint contract.

中文说明：这个 skill 用于生成或更新 FastAPI 接口文档。固定包含用途、输入、输出、错误、示例，并贴合用户 AGENTS.md 的 Python/FastAPI 规范。

## Core Rules / 核心规则

- Inspect the actual route, dependencies, Pydantic models, and tests before writing docs.
- 写文档前先看真实路由、依赖、Pydantic 模型和测试。
- Document changed or requested endpoints only; do not rewrite unrelated docs.
- 只写变更或指定接口，不重写无关文档。
- Include request, response, errors, examples, and auth/permission notes.
- 必须包含请求、响应、错误、示例、认证/权限说明。
- Keep Chinese first. Preserve exact path, method, model, and field names in English.
- 中文优先，路径、方法、模型和字段名保持英文原样。
- Do not invent behavior not present in code.
- 不虚构代码中不存在的行为。

## Workflow / 工作流程

1. Locate the route definition and router inclusion path.
2. Read request/response Pydantic models and dependencies.
3. Identify status codes and `HTTPException` paths.
4. Check tests or OpenAPI output if available.
5. Use `references/endpoint-template.md` for the final section.
6. If editing files, patch only the relevant doc section.

## Required Endpoint Fields / 接口文档必备项

- Purpose
- Method and path
- Authentication and permissions
- Path/query/header/body parameters
- Request model
- Response model
- Error responses
- Example request
- Example response
- Notes about pagination, idempotency, side effects, or rate limits when relevant

## Output Style / 输出风格

- Prefer compact tables for parameters and errors.
- Use fenced code blocks for JSON examples.
- Mention validation command or docs checked.
- If information is unknown, mark it as `待确认` instead of guessing.

