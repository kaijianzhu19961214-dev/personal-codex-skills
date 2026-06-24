---
name: photo-critique
description: Photography critique and post-production diagnosis for real photos. Use when the user asks what is wrong with a photo, how to improve a photo, how to edit a portrait/landscape/street/travel/product photo, what Lightroom or Photoshop adjustments are needed, how to make a photo more cinematic/clean/film-like/natural, or wants a before-edit assessment before retouching.
---

# Photo Critique

Use this skill to diagnose a photo before editing. The goal is practical post-production guidance, not generic praise.

中文说明：这个 skill 用来“看图诊断”，像摄影后期前的看片环节：先判断曝光、色彩、构图、主体、背景、皮肤、噪点和风格方向，再决定怎么修。

## Critique Checklist

Inspect the image and cover only relevant items:

- Subject: whether the visual focus is clear.
- Composition: crop, horizon, edges, distractions, balance, negative space.
- Light: exposure, contrast, dynamic range, highlight recovery, shadow detail.
- Color: white balance, color cast, HSL issues, saturation, skin tone.
- Detail: sharpness, motion blur, noise, lens issues.
- Retouching needs: blemishes, flyaway hair, clothes wrinkles, dust spots, background clutter.
- Style: natural, clean commercial, cinematic, film, airy, moody, high-key, low-key.

## Output Shape

Use concise Chinese:

```text
总体判断：
最影响观感的 3 个问题：
建议后期方向：
Lightroom 调整：
Photoshop/局部处理：
不建议做的事：
```

When the user asks for a score, score separately:

- composition
- light
- color
- post-processing potential

## Advice Rules

- Be specific enough to execute, but do not fake exact slider values unless the image strongly supports it.
- Give ranges when useful: `曝光 +0.2 到 +0.5`、`高光 -20 到 -40`、`清晰度 -5 到 +10`.
- For portraits, prioritize natural skin tone and texture.
- For landscapes, prioritize tonal separation, sky/ground balance, color harmony, and local contrast.
- For street photos, avoid over-cleaning the scene unless the user wants a polished look.
- For product photos, prioritize accurate color, clean background, edge definition, and shadow control.

## Escalation

- Route global tone and color plans to `lightroom-style-workflow`.
- Route skin/object/background cleanup to `photoshop-retouching-workflow`.
- Route batch export or format changes to `local-photo-editor`.
- Route impossible local edits or creative transformations to `ai-photo-editing`.
