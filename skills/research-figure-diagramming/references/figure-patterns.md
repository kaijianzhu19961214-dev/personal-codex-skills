# Figure Patterns

## Factor Research Pack

Minimum report figures:

1. Factor coverage over time.
2. IC / RankIC time series.
3. IC distribution.
4. Quantile return bar chart.
5. Long-short cumulative return.
6. Long-short drawdown.
7. Turnover and cost sensitivity.

## Imagegen Use Cases

Use generated images for:

- report cover image for a monthly quant research note
- concept illustration for "factor decay" or "cross-sectional ranking"
- visual summary card for an Obsidian note
- explanatory diagram background when no real data is represented
- article thumbnail for a public-facing research summary

Avoid generated images for:

- measured performance curves
- factor value distributions
- regression or IC results
- tables or exact numerical evidence

## Process Diagram

Use for method explanation:

```text
Data
-> Cleaning
-> Factor Construction
-> Preprocessing
-> Neutralization
-> IC Test
-> Group Backtest
-> Portfolio Simulation
-> Report
```

## Figure Quality Checklist

- Title states the claim.
- Axes include units and frequency.
- Sample period is visible.
- Universe is named.
- Cost assumption is labeled when relevant.
- Outliers or regime breaks are annotated.
- Source data and code path are preserved.
- Generated illustrations are clearly not confused with measured results.
