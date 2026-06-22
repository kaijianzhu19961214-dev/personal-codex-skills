# GitHub Remote And Auth Reference

## Add A Remote

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

```bash
git remote get-url origin
```

Then update only when the requested target is clear:

```bash
git remote set-url origin <url>
```

## First Push

```bash
git push -u origin main
```

If GitHub created README, license, or `.gitignore` files in the remote before the local push, Git may reject the push. Diagnose with:

```bash
git fetch origin
git log --oneline --decorate --graph --all -10
```

Do not force-push over remote commits unless the user explicitly approves replacing the remote history.

## HTTPS Credential Failure

Common error:

```text
fatal: could not read Username for 'https://github.com': Device not configured
```

Meaning: local commits may be fine, but Git cannot authenticate to GitHub over HTTPS.

Options:

- Use GitHub Desktop to sign in and push.
- Use a GitHub Personal Access Token when Git prompts for password.
- Switch the remote to SSH after confirming the SSH key works.

## SSH Checks

Check available keys:

```bash
ls -la ~/.ssh
```

Test GitHub SSH:

```bash
ssh -T git@github.com
```

If the command hangs or fails, do not assume the key is installed in GitHub. Ask the user to confirm the public key is added to GitHub or use HTTPS/GitHub Desktop instead.

Switch an existing remote to SSH:

```bash
git remote set-url origin git@github.com:<user>/<repo>.git
git remote -v
```

