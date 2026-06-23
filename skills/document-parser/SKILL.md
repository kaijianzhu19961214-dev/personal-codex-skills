---
name: document-parser
description: Personal complex document parsing workflow for PDFs, Office documents, images, scans, HTML, tables, forms, and semi-structured documents. Use when markdown-converter is insufficient, when the user needs preserved layout, tables, schemas, fields, page-aware extraction, OCR review, structured JSON/CSV extraction, or docling-style parsing before summarization or Obsidian ingestion.
---

# Document Parser

Use this skill for difficult extraction cases where simple Markdown conversion is not enough.

中文说明：这个 skill 是 `markdown-converter` 的增强路线。普通文档先走 `markdown-converter`；复杂 PDF、表格、扫描件、表单、版式敏感文件再用这里的解析流程。

## When To Use

- Complex PDFs with tables or figures.
- Scanned documents requiring OCR.
- Forms where fields must be extracted.
- Documents needing page numbers or layout-aware evidence.
- HTML pages where structure matters.
- Files that should become JSON, CSV, or structured Markdown.

## Workflow

1. Identify desired output: Markdown, JSON, CSV, table, or evidence map.
2. Inspect file type and page count.
3. Try local structured parsers first.
4. For PDFs, extract text and tables separately; preserve page numbers and mark OCR uncertainty.
5. For spreadsheets, keep sheets and table boundaries.
6. For images/scans, OCR only necessary regions when possible.
7. Validate extraction with spot checks.
8. Hand off to `content-summarizer` or `obsidian-knowledge-base` as needed.

## Output Notes

Always report parser route, output path, extraction quality, skipped pages/tables/images, and fields requiring manual review.
