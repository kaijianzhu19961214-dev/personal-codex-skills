---
name: lightroom-assisted-editing
description: Manual-assisted Lightroom Classic photo editing workflow for cases where Lightroom MCP is unavailable or unstable. Use when Codex should analyze photos, produce Lightroom slider/mask/preset instructions, guide the user to apply edits manually or in batch, inspect exported images, compare before/after results, and iterate on photographic post-processing without directly controlling Lightroom.
---

# Lightroom Assisted Editing

中文说明：这是“Codex 辅助 + Lightroom 手动/批量执行 + 本地验证”的稳定摄影后期流程。它避免依赖不稳定的 Lightroom MCP，把 Codex 放在审美分析、参数设计、批量一致性和导出复盘的位置。

## Use This Shape

For each task, separate work into four roles:

1. Codex analyzes the source photo, user intent, and visible quality issues.
2. Codex writes Lightroom Classic instructions that a human can apply.
3. The user exports edited files from Lightroom.
4. Codex inspects exported files locally, compares versions, and proposes iteration.

If the user provides many images, work on a representative anchor image first, then convert the result into synced batch settings.

## Required Routing

- Use `photo-critique` first when the task starts from a photo and asks what to improve.
- Use `lightroom-style-workflow` when generating Lightroom sliders, masks, tone curve, HSL, color grading, detail, and export settings.
- Use `local-photo-editor` when inspecting exported files, making contact sheets, generating before/after comparisons, resizing, compressing, or validating output.
- Use `photoshop-retouching-workflow` only for pixel cleanup that Lightroom cannot handle well.
- Use `ai-photo-editing` only when the requested change needs generative edits.

## Workflow

1. Inspect the photo visually before giving exact parameters.
2. Ask for the intended style only when it materially changes the edit; otherwise choose a conservative natural correction.
3. Produce Lightroom instructions in this order:
   - profile and lens corrections
   - crop and transform
   - basic tone
   - white balance and color cast
   - tone curve
   - HSL/color mixer
   - color grading
   - masks
   - detail and noise reduction
   - export settings
4. Give ranges rather than fake precision when the source file is JPEG or exposure/color is uncertain.
5. Tell the user exactly what to export for verification.
6. After export, inspect the edited file and compare it with the original or previous version.
7. Iterate with a short “v2 adjustment” list instead of rewriting the whole edit.

## Output

For a new edit plan, answer in Chinese:

```text
后期目标：
当前问题：
Lightroom 手动参数：
局部遮罩：
批量同步建议：
导出验证：
下一轮复盘：
```

For exported-file verification, answer in Chinese:

```text
检查结果：
改善明显的部分：
仍需调整：
建议 v2 参数：
是否需要 Photoshop/AI：
```

## Detailed Reference

Read `references/workflow.md` when the user is setting up a dedicated photo-editing project, wants a repeatable Lightroom workflow, asks how to name/export/compare files, or needs batch-edit rules.

## Boundaries

- Do not pretend Lightroom MCP control is available unless a tool call actually succeeds.
- Do not overwrite originals.
- Prefer reversible Lightroom edits before Photoshop or AI.
- For documentary, street, travel, and family photos, preserve realism unless the user explicitly asks for a stylized look.
- Do not invent camera/lens metadata unless it is visible in EXIF or provided by the user.
