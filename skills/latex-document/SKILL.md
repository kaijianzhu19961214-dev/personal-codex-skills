---
name: latex-document
description: Personal LaTeX document workflow for academic papers, formal reports, resumes, CVs, cover letters, formula sheets, research notes, tables, figures, BibTeX, citations, PDF compilation, LaTeX debugging, and Markdown-to-LaTeX conversion. Use when the user asks to write, edit, compile, review, or troubleshoot LaTeX or produce publication-style PDFs.
---

# LaTeX Document

Use this skill when the target output is LaTeX or a publication-style PDF that benefits from LaTeX.

中文说明：这个 skill 用于论文、研究报告、简历、公式页、正式 PDF、BibTeX 和 LaTeX 编译调试。普通 Markdown/PDF 输出不一定需要它。

## Workflow

1. Identify document type: paper/report, resume/CV, formula sheet, assignment, technical note, slide/poster.
2. Inspect existing `.tex`, `.bib`, figures, and build commands.
3. Choose minimal LaTeX structure.
4. Keep content source-aware when converting from Markdown or Obsidian.
5. Compile when a TeX engine is available.
6. Debug errors from the first failing line, then rerun.

## Quality Rules

- Prefer simple packages.
- Keep citations in `.bib` when possible.
- Do not invent bibliographic metadata.
- Use tables only when they improve clarity.
- Keep Chinese text compatible with XeLaTeX when needed.

## Final Response

Report changed files, compile command, output PDF path, and unresolved warnings.
