# FastAPI Endpoint Documentation Template

Use this template for each endpoint. Keep only fields that apply.

```markdown
### `<METHOD> <PATH>`

<one sentence purpose>

**认证与权限**

- 认证：<required/optional/none>
- 权限：<scope/role/待确认>

**请求参数**

| 位置 | 字段 | 类型 | 必填 | 说明 |
|---|---|---|---|---|
| path | `id` | `int` | 是 | 资源 ID |
| query | `limit` | `int` | 否 | 返回数量 |
| body | `name` | `str` | 是 | 名称 |

**请求体**

`<RequestModel>`

```json
{
  "name": "example"
}
```

**响应**

`<ResponseModel>`

```json
{
  "id": 1,
  "name": "example"
}
```

**错误**

| 状态码 | 场景 | 返回 |
|---|---|---|
| 400 | 参数非法 | `{"detail": "..."}` |
| 404 | 资源不存在 | `{"detail": "..."}` |

**示例**

```bash
curl -X GET "http://localhost:8000/path"
```

**备注**

- <pagination/idempotency/side effect/rate limit>
```

## Review Checklist

- Method and path match router inclusion.
- Parameters match Pydantic/FastAPI annotations.
- Response model matches `response_model` or actual return object.
- Expected `HTTPException` cases are documented.
- Examples are minimal and realistic.

