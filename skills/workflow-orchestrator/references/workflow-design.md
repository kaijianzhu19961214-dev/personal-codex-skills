# Workflow Design

Use this reference when a task should become a repeatable workflow.

## Workflow Definition

Capture:

- Name
- Goal
- Trigger phrases
- Required inputs
- Optional inputs
- Tools used
- Step outputs
- Confirmation points
- Failure recovery
- Final deliverable

## Step Contract

Each step should answer:

```text
Step:
Input:
Action:
Output:
Validation:
Failure handling:
```

Avoid vague steps such as "process data". Prefer specific verbs:

- `fetch_market_data`
- `normalize_api_response`
- `render_report`
- `validate_schema`
- `commit_changes`

## Checkpoints

Add checkpoints before:

- External writes
- User-visible messages
- Deletions
- Payments or orders
- Git push or release publication
- Changing credentials, scopes, or permissions
- Long-running or expensive jobs

At a checkpoint, state:

- What will happen
- Which resource is affected
- Whether the operation is reversible
- The exact next command/tool action when practical

## Final Summary

Use this compact structure:

```text
Done:
- <deliverable>

Validated:
- <checks>

Remaining:
- <only if something is genuinely left>

Resume point:
- <safe next step if interrupted>
```

