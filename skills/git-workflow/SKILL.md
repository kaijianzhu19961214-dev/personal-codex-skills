---
name: git-workflow
description: Safe local Git and GitHub repository workflow guidance. Use when Codex needs to inspect repository state, initialize a repo, configure remotes, stage and commit changes, push or pull branches, handle authentication failures, manage stashes, resolve merge or rebase conflicts, recover from non-destructive Git mistakes, or explain Git status without overwriting user work.
---

# Git Workflow

Use this skill for cautious, user-respecting Git work. Prefer small, inspectable steps and protect uncommitted changes, especially changes that Codex did not make.

## Core Rules

- Inspect before acting: run `git status --short --branch` before staging, committing, pulling, rebasing, or pushing.
- Preserve user work: never run destructive commands such as `git reset --hard`, `git checkout -- <path>`, `git clean -fd`, force-push, or branch deletion unless the user explicitly asks for that exact operation.
- Separate unrelated changes: commit only files relevant to the requested task. If unrelated dirty files exist, leave them alone and mention them.
- Prefer non-interactive commands: avoid interactive rebase, interactive add, and editor-opening commits unless the user asks.
- Explain authentication blockers plainly: distinguish local Git state from GitHub credential, remote, SSH key, or permission problems.
- Keep remote operations explicit: before `push`, show or inspect `git remote -v` and the current branch.

## Default Workflow

1. Inspect state:
   ```bash
   git status --short --branch
   git remote -v
   ```
2. Identify whether the task is local-only, remote/GitHub-related, or conflict recovery.
3. For local commits, review changed files with `git diff --stat` and targeted `git diff -- <path>` before staging.
4. Stage only relevant files.
5. Commit with a concise message that describes the user-visible change.
6. Push only when the user asked for upload/sync or when push is clearly part of the requested workflow.
7. If any command fails, stop and diagnose from the error before trying a broader command.

## Task References

- For day-to-day command sequences, read `references/local-git.md`.
- For GitHub remote setup, HTTPS token issues, SSH key checks, and first push problems, read `references/github-remote-auth.md`.

## Commit Messages

Use imperative, concise messages:

```text
Add git workflow skill
Fix metrics annualization guard
Update personal Codex skills README
```

Avoid vague messages such as `update`, `fix`, or `changes`.

## Conflict Handling

When a merge, pull, or rebase conflict occurs:

1. Run `git status --short --branch`.
2. List conflicted files.
3. Open only the conflicted files needed for the task.
4. Resolve by preserving both user intent and requested changes.
5. Run relevant tests or validation when available.
6. Stage resolved files and continue only the operation that caused the conflict.

Do not abort, reset, or overwrite without explicit user approval.

