---
name: empirical-research-methods
description: Personal empirical research methodology workflow for economics, finance, social science, and quantitative strategy validation. Use when Codex needs to design empirical tests, regression specifications, panel/cross-sectional models, event studies, Fama-MacBeth regressions, robustness checks, placebo tests, controls, fixed effects, clustering, identification assumptions, bias audits, reproducible tables, or methodology sections for factor research, cross-sectional alpha, and quant research reports.
---

# Empirical Research Methods

Use this skill to make empirical claims testable and defensible. It complements `quant-factor-research`: that skill focuses on factor workflow, while this skill focuses on identification, regression design, and robustness.

中文说明：这个 skill 用于经济学/金融实证方法，特别适合截面因子、回归检验、稳健性检验和研报方法论。

## Method Flow

1. State the empirical claim.
2. Define unit of observation:
   - stock-day
   - stock-month
   - portfolio-month
   - event window
3. Define dependent variable.
4. Define key explanatory variable or factor.
5. Define controls.
6. Choose specification:
   - cross-sectional regression
   - panel regression
   - Fama-MacBeth
   - event study
   - difference-in-differences
   - placebo test
7. Specify fixed effects and clustering.
8. Define robustness checks.
9. Translate findings into research/report language.

## Quant Applications

- Test whether a factor predicts future returns after controls.
- Check whether factor alpha survives industry and size neutralization.
- Evaluate factor performance across regimes.
- Compare cross-sectional and time-series evidence.
- Diagnose whether a signal is just liquidity, size, volatility, or momentum exposure.

## Output Shape

```text
研究假设
样本与变量
识别思路
模型设定
控制变量
固定效应与标准误
稳健性检验
解释边界
研报表述
```

## References

Read `references/empirical-checklist.md` for specification and robustness patterns.
