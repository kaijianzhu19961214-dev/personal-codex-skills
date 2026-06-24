---
name: financial-report-ingestion
description: Personal financial research report ingestion workflow for quantitative research. Use when Codex needs to find, index, summarize, tag, or route broker research reports, financial engineering reports, macro strategy reports, industry reports, analyst report collections, local PDFs, or report metadata into Obsidian, MinIO, PostgreSQL, and quant research notes while preserving sources and avoiding full-text copyright copying.
---

# Financial Report Ingestion

Use this skill to turn financial research reports into a useful private research index and Obsidian knowledge notes.

中文说明：这个 skill 用于金融研报入库，尤其是券商金工、宏观策略、行业深度、产业链、库存/供需等报告。默认保存“索引 + 摘要 + 数据线索 + 因子启发”，不把整篇研报全文复制进 Obsidian。

## Core Boundary

- Save metadata, source links, summaries, data clues, factor ideas, and personal research notes.
- Do not copy full copyrighted report text into Obsidian.
- Do not bypass paywalls, member systems, DRM, or internal access controls.
- For user-provided local PDFs, create private summaries and indexes; preserve file paths or MinIO URIs instead of duplicating full content.

## Routing

| Content | Destination |
|---|---|
| Report title, institution, authors, date, topic, URL | Obsidian + later PostgreSQL |
| PDF file legally obtained by user | MinIO or local archive |
| Concise Chinese summary | Obsidian |
| Tables or data series worth structuring | PostgreSQL / ClickHouse candidate |
| Factor/strategy ideas | Obsidian + Quant project backlog |
| Full report text | Do not ingest by default |

## Search Workflow

1. Define the target:
   - analyst name
   - institution
   - report topic
   - date range
   - report type
2. Search multiple sources:
   - official institution research pages
   - public report indexes
   - search operators such as `site:pdf.dfcfw.com`
   - local files if the user provides a directory
3. Extract report metadata:
   - `report_id`
   - `title`
   - `institution`
   - `authors`
   - `published_date`
   - `report_type`
   - `topic_tags`
   - `source_url`
   - `pdf_url_or_file_uri`
   - `source_confidence`
4. Deduplicate by title + date + institution.
5. Write an Obsidian index note or update an existing one.
6. Summarize selected reports only when the source is accessible and within copyright-safe excerpt limits.

## Obsidian Index Shape

```text
## TL;DR
## Coverage
## Source Map
## Report Index
## Themes
## Factor Ideas
## Data Clues
## To Summarize Next
## Notes On Copyright And Access
```

## Report Note Shape

```text
## Report Info
## TL;DR
## Key Conclusions
## Evidence And Data Clues
## Factor / Strategy Ideas
## Risks And Caveats
## Validation Plan
## Source
```

## Quality Rules

- Mark source confidence:
  - `official`: official institution page
  - `public-index`: public report index page
  - `pdf-direct`: direct public PDF
  - `secondary`: repost or media page
  - `local-user-file`: file provided by user
- Separate report facts from personal inference.
- Preserve dates in `YYYY-MM-DD` when possible.
- Keep summaries compact and actionable for quant research.
- Flag data-rich reports for later structured extraction.
- For analyst report collections, create an index first; summarize only the most relevant reports.
