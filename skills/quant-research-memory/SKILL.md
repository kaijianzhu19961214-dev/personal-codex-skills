---
name: quant-research-memory
description: Personal quantitative research memory and storage-routing workflow. Use when Codex needs to decide where quant research artifacts should live across structured market/factor data, experiment metadata, Obsidian research memory, vector/embedding retrieval, and factor validation code; design bge-m3/Zvec/Chroma/Qdrant/pgvector upgrade paths; avoid mixing factor matrices with semantic memory; or audit whether a quant research workflow has the right storage, metadata, retrieval, and validation layers.
---

# Quant Research Memory

Use this skill to keep quant research storage sane. The key rule: vector search helps Codex remember and retrieve research context; it does not prove alpha.

中文说明：这个 skill 用来区分四层内容：结构化行情/因子数据、实验元数据、研究记忆、因子验证流程。它也规定什么时候才需要升级到 `bge-m3 + Zvec/Chroma/Qdrant/pgvector`。

## Four-Layer Model

| Layer | What belongs here | Current status | Preferred storage |
|---|---|---|---|
| 1. Structured data | prices, returns, factor matrices, holdings, NAV, backtest series | Not standardized in skills repo; should be implemented in Quant project | Parquet, DuckDB, PostgreSQL, ClickHouse |
| 2. Experiment metadata | factor id, formula, universe, horizon, IC, RankIC, Sharpe, turnover, cost, pass/fail | Partly represented in report templates; needs schema when experiments grow | SQLite, DuckDB, PostgreSQL |
| 3. Research memory | Obsidian notes, literature summaries, experiment summaries, failure records, code explanations, daily/weekly notes | Implemented with Obsidian + enquire-mcp | Obsidian + enquire-mcp; later bge-m3 + vector DB |
| 4. Factor validation | alignment, winsorization, standardization, neutralization, IC/RankIC, grouping, cost, OOS | Captured by `quant-factor-research`; code belongs in Quant project | Python project code and reproducible outputs |

## Routing Rules

- Numeric factor data does not go into Obsidian or vector DB as the primary store.
- Experiment metrics should be structured, even if a narrative summary is also saved to Obsidian.
- Research conclusions, failures, decisions, and interpretation should be saved to Obsidian.
- Vector DB stores embeddings of research text, not raw market data.
- Validation results must be reproducible from code and data, not only written in notes.

## Current System Assessment

For the current setup:

- Layer 3 is the most complete: Obsidian Vault, Web Clipper, `enquire-mcp`, daily/weekly automation.
- Layer 4 is specified by skills, but depends on Quant project implementation.
- Layer 1 should be decided inside the Quant project based on actual data size and pipeline.
- Layer 2 is the next useful addition once factor experiments become frequent.

## Upgrade Triggers

Add or upgrade a vector layer only when at least one condition is true:

- Obsidian has many research notes and keyword search is no longer enough.
- The user repeatedly asks historical questions such as "which factor failed before and why?"
- There are many PDF/HTML/literature notes that need semantic retrieval.
- Cross-language Chinese/English retrieval quality becomes important.

Do not add a vector database just to validate factors. Use factor tests for that.

## bge-m3 Guidance

`bge-m3` is a good future candidate for research memory because it supports multilingual retrieval and longer text. Use it for embeddings when the research memory layer outgrows current `enquire-mcp` retrieval.

Preferred future path:

```text
Obsidian research notes
→ bge-m3 embeddings
→ Zvec / Chroma / Qdrant / pgvector
→ Codex retrieves context
→ Quant code validates factors
```

## References

Read `references/storage-routing.md` for examples and upgrade decisions.
