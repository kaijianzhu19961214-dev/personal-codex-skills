---
name: quant-research-report
description: Personal quantitative research report workflow for recurring Chinese-first research notes and formal reports. Use when Codex needs to turn factor research, backtest results, market analysis, strategy diagnostics, literature findings, IC/RankIC tables, grouped return charts, long-short performance, risk metrics, robustness checks, or Obsidian research materials into a concise actionable quant research report with conclusions, evidence, limitations, charts/tables, and next research actions.
---

# Quant Research Report

Use this skill to produce recurring quant research reports. Reports should be decision-useful: clear conclusion first, evidence next, limitations visible, actions concrete.

中文说明：这是你的个人量化研报 skill，用于把因子研究、回测结果、文献调研和策略诊断整理成中文优先、结构稳定、可执行的研报。

## Report Flow

1. Identify report type:
   - factor research
   - strategy backtest
   - market/factor monitoring
   - literature-driven research
   - weekly/monthly research update
2. Collect inputs:
   - factor definition
   - literature summary or research-summary notes
   - data period and universe
   - IC/RankIC and ICIR
   - grouped returns
   - long-short portfolio metrics
   - turnover and costs
   - robustness checks
   - charts/tables
3. State the conclusion first.
4. Separate facts, interpretation, and recommendations.
5. Include limitations and failure conditions.
6. Save or update the report in Obsidian when requested.

## Standard Sections

Use this structure unless the user asks otherwise:

```text
摘要
核心结论
研究背景
数据与样本
因子定义
检验方法
实证结果
策略表现
稳健性检验
风险与局限
结论与建议
下期计划
附录
```

## Writing Rules

- Chinese-first; keep factor names, code identifiers, and metric names in English when standard.
- Do not overstate backtest results.
- Always name the sample period and universe.
- Clearly label whether a result is in-sample, out-of-sample, or walk-forward.
- Mention transaction costs when discussing tradability.
- Use tables for metrics and bullets for action items.
- Do not duplicate code; describe changed logic and link files when needed.

## References

- Use `references/report-template.md` for the full report template.
- Use `references/metric-glossary.md` for common metric definitions.
- Use `academic-literature-research` for paper-backed context and `empirical-research-methods` for regression/robustness language.
