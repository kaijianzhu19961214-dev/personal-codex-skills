# API Implementation Pattern

Use this reference when turning a discovered API into code.

## Integration Decision

Prefer this order:

1. Existing project helper or generated client
2. Official SDK
3. Existing HTTP client abstraction in the repo
4. New thin wrapper with typed request/response models
5. One-off script only for temporary migration or investigation

Avoid adding a new HTTP stack if the repository already has one.

## Python/FastAPI Pattern

Follow the user's AGENTS.md style:

- Use Pydantic v2 models for request/response shapes.
- Use `async def` for external API calls.
- Use typed function signatures.
- Handle errors and invalid states early.
- Convert provider errors into a small internal error model or custom exception.
- Keep route handlers thin; put API calls in service/client modules.
- Use `unittest` for tests.

Example shape:

```python
from pydantic import BaseModel


class ProviderRequest(BaseModel):
    resource_id: str
    include_archived: bool = False


class ProviderResponse(BaseModel):
    resource_id: str
    status: str


async def fetch_provider_resource(request: ProviderRequest) -> ProviderResponse:
    if not request.resource_id:
        raise ValueError("resource_id is required")

    # Call existing async HTTP client here.
    ...
```

## Error Handling

Document and model:

- Authentication failure
- Permission/scope failure
- Not found
- Validation error
- Rate limit
- Timeout/retryable service error
- Non-retryable provider error

Prefer provider-specific exception classes only when they reduce ambiguity.

## Tests

Include tests for:

- Request mapping
- Response parsing
- Expected provider errors
- Pagination, if any
- No-secret logging behavior, when auth is involved

