---
name: quant-factor-research
description: Personal quantitative factor research workflow for alpha and strategy development. Use when Codex needs to research, design, implement, test, or document time-series factors, price-volume factors, cross-sectional factors, fundamental/alternative factors, factor neutralization, IC/RankIC analysis, grouping backtests, long-short portfolios, turnover/cost analysis, robustness checks, factor decay, strategy integration, or Obsidian-backed quant research notes for trading strategy development.
---

# Quant Factor Research

Use this skill to turn a factor idea into a testable research artifact. The workflow favors evidence, leakage control, reproducibility, and clear research notes.

中文说明：这是你的个人量化因子研究 skill，用于量价因子、时序因子、截面因子、因子检验、回测和策略落地。

## Research Flow

1. Define the factor hypothesis:
   - economic intuition
   - expected direction
   - target universe
   - holding horizon
2. Identify data requirements:
   - prices, volume, turnover, volatility
   - fundamentals or alternative data
   - adjustment, suspension, limit, benchmark, industry
3. Specify factor construction.
4. Specify preprocessing:
   - missing values
   - winsorization
   - standardization
   - industry/size neutralization
5. Evaluate predictive power:
   - IC / RankIC
   - ICIR
   - hit rate
   - factor decay
6. Evaluate portfolio behavior:
   - quantile groups
   - long-short spread
   - turnover
   - transaction cost sensitivity
   - drawdown and risk metrics
7. Run robustness checks.
8. Save findings to Obsidian or hand off to `quant-research-report`.

## Factor Types

- Price-volume factors: momentum, reversal, volatility, volume-price divergence, liquidity, turnover, intraday strength.
- Time-series factors: trend, breakout, realized volatility, moving-average state, regime features.
- Cross-sectional factors: relative momentum, size, value, quality, growth, analyst revision, crowding, industry-relative signals.
- Composite factors: weighted scores, orthogonalized factors, ML-derived signals.

## Required Output

For every factor research task, produce:

```text
因子假设
数据需求
构造公式
避免未来函数的处理
检验指标
回测设计
风险与失效条件
下一步
```

## References

- Use `references/factor-research-checklist.md` for implementation and validation details.
- Use `quant-research-report` when the user asks for a formal recurring report.
