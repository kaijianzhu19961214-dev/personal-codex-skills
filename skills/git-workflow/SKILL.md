---
name: git-workflow
description: Safe local Git and GitHub repository workflow guidance. Use when Codex needs to inspect repository state, initialize a repo, configure remotes, stage and commit changes, push or pull branches, handle authentication failures, manage stashes, resolve merge or rebase conflicts, recover from non-destructive Git mistakes, or explain Git status without overwriting user work.
---

# Git Workflow

Use this skill for cautious, user-respecting Git work. Prefer small, inspectable steps and protect uncommitted changes, especially changes that Codex did not make.

中文说明：这个 skill 用于安全处理本地 Git 和 GitHub 同步流程，重点是先检查状态、保护用户改动、避免误覆盖。

## Core Rules / 核心规则

- Inspect before acting: run `git status --short --branch` before staging, committing, pulling, rebasing, or pushing.
- 操作前先检查：暂存、提交、拉取、变基或推送前，先运行 `git status --short --branch`。
- Preserve user work: never run destructive commands such as `git reset --hard`, `git checkout -- <path>`, `git clean -fd`, force-push, or branch deletion unless the user explicitly asks for that exact operation.
- 保护用户改动：除非用户明确要求，不运行 `git reset --hard`、覆盖文件、清理未跟踪文件、强推或删除分支等破坏性命令。
- Separate unrelated changes: commit only files relevant to the requested task. If unrelated dirty files exist, leave them alone and mention them.
- 隔离无关改动：只提交与当前任务有关的文件；发现无关改动时保留并告知用户。
- Prefer non-interactive commands: avoid interactive rebase, interactive add, and editor-opening commits unless the user asks.
- 优先非交互命令：避免进入交互式 rebase、交互式 add 或打开编辑器提交。
- Explain authentication blockers plainly: distinguish local Git state from GitHub credential, remote, SSH key, or permission problems.
- 清楚解释认证问题：区分本地 Git 状态、GitHub 凭据、远程地址、SSH key 和权限问题。
- Keep remote operations explicit: before `push`, show or inspect `git remote -v` and the current branch.
- 明确远程操作：推送前检查 `git remote -v` 和当前分支。

## Default Workflow / 默认流程

1. Inspect state:
   ```bash
   git status --short --branch
   git remote -v
   ```
   先确认当前分支、未提交改动和远程仓库地址。
2. Identify whether the task is local-only, remote/GitHub-related, or conflict recovery.
   判断任务属于本地提交、远程/GitHub 同步，还是冲突恢复。
3. For local commits, review changed files with `git diff --stat` and targeted `git diff -- <path>` before staging.
   本地提交前先看变更统计和关键文件 diff。
4. Stage only relevant files.
   只暂存相关文件。
5. Commit with a concise message that describes the user-visible change.
   使用简洁、能说明改动意图的提交信息。
6. Push only when the user asked for upload/sync or when push is clearly part of the requested workflow.
   只有用户要求上传/同步，或任务明显包含推送时，才执行 push。
7. If any command fails, stop and diagnose from the error before trying a broader command.
   命令失败时先根据错误诊断，不要立刻尝试更激进的命令。

## Task References / 任务参考

- For day-to-day command sequences, read `references/local-git.md`.
- 日常本地 Git 命令流程，读取 `references/local-git.md`。
- For GitHub remote setup, HTTPS token issues, SSH key checks, and first push problems, read `references/github-remote-auth.md`.
- GitHub 远程仓库、HTTPS token、SSH key 和首次 push 问题，读取 `references/github-remote-auth.md`。

## Commit Messages / 提交信息

Use imperative, concise messages:

使用祈使句和简洁描述：

```text
Add git workflow skill
Fix metrics annualization guard
Update personal Codex skills README
```

Avoid vague messages such as `update`, `fix`, or `changes`.

避免 `update`、`fix`、`changes` 这类过于模糊的提交信息。

## Conflict Handling / 冲突处理

When a merge, pull, or rebase conflict occurs:

当 merge、pull 或 rebase 发生冲突时：

1. Run `git status --short --branch`.
   先查看状态。
2. List conflicted files.
   列出冲突文件。
3. Open only the conflicted files needed for the task.
   只打开和任务相关的冲突文件。
4. Resolve by preserving both user intent and requested changes.
   解决冲突时同时保留用户意图和本次请求的改动。
5. Run relevant tests or validation when available.
   有测试或校验命令时运行它们。
6. Stage resolved files and continue only the operation that caused the conflict.
   暂存已解决文件，并只继续导致冲突的那个操作。

Do not abort, reset, or overwrite without explicit user approval.

没有用户明确同意，不要中止、重置或覆盖改动。
