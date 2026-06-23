# Empirical Checklist

## Regression Specification

Example:

```text
future_return_{i,t+h} =
  alpha
  + beta * factor_{i,t}
  + gamma * controls_{i,t}
  + fixed_effects
  + error_{i,t}
```

## Controls

Common controls in equity factor research:

- log market cap
- book-to-market or valuation proxy
- past returns
- volatility
- turnover or liquidity
- industry dummies
- beta or benchmark exposure

## Robustness

- different horizons
- different universes
- different rebalance frequencies
- subperiods
- market regimes
- industry-neutral and size-neutral variants
- placebo factor
- lagged signal
- cost and turnover sensitivity

## Reporting Language

- Say "is associated with" unless identification supports causality.
- Distinguish predictive signal from tradable alpha.
- Report sample period and standard error treatment.
- Treat insignificant or unstable results as evidence, not failure to hide.
