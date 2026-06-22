# Local Git Reference

本文件用于日常本地 Git 操作。原则是先观察状态，再做最小必要操作。

## Inspect / 检查状态

```bash
git status --short --branch
git diff --stat
git diff -- <path>
git log --oneline --decorate -5
```

Use `rg --files` or targeted file reads to understand changed files before staging.

暂存前先理解改动文件，必要时用 `rg --files` 或定向读取文件。

## Initialize A Repository / 初始化仓库

```bash
git init -b main
git status --short --branch
```

If Git identity is missing, prefer repository-local config for one-off/personal repos:

如果缺少 Git 身份信息，个人或一次性仓库优先使用仓库局部配置：

```bash
git config user.name "<name>"
git config user.email "<email>"
```

Use global config only when the user explicitly wants the identity applied across repositories.

只有用户明确希望所有仓库共用该身份时，才使用全局配置。

## Stage And Commit / 暂存和提交

```bash
git add <path> <path>
git diff --cached --stat
git diff --cached -- <path>
git commit -m "<message>"
```

Stage explicit paths instead of `git add .` when unrelated files are present.

存在无关改动时，使用明确路径暂存，避免直接 `git add .`。

## Pull / 拉取

Before pulling:

```bash
git status --short --branch
git remote -v
```

If there are local changes, avoid pulling until the changes are committed, stashed with user approval, or confirmed unrelated and safe.

如果存在本地改动，先提交、经用户同意后 stash，或确认改动无关且安全，再拉取。

## Stash / 暂存工作区

Use stash only when it helps preserve local work before a pull, checkout, or rebase:

```bash
git stash push -m "<reason>" -- <path>
git stash list
git stash show --stat stash@{0}
```

Do not drop stashes unless the user explicitly asks.

除非用户明确要求，不删除 stash。

## Push / 推送

```bash
git branch --show-current
git remote -v
git push -u origin <branch>
```

Use `-u` for the first push of a branch. For later pushes, plain `git push` is usually enough.

分支首次推送使用 `-u` 建立跟踪关系；后续通常直接 `git push`。
