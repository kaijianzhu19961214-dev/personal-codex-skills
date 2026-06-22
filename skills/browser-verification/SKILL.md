---
name: browser-verification
description: Personal browser verification workflow for local web apps, dev servers, UI changes, and frontend regression checks. Use when the user asks to verify a page, inspect a running app, test a browser flow, capture screenshots, check console errors, validate layout, or confirm that a frontend change actually works. Prefer agent-browser when installed; otherwise use web-access/CDP or available browser tools.
---

# Browser Verification

Use this skill when a frontend or web app change needs real browser validation, not just a successful build.

中文说明：这个 skill 是个人版 `agent-browser-verify` 思路。核心是：页面能构建不等于真的可用，要打开页面、截图、看控制台、点关键路径、检查布局。优先用 `agent-browser`，没有就回退到 `web-access`。

## Tool Priority / 工具优先级

1. `agent-browser`, if installed and working.
2. `web-access` / Chrome CDP, especially when the user already has Chrome debugging enabled.
3. Built-in browser tools or Playwright MCP, if available.
4. Static inspection only when no browser tool can run.

Before using `agent-browser`, check:

```bash
command -v agent-browser
agent-browser --version
```

If missing, do not fail the task. Use `web-access` or explain the missing CLI.

## Verification Workflow / 验证流程

1. Identify the target:
   - localhost URL
   - dev server command
   - route/page/component to inspect
   - expected user flow
2. Start or locate the dev server when needed.
3. Open the page in a browser.
4. Capture evidence:
   - screenshot or page snapshot
   - title and URL
   - console errors
   - network/API failures when available
5. Check the critical path:
   - primary page loads
   - key UI elements are visible
   - primary button/form/navigation works
   - responsive layout does not overlap
6. Report pass/fail with concrete observations.

## What To Check / 检查项

- Page renders nonblank.
- No obvious console errors.
- Text fits containers.
- Buttons and links are clickable.
- Forms accept input and show validation.
- Loading, empty, and error states appear when relevant.
- Desktop and mobile viewports work for user-facing UI.
- Screenshots match the intended design direction.

For deeper UI checks, read `references/verification-checklist.md`.

## Output / 输出

```text
Verified:
- <URL / route>

Result:
- Pass/Fail with concrete reason

Evidence:
- <screenshot path or observed DOM/snapshot>

Issues:
- <blocking issues first>

Notes:
- <tool fallback or missing CLI, if any>
```

