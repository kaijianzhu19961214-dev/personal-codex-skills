---
name: deep-research-report
description: Personal deep research report workflow for multi-source, current, evidence-heavy investigations. Use when the user asks for deep research, comprehensive research, whitepaper-style reports, source comparison, market/tool/technology landscape scans, decision reports, or Obsidian-backed research that should combine web search, Tavily, Context7, official docs, citations, synthesis, risks, and action items.
---

# Deep Research Report

Use this skill when a question needs more than a quick search. It coordinates research tools and produces a decision-useful report with sources.

中文说明：这个 skill 负责“深度调研报告”。它把 Tavily / web-access / Context7 / content-summarizer / Obsidian 串起来，输出可追溯、可执行的研究结论。

## Research Plan

1. Define the research question and decision context.
2. Split into subquestions.
3. Search in parallel where possible: official docs, recent web sources, GitHub repos/releases, papers, Chinese and English sources.
4. Extract facts with sources.
5. Compare evidence quality.
6. Synthesize conclusions, not a link dump.
7. Save important source notes to Obsidian when useful.

## Report Structure

```text
TL;DR
结论
证据地图
关键发现
对比分析
风险与反例
建议行动
待确认
来源
```

## Quality Rules

- Browse when information may be current or source-specific.
- Prefer official and primary sources.
- Mark inference explicitly.
- Include dates for time-sensitive claims.
- Avoid overclaiming from a single source.
- If source access is partial, say so.

## Tool Routing

- Current library/API docs: `context7-doc-research`.
- Web pages and dynamic sites: `web-access` or Tavily MCP.
- Long files or PDFs: `markdown-converter` then `content-summarizer`.
- Final persistent notes: `obsidian-knowledge-base`.
