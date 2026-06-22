---
name: fastapi-test-writer
description: Personal FastAPI and Python unittest generation workflow. Use when the user asks Codex to write, update, review, or improve tests for FastAPI routes, Python services, SQLAlchemy repositories, async functions, Pydantic models, or bug fixes. Prefer unittest, focused coverage, boundary cases, dependency mocking, and tests that match the existing project patterns.
---

# FastAPI Test Writer

Use this skill when writing or improving tests for Python/FastAPI code. Match the repository's existing test style first, then apply the user's preferences.

中文说明：这个 skill 用于给 Python/FastAPI 项目写测试。默认使用 `unittest`，覆盖正常路径、边界、错误、依赖失败和回归点，不追求大而全。

## Core Rules / 核心规则

- Prefer `unittest` unless the repository clearly standardizes on another runner.
- 默认 `unittest`，除非项目已有明确不同测试框架。
- Add tests for changed behavior, not every implementation detail.
- 测行为，不测实现细枝末节。
- Use descriptive test names with `should_<expected>_when_<condition>`.
- 测试方法命名使用 `should_<expected>_when_<condition>`。
- Mock external services, network, time, filesystem, and database boundaries when appropriate.
- 外部服务、网络、时间、文件系统和数据库边界按需 mock。
- Keep fixtures small and explicit.
- fixture 要小而清楚。

## Workflow / 工作流程

1. Inspect existing tests and project test command before adding new tests.
2. Identify the unit under test and behavior contract.
3. Read `references/test-patterns.md` when deciding case coverage.
4. Add focused tests for:
   - happy path
   - invalid input
   - missing resource
   - external dependency failure
   - boundary value or empty data
   - regression path tied to the user's change
5. Run the narrowest relevant test command first, then broader tests if risk justifies it.
6. Report files changed and tests run.

## FastAPI Notes / FastAPI 注意事项

- Prefer testing route behavior through `TestClient` or the project's existing async client.
- Override dependencies explicitly.
- Assert status code, response body, and important side effects.
- For expected errors, assert the concrete HTTP status and user-facing error shape.
- Do not hit real external APIs in unit tests.

## Output / 输出

When explaining test changes, keep it short:

```text
Added:
- <test case>

Validated:
- <test command/result>

Notes:
- <mocking or remaining gap, if any>
```

