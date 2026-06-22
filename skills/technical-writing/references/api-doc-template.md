# API Documentation Template

Use this template for HTTP endpoints, SDK methods, service functions, or public APIs.

## Endpoint Template

```markdown
## `METHOD /path`

Purpose: one sentence.

### Input

Path parameters:

| Name | Type | Required | Description |
| ---- | ---- | -------- | ----------- |
| `id` | `str` | Yes | Resource identifier |

Query parameters:

| Name | Type | Required | Default | Description |
| ---- | ---- | -------- | ------- | ----------- |
| `limit` | `int` | No | `50` | Maximum number of items |

Request body:

```json
{
  "name": "example"
}
```

### Output

Status: `200 OK`

```json
{
  "id": "abc",
  "name": "example"
}
```

### Errors

| Status | Error | When it happens |
| ------ | ----- | --------------- |
| `400` | `invalid_request` | Input validation fails |
| `404` | `not_found` | Resource does not exist |

### Example

```bash
curl -X POST "http://localhost:8000/path" \
  -H "Content-Type: application/json" \
  -d '{"name":"example"}'
```
```

## Function Template

```markdown
## `function_name(input_model: InputModel) -> OutputModel`

Purpose: one sentence.

### Input

`InputModel`

| Field | Type | Required | Description |
| ----- | ---- | -------- | ----------- |
| `field` | `str` | Yes | What it controls |

### Output

`OutputModel`

### Errors

- `ValueError`: invalid local input.
- `HTTPException(404)`: resource not found.

### Example

```python
result = function_name(input_model=InputModel(field="value"))
```
```

## Required Quality Bar

- Inputs are explicit.
- Outputs are explicit.
- Expected errors are documented.
- At least one runnable or near-runnable example exists.
- Names match the codebase exactly.

