---
name: api-explorer
description: Personal API exploration workflow. Use when a requested capability is not covered by an existing SDK, CLI, wrapper, MCP tool, or local helper, and Codex needs to inspect official API documentation, verify authentication, identify endpoints, model request/response/error behavior, and produce a minimal executable call or implementation plan without guessing.
---

# API Explorer

Use this skill when the task requires finding or calling an API that is not already wrapped by the current codebase, SDK, CLI, or MCP tool.

中文说明：这个 skill 是从飞书 `lark-openapi-explorer` 抽象出来的个人版。重点不是飞书，而是“不要猜 API；先查官方文档，确认认证、路径、参数、响应、错误，再给出最小可执行方案”。

## Core Rules / 核心规则

- Prefer existing local abstractions first: repo helpers, SDKs, CLI commands, MCP tools, generated clients, or documented wrappers.
- 先找已有封装：仓库 helper、SDK、CLI、MCP、生成客户端或已有文档，找不到再探索原生 API。
- Use primary sources for API details: official docs, OpenAPI specs, schema files, source repositories, or provider-owned examples.
- API 细节只信一手来源：官方文档、OpenAPI 规范、schema、官方仓库或官方示例。
- Do not guess endpoint paths, parameter names, auth headers, scopes, pagination, rate limits, or error shapes.
- 不猜路径、参数、认证头、scope、分页、限流或错误结构。
- For write/delete/payment/security-sensitive APIs, stop before execution and ask for explicit confirmation.
- 写入、删除、支付、安全敏感接口在执行前必须确认。
- Keep the final answer executable: include method/path, auth requirement, required inputs, expected output, errors, and one minimal example.
- 最终输出要可执行：方法/路径、认证、必填输入、输出、错误和最小示例都要清楚。

## Workflow / 工作流程

1. Restate the capability gap: what the user wants and why existing wrappers do not cover it.
2. Locate authoritative documentation or schema. If the API may have changed, browse or inspect current official docs.
3. Read only the relevant docs. For broad APIs, start from an index, then module docs, then the exact endpoint.
4. Extract the contract:
   - HTTP method and path, or SDK/CLI operation name
   - Authentication mode, scopes, permissions, tenant/project context
   - Path/query/header/body parameters
   - Response fields and pagination
   - Error codes, retry rules, rate limits
5. Decide the call surface:
   - Existing SDK/client method
   - Raw HTTP request
   - CLI command
   - Generated client update
   - New thin wrapper in the codebase
6. For implementation work, read `references/implementation-pattern.md`.
7. For final user-facing API notes, follow `references/output-template.md`.

## Safety Checklist / 安全检查

- Confirm whether the operation is read-only or mutating.
- 确认操作是只读还是会写入。
- Never print tokens, app secrets, API keys, cookies, refresh tokens, or signed URLs unless the user explicitly asks and it is safe.
- 不输出 token、secret、API key、cookie、refresh token 或敏感签名 URL。
- Prefer dry-run, validation endpoint, sandbox environment, or test resource before production writes.
- 能 dry-run、用校验接口、沙箱或测试资源时，先用低风险路径。
- For destructive or irreversible actions, show the exact target resource and effect before asking for confirmation.
- 删除或不可逆操作必须说明目标资源和影响范围。

## Output Shape / 输出形态

When reporting findings, use this compact structure:

```text
API: <name and purpose>
Endpoint: <METHOD path or SDK/CLI operation>
Auth: <auth mode, scopes, permissions>
Input: <required and important optional fields>
Output: <main response fields>
Errors: <expected errors and handling>
Example: <minimal executable call>
Next step: <implement/call/test recommendation>
```

Keep Chinese first. Preserve exact API identifiers in English.

