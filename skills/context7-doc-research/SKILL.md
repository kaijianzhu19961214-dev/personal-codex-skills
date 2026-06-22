---
name: context7-doc-research
description: Personal current-documentation research workflow using Context7 MCP when available, with official documentation fallback. Use when the user asks about up-to-date framework, library, API, SDK, model, or tool usage, especially FastAPI, Pydantic, SQLAlchemy, OpenAI APIs, frontend libraries, dependency versions, migration behavior, or anything likely to have changed recently.
---

# Context7 Doc Research

Use this skill when technical accuracy depends on current documentation. Prefer Context7 MCP if available; otherwise use official docs, release notes, source repositories, or package metadata.

中文说明：这个 skill 用来减少“靠记忆猜 API”。遇到 FastAPI、Pydantic、SQLAlchemy、OpenAI API、前端库、版本迁移等可能变动的问题，先查当前官方资料，再回答或实现。

## Core Rules / 核心规则

- Do not rely on memory for current library/API behavior when docs are available.
- 对可能变化的库/API 行为，不靠记忆硬答。
- Prefer Context7 MCP for library docs if installed and relevant.
- 如果 Context7 MCP 可用且适合，优先用它查库文档。
- If Context7 is unavailable, use primary sources: official docs, release notes, source repos, OpenAPI specs.
- 没有 Context7 时，回退到官方文档、发布说明、源码仓库或 OpenAPI 规范。
- Cite or name the source used in the final answer when docs materially shaped the answer.
- 文档影响结论时，在最终回答里说明来源。
- For OpenAI product/API questions, use the built-in `openai-docs` skill first.
- OpenAI 产品/API 问题优先使用内置 `openai-docs` skill。

## Workflow / 工作流程

1. Identify the library, framework, API, version, and task.
2. Decide source:
   - Context7 MCP, if available
   - official docs/release notes
   - official GitHub repo
   - local package source or lockfile
3. Verify version constraints from the project when possible:
   - `pyproject.toml`
   - `requirements*.txt`
   - `package.json`
   - lockfiles
4. Read only relevant docs.
5. Produce a concise answer with:
   - current recommended usage
   - version caveats
   - minimal example
   - migration note, if relevant
6. If implementing code, keep changes consistent with the repo's existing patterns.

## When To Trigger / 触发场景

- "查一下最新版怎么用"
- "这个 API 现在是不是废弃了"
- "FastAPI/Pydantic/SQLAlchemy 现在推荐写法"
- "OpenAI 新模型/接口怎么调用"
- "这个库升级后怎么迁移"
- "Context7 查一下..."

## Output / 输出

```text
结论:
- <short answer>

依据:
- <docs/source and version if known>

示例:
<minimal code>

注意:
- <version/migration caveat>
```

