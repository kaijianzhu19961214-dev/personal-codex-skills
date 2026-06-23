---
name: markdown-converter
description: Personal Markdown conversion workflow for turning PDFs, Word documents, PowerPoint decks, Excel/CSV files, HTML/webpages, transcripts, images with OCR text, audio/video transcript sources, JSON/XML, and pasted content into clean LLM-ready Markdown. Use when the user asks to convert files or webpages to Markdown, prepare source material for summarization, preserve document structure, extract tables/headings/links, or create a Markdown intermediate before using content-summarizer or technical-writing.
---

# Markdown Converter

## Overview

Use this skill to convert source material into clean Markdown that is easy for Codex and other LLM workflows to read, summarize, edit, or archive. Prefer local conversion and preserve source metadata.

中文说明：这个 skill 负责把 PDF、Office、网页、表格、转录文本等资料转成结构清晰的 Markdown。它不是最终总结工具；需要总结时，把转换结果交给 `content-summarizer`，需要整理文档时交给 `technical-writing`。

## Core Rules

- Prefer local tools and bundled file skills before sending content to external services.
- Preserve original source path or URL, filename, title, author/date if known, page numbers, slide numbers, sheet names, headings, links, and timestamps.
- Write the Markdown output to a file when the source is long or file-based. Use a clear name such as `<source_stem>.md`.
- Do not silently drop tables, images, speaker labels, formulas, or footnotes. If extraction is partial, record it under `Conversion Notes`.
- Keep Markdown semantic and simple: headings, lists, tables, blockquotes, fenced code blocks, links, and image references.
- Do not treat converted Markdown as verified facts. It is an extraction artifact.
- For copyrighted or private content, avoid pasting full converted text in chat unless the user explicitly asks. Prefer saving the file and summarizing the result.

## Workflow

1. Identify source type, size, sensitivity, and target output path.
2. Read `references/conversion-routes.md` and choose the best available route.
3. Convert using local or already-available tools where possible:
   - Built-in file skills for PDFs, documents, spreadsheets, and presentations.
   - `uvx markitdown` / `markitdown` when installed or appropriate.
   - Browser/web tools for webpages that need readability extraction or login/session access.
4. Inspect the Markdown for structure:
   - title and source metadata
   - heading hierarchy
   - table readability
   - broken links or image references
   - missing sections or OCR/transcription limits
5. Add a short `Conversion Notes` section at the end when anything was lossy, inferred, skipped, or failed.
6. If the user wants a summary, hand off the converted Markdown to `content-summarizer`.

## Output Header

For file-based conversions, start generated Markdown with:

```markdown
---
source: "<absolute path or URL>"
converted_at: "<ISO timestamp when practical>"
converter: "<tool or route used>"
conversion_quality: "high|medium|low"
---
```

If frontmatter would interfere with the user's target format, put the same information under:

```markdown
# Conversion Metadata
```

## Quality Labels

- `high`: headings/text/tables are structurally preserved and spot checks pass.
- `medium`: main text is usable, but tables/images/layout may need cleanup.
- `low`: OCR, scanned pages, malformed files, partial access, or heavy manual cleanup needed.

## Final Response

Report only what matters:

- output Markdown path
- conversion route used
- quality label
- notable losses or warnings
- suggested next step, such as summarizing with `content-summarizer`

Do not paste the full Markdown output into the final response unless the user explicitly asks.

## Resource Routing

- For source-specific conversion choices and fallback order, read `references/conversion-routes.md`.
