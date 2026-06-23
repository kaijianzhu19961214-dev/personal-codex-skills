# Factor Research Checklist

## Hypothesis

- What market behavior should this factor capture?
- Why should the signal persist after costs?
- Is it time-series, cross-sectional, or both?
- What horizon should it predict?

## Data

- Universe definition and rebalancing calendar.
- Price adjustment method.
- Trading status, suspension, limit-up/down handling.
- Industry and market cap data for neutralization.
- Forward returns aligned after factor formation.

## Construction

Common preprocessing order:

```text
raw factor
-> align date/universe
-> winsorize
-> standardize
-> neutralize
-> rank or score
-> lag before portfolio formation
```

## Validation

- Mean IC and RankIC.
- ICIR and t-stat.
- Monthly/quarterly stability.
- Factor decay by horizon.
- Quantile monotonicity.
- Long-short annualized return, volatility, Sharpe, max drawdown.
- Turnover and cost sensitivity.
- Industry and size exposure.

## Leakage Audit

- No future returns in factor construction.
- No using end-of-day data for same-day tradable portfolio unless explicitly modeled.
- No neutralization with future industry membership or market cap.
- No benchmark constituent survivorship leakage.
- No post-event filtering based on future availability.

## Research Note Fields

```yaml
factor_name:
factor_type:
universe:
horizon:
data_start:
data_end:
frequency:
status: idea|testing|validated|rejected|monitoring
```
