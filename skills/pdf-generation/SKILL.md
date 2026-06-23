---
name: pdf-generation
description: Personal high-quality PDF generation workflow for converting Markdown, Obsidian notes, technical docs, research reports, resumes, handouts, and one-pagers into polished PDFs. Use when the user asks for PDF output, Pandoc-style export, typography, cover pages, tables, figures, page breaks, PDF/A/accessibility considerations, or a final shareable document from Markdown.
---

# PDF Generation

Use this skill when the deliverable is a polished PDF, not just Markdown.

中文说明：这个 skill 用于把 Markdown / Obsidian 笔记 / 技术报告 / 研究报告导出成正式 PDF。它补的是“出版/排版出口”，不是内容总结。

## Workflow

1. Identify source: Markdown, Obsidian note, generated research report, LaTeX source, or existing PDF.
2. Choose route: LaTeX for academic/formal documents, Pandoc when available for Markdown-to-PDF, existing PDF skill for PDF operations, or browser print for HTML reports.
3. Check headings, page breaks, tables, code blocks, images, and links.
4. Render and inspect if visual quality matters.
5. Report output path and known layout limitations.

## Quality Rules

- Keep source Markdown as canonical when possible.
- Do not flatten citations or links unless needed.
- Preserve Chinese fonts if Chinese text is present.
- Avoid decorative formatting unless the user asks.
- Use PDF/A/accessibility only when explicitly required or clearly useful.
