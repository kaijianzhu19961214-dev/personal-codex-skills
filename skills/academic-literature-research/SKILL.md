---
name: academic-literature-research
description: Personal academic literature research workflow for finding, screening, reading, and synthesizing papers. Use when Codex needs to use or emulate OpenScholar, PaperQA2, LitReview, Semantic Scholar, arXiv, Google Scholar, official papers, or local PDF/RAG workflows to locate factor research, empirical finance, machine learning, economics, quantitative trading, or technical literature; extract citations and evidence; compare methods; write literature notes; or prepare source-grounded summaries for Obsidian and quant research reports.
---

# Academic Literature Research

Use this skill to turn a research question into a source-grounded literature pack. Prefer official papers, arXiv pages, journal pages, author pages, and reproducible code repositories over secondary summaries.

中文说明：这个 skill 用于学术文献检索、阅读和综述，尤其服务量化因子、实证金融、机器学习和策略研究。

## Tool Routing

- Use `literature-review` for systematic review and citation-backed synthesis.
- Use `deep-research-report` for broad multi-source landscape scans.
- Use `content-summarizer` for long article or paper summaries.
- Use `markdown-converter` or `document-parser` for PDFs and long documents.
- Use `obsidian-knowledge-base` to save literature notes.
- Use web search/Tavily/Context7 when current or official sources are needed.
- Treat OpenScholar and PaperQA2 as strong reference patterns: retrieve first, answer from cited evidence, and preserve paper metadata.

## Workflow

1. Define the research question and scope.
2. Build bilingual search queries when useful.
3. Search multiple source types:
   - academic search
   - arXiv/SSRN/NBER/journal pages
   - GitHub implementations
   - survey papers and references
4. Screen papers:
   - relevance
   - method quality
   - data/sample match
   - citation or venue signal
   - reproducibility
5. Extract structured fields.
6. Synthesize findings into themes.
7. Identify gaps, disagreements, and candidate research directions.
8. Save to Obsidian or hand off to `quant-factor-research`.

## Extraction Fields

```text
Title
Authors
Year
Venue
URL / DOI / arXiv
Research question
Data and universe
Method
Main result
Limitations
Relevance to current project
Implementation clues
```

## References

Read `references/literature-workflow.md` for screening and synthesis details.
