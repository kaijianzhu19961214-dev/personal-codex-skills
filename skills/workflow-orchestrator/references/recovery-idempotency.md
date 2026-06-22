# Recovery And Idempotency

Use this reference when a workflow may be interrupted, retried, or partially applied.

## Idempotency Rules

- Prefer read-before-write.
- Use stable identifiers instead of names when available.
- Write to temp/local artifacts before updating external systems.
- Detect whether the target state already exists before creating it again.
- Avoid duplicate sends, duplicate uploads, duplicate tickets, or duplicate commits.

## Retry Rules

Retry only when the failure is likely transient:

- Network timeout
- Rate limit with retry-after
- Temporary service unavailable
- Lock contention

Do not retry blindly for:

- Authentication failure
- Permission denial
- Validation error
- Not found caused by wrong identifier
- Destructive action requiring confirmation

## Resume Notes

When interrupted, record:

- Completed steps
- Artifacts produced
- External resources already changed
- Last successful validation
- Next safe step

## Rollback

Prefer compensating actions only when they are explicit and safe.

Examples:

- Delete a draft created during a failed workflow only after confirming it is the draft from this run.
- Revert a generated local file with a patch only if Codex created it in the current task.
- Do not undo user edits or external changes without explicit approval.

