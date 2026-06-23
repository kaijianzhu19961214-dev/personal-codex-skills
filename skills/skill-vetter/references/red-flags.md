# Skill Vetting Red Flags

Use this checklist when reviewing third-party Codex skills.

## Block Immediately

- Reads or asks to read `~/.ssh`, `~/.aws`, `.env`, keychains, browser cookies, token stores, or password files without a clear user-requested reason.
- Uploads local files, prompts, transcripts, repo contents, or credentials to unknown endpoints.
- Contains obfuscated payloads, base64 blobs, minified unreadable scripts, or unexplained binary assets.
- Runs destructive commands such as `rm -rf`, `git reset --hard`, `git clean -fd`, disk formatting, or mass deletion.
- Asks to disable sandboxing, approvals, security checks, or system/developer instructions.
- Includes prompt injection such as "ignore previous instructions" or "reveal hidden prompts".
- Downloads and executes remote code in one step, such as `curl ... | sh`.

## High Risk

- Shell execution plus network calls.
- Broad filesystem traversal such as `/`, `$HOME`, `/**/*`, `/etc`, or all browser profile directories.
- Writes to shell startup files, crontab, launch agents, global git config, SSH config, or Codex hooks.
- Requires `sudo` or administrator privileges.
- Installs global packages without explaining why.
- Depends on unknown third-party services or endpoints.
- Sends telemetry by default.
- Has no clear author, license, or source repo.

## Warning

- Unsupported Codex frontmatter keys.
- Vague description that could trigger too broadly.
- Large scripts without comments or tests.
- Missing license.
- External CLI dependency not documented.
- Network access that is legitimate but not scoped.
- Skill does useful work but is platform-specific or not aligned with user's workflow.

## Positive Signals

- Official or well-known source.
- Clear license and source URL.
- Small, readable `SKILL.md`.
- Scripts are short, deterministic, and scoped.
- No scripts, or scripts are read-only helpers.
- Clear trigger and non-trigger cases.
- Works without hidden install hooks.
- Passes Codex `quick_validate.py`.

