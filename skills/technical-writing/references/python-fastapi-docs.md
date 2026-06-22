# Python And FastAPI Documentation Rules

Use these rules when documenting Python, FastAPI, Pydantic, SQLAlchemy, or async API code.

## Style

- Use Chinese explanation with English code identifiers.
- Use `def` for pure function examples.
- Use `async def` for I/O examples.
- Add type hints to all function signatures.
- Prefer Pydantic v2 `BaseModel` examples over raw dictionaries.
- Use descriptive variable names with auxiliary verbs, such as `is_active`.
- Mention file and directory names in lowercase with underscores when documenting structure.

## FastAPI Endpoint Docs

Document:

- HTTP method and path
- Dependency inputs, when relevant
- Pydantic request model
- Pydantic response model
- Expected `HTTPException` cases
- Unexpected-error handling path, when relevant
- Async database or external API behavior

## Example

```python
from fastapi import APIRouter, HTTPException
from pydantic import BaseModel

router = APIRouter()

class MetricRequest(BaseModel):
    symbol: str

class MetricResponse(BaseModel):
    symbol: str
    is_active: bool

@router.post("/metrics", response_model=MetricResponse)
async def create_metric(request: MetricRequest) -> MetricResponse:
    if not request.symbol:
        raise HTTPException(status_code=400, detail="symbol is required")

    return MetricResponse(symbol=request.symbol, is_active=True)
```

## Test Docs

When documenting tests, use `unittest`:

```python
import unittest

class TestMetricApi(unittest.TestCase):
    def test_create_metric_requires_symbol(self) -> None:
        ...
```

## Common Pitfalls

- Do not document raw `dict` payloads as the primary interface when Pydantic models exist.
- Do not omit expected errors.
- Do not describe blocking I/O in route handlers as acceptable.
- Do not duplicate full implementation code when only documentation changes are requested.

