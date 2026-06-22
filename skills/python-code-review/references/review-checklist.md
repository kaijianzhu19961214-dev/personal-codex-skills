# Python/FastAPI Review Checklist

Use this checklist when reviewing Python, FastAPI, SQLAlchemy, async services, and tests.

## FastAPI

- Route handlers are thin and delegate business logic to services.
- Request and response models use Pydantic v2, not raw dictionaries.
- Expected failures use `HTTPException` with appropriate status codes.
- Unexpected errors are not swallowed; logging/monitoring path exists.
- Dependencies are explicit and testable.
- Startup/shutdown logic uses lifespan context where relevant.
- Blocking I/O is not performed inside async routes.

## Pydantic v2

- Models distinguish input, internal, and output shapes when needed.
- Field defaults avoid mutable shared state.
- Validation is explicit for boundary conditions.
- `model_validate`, `model_dump`, and aliases are used consistently.

## Async And I/O

- Async functions await external calls.
- Sync libraries are not accidentally used in hot async paths.
- Timeouts exist for network calls.
- Retry behavior is bounded and safe.
- Cancellation or partial failure does not leave inconsistent state.

## SQLAlchemy 2.0

- Sessions are scoped correctly.
- Transactions are explicit around multi-step writes.
- Queries avoid N+1 behavior where it matters.
- Bulk operations are batched.
- ORM objects are not leaked across session boundaries.
- User input is parameterized; no SQL string interpolation.

## Security

- No secrets in logs, errors, docs, tests, or fixtures.
- Auth and permission checks happen before sensitive reads/writes.
- File paths are validated before reading/writing.
- External URLs and callbacks are constrained where relevant.
- Error messages do not expose sensitive internals.

## Tests

- Use `unittest` per user preference.
- Cover happy path, validation failure, dependency failure, and edge cases.
- Mock external services at boundaries.
- Test async code with an appropriate async test strategy already used by the repo.
- Do not add brittle tests that assert implementation details unnecessarily.

