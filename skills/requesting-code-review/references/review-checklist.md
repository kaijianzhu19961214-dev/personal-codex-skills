# Review Checklist

## Severity

- `P0`: data loss, security exposure, broken production path.
- `P1`: likely bug, incorrect output, major regression, invalid research result.
- `P2`: edge case, maintainability risk, missing test, confusing API behavior.
- `P3`: polish, naming, minor docs issue.

## Python/FastAPI

- Functions have type hints.
- Pydantic models validate external inputs.
- Async boundaries are respected.
- Errors are handled early with clear messages.
- Tests use `unittest` when adding project tests.

## Quant Research

- Factor calculation uses only information available at formation time.
- Forward returns match the tested horizon.
- Universe filtering is explicit.
- IC/RankIC, grouping, long-short, turnover, and costs are computed consistently.
- Reported annualization matches data frequency.

## Automation/Config

- Paths are absolute where required.
- Environment variables are not hardcoded secrets.
- Destructive operations require explicit user approval.
- Created files are in the intended workspace.
