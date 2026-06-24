---
name: photo-post-processing
description: Personal photography post-processing dispatcher for Lightroom-style color grading, Photoshop-style retouching, local deterministic photo edits, AI-assisted photo edits, and photo critique. Use when the user asks to edit, retouch, color grade, enhance, batch export, crop, clean up, remove distractions, adjust tone, create a Lightroom/PS workflow, or discuss photography post-production for portraits, landscapes, street, travel, product, or social-media photos.
---

# Photo Post Processing

Use this as the top-level photography post-processing workflow. It is for photographic images, not research report charts, UI mockups, diagrams, or Obsidian illustrations.

中文说明：这是摄影后期总入口，目标类似 Lightroom + Photoshop 的工作流调度。它负责判断一张照片应该走调色、精修、本地批处理、AI 重绘，还是先做照片诊断。

## Routing

- Use `photo-critique` when the user asks what is wrong with a photo or wants editing suggestions.
- Use `lightroom-style-workflow` for global color grading, exposure, white balance, tone curve, HSL, masks, sharpening, noise reduction, lens correction, and non-destructive edits.
- Use `photoshop-retouching-workflow` for local cleanup, skin retouching, object removal planning, dodge and burn, frequency separation, background cleanup, composites, and layered PS-style work.
- Use `local-photo-editor` for deterministic local file work: resize, crop, convert, compress, export, watermark, strip/preserve EXIF, batch operations.
- Use `ai-photo-editing` when the requested change needs generative editing, inpainting, outpainting, background replacement, style transfer, or Codex `imagegen`.

If multiple routes apply, start with critique, then plan Lightroom edits, then Photoshop/local/AI edits.

## Workflow

1. Identify the photo type:
   - portrait
   - landscape
   - street
   - travel
   - product
   - food
   - event
   - social media cover/avatar
2. Identify user intent:
   - natural correction
   - cinematic look
   - clean commercial look
   - film look
   - Japanese airy look
   - moody low-key look
   - skin retouch
   - distraction removal
   - batch export
3. Inspect the actual image when a file is provided. Use visual inspection before giving precise edit advice.
4. Separate edits into:
   - global adjustments
   - local adjustments
   - retouching
   - AI/generative edits
   - export settings
5. Preserve originals. Recommend non-destructive edits unless the user explicitly wants a final flattened image.

## Output Shape

For planning requests, answer in Chinese with:

```text
后期目标：
主要问题：
Lightroom 步骤：
Photoshop/局部处理：
AI 修图是否需要：
导出建议：
注意事项：
```

For execution requests on local files, report:

- input file
- output file
- operations applied
- whether metadata was preserved
- any visible quality risk

## Boundaries

- Do not over-beautify faces unless the user asks for beauty retouching.
- Preserve photographic realism for documentary, street, travel, and family photos.
- Avoid inventing camera settings or lens data unless available from EXIF or the user.
- For portraits, mention skin texture preservation when suggesting smoothing.
- For AI edits, state which parts are factual image observations and which are creative interpretation.
