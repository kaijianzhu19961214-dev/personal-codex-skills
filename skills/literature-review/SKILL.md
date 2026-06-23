---
name: literature-review
description: Personal literature review workflow for academic, quantitative research, AI/ML, finance, technical, and policy topics. Use when the user asks for a literature review, paper survey, related work, citation-backed research summary, methodology comparison, research gap analysis, annotated bibliography, or an Obsidian-ready academic source synthesis.
---

# Literature Review

Use this skill to produce citation-aware research synthesis, not just a short summary. It works with `web-access`, Tavily MCP, `context7-doc-research`, `markdown-converter`, `content-summarizer`, and `obsidian-knowledge-base`.

中文说明：这个 skill 负责“文献综述/相关工作/研究脉络”，比普通总结更强调来源、方法、证据、争议、研究空白和可继续阅读的路线。

## Core Rules

- Prefer primary sources: papers, official reports, documentation, datasets, and author pages.
- Distinguish peer-reviewed papers, preprints, blog posts, vendor docs, and commentary.
- Keep claims tied to sources.
- Separate consensus, disagreement, and open questions.
- For finance/quant topics, avoid investment advice; focus on methods, evidence, limitations, and reproducibility.

## Workflow

1. Clarify scope only if the topic is too broad to research usefully.
2. Search broadly, then narrow to primary sources and high-quality surveys.
3. Build a source table: title, authors/org, year/date, venue/source type, method, main claim, limitations.
4. Cluster sources by theme or methodology.
5. Produce: `TL;DR`, `研究脉络`, `核心观点`, `方法对比`, `证据与局限`, `研究空白`, `推荐阅读顺序`, `可执行下一步`.
6. If requested, write an Obsidian literature note or MOC.

## Citation Style

Use lightweight inline citations by default:

```text
Author/Org (Year) - claim or finding.
```

Use APA/Nature/Vancouver only when the user asks.
