# Quant Research Storage Routing

## Layer 1: Structured Data

Use for:

- OHLCV
- adjusted prices
- returns
- factor matrices
- holdings
- account or portfolio NAV
- transaction logs
- benchmark series

Do not store this primarily in Obsidian or a vector DB.

Suggested storage:

- small local research: Parquet + DuckDB
- medium project: PostgreSQL or DuckDB
- large analytics: ClickHouse or partitioned Parquet

## Layer 2: Experiment Metadata

Use for:

```text
factor_id
factor_name
factor_formula
universe
start_date
end_date
rebalance_frequency
holding_period
ic_mean
rank_ic_mean
icir
long_short_return
sharpe
max_drawdown
turnover
cost_bps
is_passed
notes_path
code_commit
```

This is the layer that lets Codex answer structured questions:

- Which factors passed the threshold?
- Which experiments used CSI 1000?
- Which factor had high IC but failed after costs?

## Layer 3: Research Memory

Use for:

- Obsidian notes
- paper summaries
- experiment narratives
- failure analysis
- code explanations
- meeting notes
- daily/weekly summaries

Current implementation:

```text
Obsidian Vault
→ enquire-mcp
→ FTS5/BM25 + optional embedding retrieval
```

Future upgrade:

```text
bge-m3
→ Zvec / Chroma / Qdrant / pgvector
```

## Layer 4: Factor Validation

Use code and tests for:

- data alignment
- lagging signals
- winsorization
- standardization
- neutralization
- IC/RankIC
- grouping
- long-short simulation
- turnover and cost
- out-of-sample checks

Never accept a factor as useful because it appears in memory search. Memory search can find hypotheses; validation decides whether they survive.

## Upgrade Decision

Add Layer 2 before a heavy vector DB if:

- many experiments are being run
- metrics need filtering/comparison
- reports need stable tables
- factor candidate status must be tracked

Add or upgrade Layer 3 vector retrieval if:

- notes become too many for keyword search
- Chinese/English semantic retrieval matters
- literature and experiment narratives need cross-linking
- Codex needs "what did we decide before?" recall
