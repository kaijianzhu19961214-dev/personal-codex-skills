# GitHub Remote And Auth Reference

本文件用于 GitHub 远程仓库、首次推送和认证问题排查。

## Add A Remote / 添加远程仓库

HTTPS:

```bash
git remote add origin https://github.com/<user>/<repo>.git
git remote -v
```

SSH:

```bash
git remote add origin git@github.com:<user>/<repo>.git
git remote -v
```

If `origin` already exists, inspect before changing:

如果 `origin` 已存在，先检查再修改：

```bash
git remote get-url origin
```

Then update only when the requested target is clear:

只有目标远程地址明确时才更新：

```bash
git remote set-url origin <url>
```

## First Push / 首次推送

```bash
git push -u origin main
```

If GitHub created README, license, or `.gitignore` files in the remote before the local push, Git may reject the push. Diagnose with:

如果 GitHub 网页提前创建了 README、license 或 `.gitignore`，本地首次推送可能被拒绝。用下面命令诊断：

```bash
git fetch origin
git log --oneline --decorate --graph --all -10
```

Do not force-push over remote commits unless the user explicitly approves replacing the remote history.

除非用户明确同意替换远程历史，不要强推覆盖远程提交。

## HTTPS Credential Failure / HTTPS 凭据失败

Common error:

```text
fatal: could not read Username for 'https://github.com': Device not configured
```

Meaning: local commits may be fine, but Git cannot authenticate to GitHub over HTTPS.

含义：本地提交可能完全正常，只是 Git 无法通过 HTTPS 登录 GitHub。

Options:

可选处理方式：

- Use GitHub Desktop to sign in and push.
- Use a GitHub Personal Access Token when Git prompts for password.
- Switch the remote to SSH after confirming the SSH key works.

## SSH Checks / SSH 检查

Check available keys:

检查本机已有 key：

```bash
ls -la ~/.ssh
```

Test GitHub SSH:

测试 GitHub SSH 连接：

```bash
ssh -T git@github.com
```

If the command hangs or fails, do not assume the key is installed in GitHub. Ask the user to confirm the public key is added to GitHub or use HTTPS/GitHub Desktop instead.

Switch an existing remote to SSH:

如果命令卡住或失败，不要假设 key 已经配置到 GitHub。请用户确认 public key 已添加到 GitHub，或改用 HTTPS/GitHub Desktop。

把已有远程地址切换为 SSH：

```bash
git remote set-url origin git@github.com:<user>/<repo>.git
git remote -v
```
