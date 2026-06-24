---
name: local-photo-editor
description: Local deterministic photo editing and export workflow for real image files. Use when the user asks Codex to crop, resize, rotate, convert HEIC/JPEG/PNG/TIFF/WebP, compress, batch export, add watermark, preserve or strip EXIF, generate thumbnails, rename photo files, prepare social-media exports, or perform non-generative file operations before or after Lightroom/Photoshop-style editing.
---

# Local Photo Editor

Use this skill for deterministic local file operations. This is not the place for aesthetic retouching or generative image changes.

中文说明：这个 skill 处理本地照片文件操作：裁切、缩放、格式转换、压缩、批量导出、水印、EXIF、缩略图、命名。它类似后期流程里的“导入/导出/批处理助手”。

## Core Rules

- Preserve the original file unless the user explicitly asks to overwrite.
- Write outputs to a clear sibling folder such as `exports/`, `edited/`, or a user-specified path.
- Report input path, output path, dimensions, format, quality, and metadata handling.
- For batch operations, process a small sample first when the operation could be destructive.
- Do not use AI editing for deterministic transforms.

## Common Operations

### Resize / Export

- For web sharing: long edge 2048 px, JPEG quality 85-92.
- For high quality archive: keep original dimensions or export TIFF/PNG when needed.
- For phone/social: choose aspect ratio before resizing.

### Crop

Ask or infer:

- aspect ratio: 1:1, 4:5, 3:2, 16:9, 9:16
- subject priority
- whether to preserve horizon and face/body boundaries

### Convert

Typical conversions:

- HEIC to JPEG/PNG
- TIFF to JPEG preview
- PNG to JPEG for smaller size
- JPEG to WebP for web

### Metadata

- Preserve EXIF for personal archives.
- Strip GPS metadata for public sharing unless the user wants to keep it.
- Do not remove metadata silently.

### Watermark

- Place watermarks subtly unless the user requests visible branding.
- Avoid covering faces, main subject, or key composition lines.

## Tooling

Use available local tools according to the task:

- Python Pillow for common operations.
- ImageMagick if installed and convenient.
- macOS `sips` for simple resizing/conversion.
- ExifTool if installed for metadata inspection/editing.

If a required tool is missing, explain the missing dependency and use the next available option.

## Output Shape

```text
处理内容：
输入：
输出：
尺寸/格式：
元数据：
质量风险：
```
