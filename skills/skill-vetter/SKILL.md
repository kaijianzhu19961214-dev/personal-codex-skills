---
name: skill-vetter
description: Personal security and compatibility vetting workflow for Codex skills. Use before installing, copying, syncing, or updating third-party skills from GitHub, marketplaces, zip files, or unknown sources; also use for periodic audits of already-installed skills. Checks Codex frontmatter compatibility, scripts, shell commands, network access, secret handling, file writes, external CLI dependencies, licenses, provenance, and install risk before recommending install, review, block, or sandbox-only use.
---

# Skill Vetter

Use this skill before installing or syncing third-party skills into the user's Codex environment or personal skills repository.

中文说明：这是用户个人版 skill 安装前安全审查流程。它适配当前 Codex skills 仓库，不照搬 OpenClaw 权限模型。重点是先读 `SKILL.md`、脚本和引用文件，判断是否存在危险命令、密钥读取、过宽文件访问、隐藏联网、frontmatter 不兼容或来源不明，再决定是否安装。

## Core Rules / 核心规则

- Vet before install when the source is third-party, unfamiliar, generated, or marketplace-hosted.
- 第三方、陌生、生成型或 marketplace 来源的 skill，安装前先审查。
- Do not execute bundled scripts during vetting unless they are clearly read-only and necessary.
- 审查阶段默认不执行 skill 附带脚本，除非明确只读且确有必要。
- Prefer reading raw files from the source repository before copying them into `~/.codex/skills`.
- 复制到 `~/.codex/skills` 前，优先先读源码文件。
- Treat `shell + network + secret/file access` as high risk.
- `shell + network + 密钥/文件访问` 组合视为高风险。
- A skill can be useful and still not worth installing globally.
- 有用不代表适合全局安装；可以选择项目级、沙箱或不安装。

## Vetting Workflow / 审查流程

1. Identify source and intent:
   - source URL or repo
   - author/organization
   - intended skill name
   - why the user wants it
2. Inspect file structure:
   ```bash
   find <skill-dir> -maxdepth 3 -type f | sort
   sed -n '1,180p' <skill-dir>/SKILL.md
   ```
3. Validate Codex compatibility:
   - Allowed frontmatter keys: `name`, `description`, `allowed-tools`, `license`, `metadata`
   - Move unsupported metadata such as `version`, `compatibility`, `hidden`, `github`, `tags` under `metadata` before installing into Codex.
4. Scan for red flags. Read `references/red-flags.md`.
5. Check scripts and assets:
   - shell/Python/JS scripts
   - hidden install hooks
   - network calls
   - filesystem writes
   - external CLI dependencies
6. Run `quick_validate.py` only after any compatibility edits.
7. Produce a vetting report using `references/report-template.md`.
8. If approved, then proceed with install, Chinese notes, repo sync, and commit.

## Verdicts / 结论等级

- `SAFE`: Low-risk, clear source, compatible, no suspicious behavior.
- `WARNING`: Usable but has external CLI, broad tool access, missing license, or minor compatibility edits.
- `DANGER`: Suspicious patterns or risky scripts; only use in sandbox after user approval.
- `BLOCK`: Credential theft, obfuscation, destructive commands, hidden exfiltration, or instructions to bypass safety.

## Codex-Specific Checks / Codex 专项检查

- `SKILL.md` exists and has clear `name` and `description`.
- `description` accurately describes triggers and exclusions.
- No unsupported frontmatter remains at top level.
- Bundled scripts are understandable and scoped.
- No install-time side effects are required just to read the skill.
- If external tools are required, document them in the final report.
- If syncing to `personal-codex-skills`, preserve license/source files where present.

## Output / 输出

Use Chinese by default. Keep the report concise but decisive.

```text
Skill Vetting Report
Verdict: SAFE / WARNING / DANGER / BLOCK
Skill: <name>
Source: <url/repo>

Why:
- <main reason>

Findings:
- [severity] <finding>

Required Fixes Before Install:
- <compatibility/security fixes, or none>

Recommendation:
- <install / install after edits / sandbox only / do not install>
```

