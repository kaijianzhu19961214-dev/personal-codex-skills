---
name: frontend-implementation-from-design
description: Personal workflow for implementing frontend UI from design references such as Figma, screenshots, image mockups, product pages, or written design specs. Use when the user asks Codex to turn a design into React, Vue, HTML/CSS, Tailwind, shadcn/ui, dashboard UI, landing page UI, or component code while preserving visual intent and verifying layout.
---

# Frontend Implementation From Design

Use this skill when implementing UI from a design reference. It coordinates design interpretation, code implementation, and visual verification.

中文说明：这个 skill 负责“从设计稿/截图/参考图落地前端代码”。MCP 或浏览器负责拿设计信息，skill 负责规定如何理解视觉、拆组件、实现响应式和验证截图。

## Core Rules / 核心规则

- Preserve visual intent before optimizing code structure.
- 先保留设计意图，再优化代码结构。
- Use the existing frontend stack and design system when present.
- 优先使用项目已有前端技术栈和设计系统。
- If a design source is external, gather concrete tokens: layout, spacing, color, typography, components, states.
- 外部设计源要提取具体 token：布局、间距、颜色、字体、组件和状态。
- Do not create a marketing landing page when the user asked for an app/tool/game experience.
- 用户要应用/工具/游戏时，不做空泛落地页。
- Verify with screenshots or visual inspection when a runnable frontend exists.
- 有可运行前端时，必须截图或视觉检查。

## Workflow / 工作流程

1. Identify the design source:
   - Figma/MasterGo/other design link
   - screenshot or image
   - existing product page
   - written spec
2. Load complementary skills as needed:
   - `frontend-design` for visual direction
   - `interaction-design` for microinteractions
   - `ui-ux-pro-max` for UI/UX review patterns
3. Inspect the existing app stack and component conventions.
4. Extract design contract:
   - structure
   - color tokens
   - typography
   - spacing
   - components
   - responsive behavior
   - interaction states
5. Implement in small, scoped changes.
6. Run typecheck/lint/tests/build where available.
7. Start dev server when needed and verify with screenshots across desktop/mobile.
8. Fix visible layout issues before final response.

## Reference Routing / 参考文件

- For design extraction, read `references/design-extraction.md`.
- 需要从截图/Figma/网页提取视觉信息时，读取 `references/design-extraction.md`。
- For verification, read `references/visual-verification.md`.
- 需要运行页面并截图验收时，读取 `references/visual-verification.md`。

## Output / 输出

Keep final responses short:

```text
Implemented:
- <component/page>

Validated:
- <build/test/screenshot checks>

Notes:
- <known limitation or design assumption>
```

