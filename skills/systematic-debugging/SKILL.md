---
name: systematic-debugging
description: Personal systematic debugging workflow inspired by Superpowers-style debugging. Use when Codex needs to investigate failing tests, runtime errors, incorrect metrics, broken automations, MCP/plugin failures, data pipeline bugs, FastAPI/Python regressions, quant backtest anomalies, factor calculation mismatches, or any issue where evidence, reproduction, hypotheses, instrumentation, minimal fixes, and regression tests are required.
---

# Systematic Debugging

Use this skill when guessing would be expensive. Debugging should move from symptom to evidence to cause to fix.

中文说明：这个 skill 用于系统排查问题，先复现、再提出假设、再验证，避免靠直觉乱改。

## Debugging Flow

1. Capture the symptom:
   - exact error
   - command or user action
   - expected vs actual behavior
   - first known bad time or change
2. Reproduce with the smallest reliable case.
3. Inspect relevant logs, tests, data samples, and recent diffs.
4. List competing hypotheses.
5. Test hypotheses one at a time.
6. Apply the smallest fix that explains the evidence.
7. Add or update regression coverage when practical.
8. Re-run the original failing path.
9. Record the root cause and prevention note when useful.

## Output Shape

```text
Symptom
Reproduction
Evidence
Hypotheses
Root Cause
Fix
Validation
Prevention
```

## Quant-Specific Checks

For quant research and factor bugs, always consider:

- look-ahead bias
- survivorship bias
- wrong date alignment
- missing suspension/limit-up handling
- incorrect corporate action adjustment
- neutralization using future information
- cross-sectional rank direction reversed
- transaction cost omitted
- benchmark mismatch
- annualization or frequency mismatch

## References

For debugging checklists, read `references/debugging-checklist.md`.
