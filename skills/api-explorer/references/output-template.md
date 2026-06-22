# API Exploration Output Template

Use this when summarizing API findings for the user or writing documentation.

## Minimal Finding

```markdown
**API**
<one sentence purpose>

**Endpoint**
`METHOD /path`

**Auth**
<token type, scopes, permissions, environment>

**Input**
- `<field>`: <type, required/optional, meaning>

**Output**
- `<field>`: <type, meaning>

**Errors**
- `<code/status>`: <cause and handling>

**Example**
```bash
<minimal command>
```
```

## Implementation Note

When proposing code changes, include only changed sections and avoid repeating full files unless requested.

```markdown
**Change**
- Add `<client_function>` to `<module>`.
- Add Pydantic models for request/response.
- Add unittest coverage for success, auth failure, and rate limit.

**Open Questions**
- Which environment should this call target?
- Is write access allowed for this operation?
```

