---
name: technical-writing
description: Personal technical writing workflow for Chinese-first documentation, README updates, API documentation, FastAPI/Python docs, changelogs, release notes, technical explanations, and doc edits that should be concise, accurate, actionable, and limited to changed content. Use when the user asks to write, update, review, or improve technical documentation, API docs, README sections, tutorials, developer guides, architecture notes, or explanations.
---

# Technical Writing

Use this skill for the user's personal technical documentation style. Prefer Chinese by default, use bilingual wording only when it improves precision, and keep output concise, accurate, and executable.

中文说明：这个 skill 是用户个人技术写作规范。核心偏好是中文优先、结构固定、API 文档完整、贴合 Python/FastAPI 规范、只回复变更部分、不重复已有代码。

## Core Rules / 核心规则

- Write in Chinese first. Use English terms when they are API names, code identifiers, protocol names, or clearer than translation.
- 中文优先；技术名词、API 名、代码标识符和协议名保留英文。
- Include bilingual wording only when the audience benefits, such as headings like `Quick Start / 快速开始` or terms like `Request Body（请求体）`.
- 必要时中英双语，但不要整篇双语膨胀。
- Return only changed sections when editing existing documentation.
- 修改已有文档时，只输出变更部分，不重复整篇文档或大段未变代码。
- Prefer concrete, executable instructions over abstract explanation.
- 技术说明必须简洁、准确、可执行。
- Keep code examples minimal but complete enough to run or understand.
- 代码示例要短，但必须能表达输入、输出和错误路径。
- When documenting Python/FastAPI, follow the user's AGENTS.md conventions: Pydantic v2 models, typed function signatures, async I/O, SQLAlchemy 2.0 where relevant, early error handling, and unittest for tests.
- Python/FastAPI 文档必须贴合用户 AGENTS.md 约定。

## Workflow / 工作流程

1. Identify the document type:
   - README
   - API documentation
   - Python/FastAPI developer docs
   - Tutorial or how-to
   - Architecture or decision note
   - Changelog or release note
2. Inspect existing docs before editing. Preserve local structure unless the user asks for a rewrite.
3. Load the relevant reference:
   - README: `references/readme-template.md`
   - API docs: `references/api-doc-template.md`
   - Python/FastAPI docs: `references/python-fastapi-docs.md`
4. Draft only the sections needed for the user's request.
5. Verify examples against the codebase when possible.
6. If final output is a patch/edit, summarize changed sections and validation only.

## README Rules / README 规则

Use the fixed README order from `references/readme-template.md` unless the existing project already has a stronger structure.

Minimum README sections:

1. Project summary
2. Features
3. Installation
4. Quick Start
5. Usage
6. Configuration
7. API Reference, when applicable
8. Troubleshooting
9. Development and testing
10. License

## API Documentation Rules / API 文档规则

Every API endpoint or public function doc must include:

- Purpose
- Input
- Output
- Errors
- Example

For HTTP APIs, document method, path, request body/query/path parameters, response model, status codes, and expected errors.

## Python/FastAPI Notes / Python 与 FastAPI 注意事项

- Prefer Pydantic models over raw dictionaries in docs and examples.
- Use `async def` for I/O examples and `def` for pure functions.
- Show typed signatures.
- Document expected `HTTPException` cases for predictable errors.
- Mention middleware or unexpected-error handling only when relevant.
- Use `unittest` in test documentation.

## Output Style / 输出风格

- Keep explanations short.
- Use headings only when they improve scanning.
- Prefer bullets for requirements and checklists.
- Avoid marketing tone.
- Do not paste full files unless the user asks for a full document.
- If editing local files, mention exact files changed and validation performed.

