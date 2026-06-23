# Debugging Checklist

## Evidence First

- Preserve exact command output.
- Prefer small reproducible cases.
- Avoid editing before identifying at least one plausible mechanism.
- If a fix does not change the failing evidence, revert the assumption mentally and keep investigating.

## Python/FastAPI

- Check stack trace and exception type.
- Confirm sync vs async boundaries.
- Verify Pydantic v2 model validation.
- Check SQLAlchemy session lifecycle.
- Re-run focused `unittest` tests before broader suites.

## Quant

- Print date ranges and sample row counts at each pipeline stage.
- Check index uniqueness and monotonicity.
- Compare raw factor, processed factor, and portfolio weight snapshots.
- Validate IC using same forward return horizon as intended.
- Confirm long-short direction from economic intuition and IC sign.

## MCP/Plugin

- Check whether the tool is registered.
- Run the underlying CLI directly.
- Confirm env vars and PATH.
- Check native dependency load errors separately from app config errors.
