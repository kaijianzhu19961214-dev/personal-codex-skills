---
name: external-data-watch
description: Personal external statistics and industry data monitoring workflow for quantitative research. Use when Codex needs to track, collect, summarize, or route government statistics, industry association releases, inventory data, supply-demand forecasts, production/sales/import-export data, macro indicators, commodity/sector datasets, release calendars, data-source notes, or recurring data updates into Obsidian, PostgreSQL, ClickHouse, MinIO, and quant research reports.
---

# External Data Watch

Use this skill to monitor external statistics and industry data that support quant research and report writing.

中文说明：这个 skill 用于低频巡检国家统计、行业协会、交易所、海关、能源、库存、供需预测等外部数据源。它负责发现更新、记录来源、区分原始数值和研究解读，并把内容路由到 Obsidian / PostgreSQL / ClickHouse / MinIO。

## Core Rule

Do not put full numeric time series into Obsidian as the primary store. Obsidian stores source notes, data dictionaries, release notes, interpretation, caveats, and research conclusions.

## Routing

| Content | Destination |
|---|---|
| Raw files, Excel, CSV, PDF, zipped data | MinIO or local raw-data staging |
| Clean numeric time series | ClickHouse or PostgreSQL, depending on query pattern |
| Dataset metadata: source, frequency, unit, release lag, URL, revision rule | PostgreSQL and Obsidian source note |
| Release summaries and interpretation | Obsidian |
| Derived factors such as inventory change, supply-demand gap, diffusion index | Quant project code + ClickHouse |
| Research conclusions and report reuse notes | Obsidian + `quant-research-report` |

## Watchlist Workflow

1. Read the Obsidian watchlist note if available:
   - `/Users/zhukaijian/Documents/Obsidian Vault/30_Resources/外部统计与产业数据源清单.md`
2. For each active source:
   - check the official or primary source first
   - identify whether a new release exists
   - capture release date, period covered, URL, file name, and key fields
   - note whether data is preliminary, revised, final, or forecast
3. Classify the update:
   - no update
   - new data release
   - revision
   - methodology change
   - notable interpretation
   - needs manual review
4. Route outputs:
   - raw file/object URI
   - metadata row candidate
   - Obsidian source note update
   - possible factor idea
5. Write a concise Chinese report in Obsidian, preserving source links and uncertainty.

## Source Categories

Use stable categories:

- macro statistics
- industry association data
- commodity inventory
- supply-demand forecast
- production and sales
- import/export and customs
- price index
- capacity utilization
- policy/regulatory data
- exchange/warehouse data
- company or sector operating data

## Obsidian Note Shape

For source notes:

```text
## 数据源概览
## 更新频率与发布时间
## 字段与口径
## 原始文件/数据库位置
## 研究用途
## 已知问题
## 最近更新
## 相关因子想法
```

For weekly watch reports:

```text
## 本次巡检范围
## 新增/更新数据
## 口径变化
## 研究影响
## 可形成的因子假设
## 需要人工确认
## 下一步
```

## Quality Rules

- Prefer official sources and industry primary sources.
- Preserve original URL, release date, data period, unit, and frequency.
- Separate factual release information from interpretation.
- Mark uncertainty when only a secondary source is available.
- Do not invent values from a chart unless the chart is explicitly digitized.
- Record methodology or definition changes as high-priority notes.
- Treat forecast data separately from realized statistics.

## Automation Guidance

For low-frequency automation, weekly is usually enough. Use the automation to:

- scan the watchlist
- identify updates
- write/update Obsidian summary notes
- produce a candidate list of files or datasets to ingest

Do not let automation silently mutate production PostgreSQL / ClickHouse tables until ingestion scripts and validation checks are implemented.
