---
name: lightroom-style-workflow
description: Lightroom-style non-destructive photography editing workflow for exposure, contrast, white balance, tone curves, HSL, color grading, masks, sharpening, noise reduction, lens correction, presets, RAW/JPEG editing, batch consistency, and export settings. Use when the user asks for Lightroom-like edits, color grading recipes, natural correction, film looks, cinematic looks, airy tones, moody tones, or repeatable photo presets.
---

# Lightroom Style Workflow

Use this skill for global and semi-local photographic development. Think Lightroom, Camera Raw, Capture One, or darktable: non-destructive edits before any Photoshop-style pixel work.

中文说明：这个 skill 用来规划 Lightroom 风格的调色与基础修片流程，适合 RAW/JPEG 的曝光、白平衡、曲线、HSL、遮罩、降噪、锐化、镜头校正和导出。

## Edit Order

1. Lens/profile corrections:
   - lens correction
   - chromatic aberration removal
   - geometry/horizon correction
2. Crop and composition:
   - aspect ratio
   - horizon
   - edge distractions
3. Basic tone:
   - exposure
   - contrast
   - highlights
   - shadows
   - whites
   - blacks
4. White balance and color cast.
5. Tone curve.
6. HSL/color mixer.
7. Color grading/split toning.
8. Presence:
   - texture
   - clarity
   - dehaze
9. Masks:
   - subject
   - sky
   - background
   - radial/linear gradients
10. Detail:
   - sharpening
   - noise reduction
11. Calibration or camera profile.
12. Export.

## Style Recipes

### Natural Clean

- Keep white balance believable.
- Recover highlights before raising contrast.
- Use modest vibrance instead of heavy saturation.
- Preserve skin texture and local contrast.

### Japanese Airy

- Slightly raise exposure and shadows.
- Lower contrast and black point carefully.
- Reduce harsh saturation in greens/yellows.
- Keep skin warm but not orange.

### Cinematic Moody

- Protect highlights.
- Deepen blacks and midtone contrast.
- Use teal/orange only when subject and scene support it.
- Keep saturation controlled.

### Film Look

- Use tone curve fade instead of flat contrast removal.
- Add grain only if the image resolution and subject support it.
- Shift greens, reds, and blues subtly; avoid one-click fake film colors.

## Output Shape

```text
目标风格：
基础校正：
色彩调整：
局部遮罩：
细节处理：
导出设置：
风险：
```

## Rules

- Prefer non-destructive edit plans.
- Do not suggest extreme sliders by default.
- If the image is JPEG, be more conservative with highlight recovery, white balance, and heavy color shifts.
- If the photo will later enter Photoshop, keep Lightroom edits clean and reversible.
- For series/batch photos, emphasize consistency: synced white balance, exposure normalization, and shared profile.
