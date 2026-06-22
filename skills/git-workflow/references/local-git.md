# Local Git Reference

## Inspect

```bash
git status --short --branch
git diff --stat
git diff -- <path>
git log --oneline --decorate -5
```

Use `rg --files` or targeted file reads to understand changed files before staging.

## Initialize A Repository

```bash
git init -b main
git status --short --branch
```

If Git identity is missing, prefer repository-local config for one-off/personal repos:

```bash
git config user.name "<name>"
git config user.email "<email>"
```

Use global config only when the user explicitly wants the identity applied across repositories.

## Stage And Commit

```bash
git add <path> <path>
git diff --cached --stat
git diff --cached -- <path>
git commit -m "<message>"
```

Stage explicit paths instead of `git add .` when unrelated files are present.

## Pull

Before pulling:

```bash
git status --short --branch
git remote -v
```

If there are local changes, avoid pulling until the changes are committed, stashed with user approval, or confirmed unrelated and safe.

## Stash

Use stash only when it helps preserve local work before a pull, checkout, or rebase:

```bash
git stash push -m "<reason>" -- <path>
git stash list
git stash show --stat stash@{0}
```

Do not drop stashes unless the user explicitly asks.

## Push

```bash
git branch --show-current
git remote -v
git push -u origin <branch>
```

Use `-u` for the first push of a branch. For later pushes, plain `git push` is usually enough.

