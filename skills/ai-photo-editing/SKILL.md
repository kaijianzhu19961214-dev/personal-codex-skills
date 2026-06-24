---
name: ai-photo-editing
description: AI-assisted generative photo editing workflow using Codex imagegen or other image models. Use when the user asks to remove or add objects, replace backgrounds, extend a photo, inpaint/outpaint, change mood or style, create realistic photo variations, restore missing areas, generate a reference edit, or perform edits that require inventing pixels rather than deterministic Lightroom/Photoshop adjustments.
---

# AI Photo Editing

Use this skill when a requested photography edit requires generated pixels. For direct image creation or editing, use Codex `imagegen` when available.

中文说明：这个 skill 负责生成式摄影修图，比如换背景、移除物体、扩图、局部重绘、风格化和修复缺失区域。它不是普通调色，也不是批量导出。

## Decision Rules

Use AI editing when:

- removing an object requires inventing background content
- extending the canvas beyond the original frame
- changing background, weather, time of day, or lighting conceptually
- making a creative variation or reference edit
- restoring missing/damaged photo areas

Do not use AI editing when:

- exposure, white balance, HSL, curve, crop, or export settings are enough
- the user asks for deterministic batch processing
- documentary truth must be preserved and the edit would alter reality

## Prompt Planning

Before calling image generation/editing, define:

- what must remain unchanged
- what should change
- realism level
- style direction
- crop/aspect ratio
- forbidden artifacts
- whether faces, identity, clothing, or background must be preserved

For real people, preserve identity and avoid body/face distortion unless the user explicitly asks for a benign correction.

## Output Shape

```text
AI 修图目标：
需要保持不变：
需要改变：
建议提示词：
风险点：
验收标准：
```

## Imagegen Guidance

When invoking Codex `imagegen`, keep instructions visual and specific:

- Describe the existing photo and the exact edit.
- Preserve camera perspective, lens feel, lighting direction, and subject identity when important.
- Avoid vague words like "make it better" without visual criteria.
- For object removal, specify natural background reconstruction.
- For style changes, keep photographic realism unless the user wants stylization.

## Quality Checks

After generation, inspect for:

- face/hand distortion
- inconsistent lighting
- warped background lines
- repeated textures
- unrealistic shadows
- changed identity
- over-smoothed skin
- text/logo artifacts

If defects appear, revise the prompt with tighter preservation constraints.
