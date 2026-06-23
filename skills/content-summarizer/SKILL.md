---
name: content-summarizer
description: Personal Chinese-first summarization workflow for long articles, blogs, webpages, PDFs, documents, YouTube/podcast/audio/video transcripts, meeting notes, long conversations, and code session handoffs. Use when the user asks for TL;DR, key conclusions, evidence, action items, decisions, risks, open questions, source-preserving summaries, or compact handoff notes while separating facts from inference.
---

# Content Summarizer

## Overview

Use this skill to compress long or noisy material into a source-preserving, decision-useful summary. Default to Chinese. Keep English titles, code identifiers, API names, product names, and exact quotes unchanged when precision matters.

中文说明：这个 skill 用于总结长文章、网页、视频/播客转录、会议纪要、长对话和代码 session 交接。输出优先给结论、证据、行动项、待确认，并明确区分事实和推断。

## Core Rules

- Prefer Chinese output unless the user asks otherwise.
- Preserve source titles, URLs, file paths, timestamps, speaker names, issue IDs, PR links, and code identifiers.
- Do not invent missing context. Mark uncertain items as `待确认`.
- Separate facts from inference. Use labels such as `事实` and `推断`.
- Avoid long verbatim excerpts from copyrighted sources. Use short quotes only when necessary for evidence.
- Keep summaries compact. Expand only when the user asks for detailed notes.
- When summarizing code work, focus on changed behavior, decisions, unresolved risks, tests, and next actions.

## Workflow

1. Identify the content type and target summary:
   - Article, blog, webpage, paper, PDF, document
   - Video, podcast, audio transcript
   - Meeting notes
   - Long conversation
   - Code session handoff
   - Multi-source research summary
2. Acquire the source with the right capability:
   - URLs or dynamic pages: use web access/browser tools when available.
   - PDFs/documents/spreadsheets: use the matching file skill or local extraction tool.
   - User-pasted text: summarize directly.
   - Previous sessions or personal history: use memory recall if available and relevant.
3. Extract the source map before summarizing:
   - title, URL/path, author/speaker, date, section headings, timestamps, and any source limitations.
4. Read `references/source-handling.md` when sources are external, multi-source, copyrighted, conflicting, or incomplete.
5. Read `references/summary-formats.md` and choose the smallest format that fits the user request.
6. Produce the summary with clear labels for conclusions, evidence, action items, and open questions.

## Default Output

Use this structure unless another reference format is a better fit:

```text
TL;DR
- ...

关键结论
- ...

证据与来源
- ...

行动项
- ...

待确认
- ...
```

If there are no action items or open questions, say `无明确行动项` or `暂无待确认项` instead of inventing one.

## Resource Routing

- For output templates by source type, read `references/summary-formats.md`.
- For citation, source confidence, fact/inference, copyright, and conflict handling, read `references/source-handling.md`.
