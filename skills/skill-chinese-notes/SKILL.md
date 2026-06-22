---
name: skill-chinese-notes
description: Add concise Chinese guidance to imported or third-party Codex skills without weakening trigger metadata. Use after installing, copying, vendoring, or updating a skill when the user wants Chinese annotations, bilingual explanations, localized reading notes, or a personal Chinese-maintained version while preserving the original skill behavior.
---

# Skill Chinese Notes

Use this skill to localize an imported skill for Chinese reading while preserving Codex compatibility. The goal is not full translation; it is a thin layer of Chinese guidance that makes the skill easier for the user to maintain.

中文说明：这个 skill 用来给第三方或新导入的 skill 添加简短中文导读。重点是不破坏 `name`、`description` 等触发字段，不改变原始 workflow 的含义。

## Core Rules / 核心规则

- Preserve frontmatter trigger fields: keep `name` unchanged and keep `description` primarily English unless the user explicitly asks otherwise.
- 保留触发字段：不要改 `name`；`description` 尽量保持英文为主，避免影响 Codex 判断何时触发。
- Keep original English instructions unless there is a clear bug, typo, or compatibility issue.
- 保留原始英文说明；不要把第三方 skill 改成只剩中文。
- Add concise Chinese notes after the relevant English paragraph or heading.
- 在对应英文段落或标题后添加简短中文说明。
- Prefer Chinese summaries, reading hints, and intent explanations over line-by-line translation.
- 优先添加中文摘要、阅读提示和意图解释，不做逐句机械翻译。
- Preserve licenses, attribution, links, scripts, assets, and reference file structure.
- 保留许可证、来源信息、链接、脚本、资源和引用文件结构。
- Validate the skill after editing.
- 编辑后运行 skill 校验。

## Workflow / 工作流程

1. Inspect the imported skill:
   ```bash
   sed -n '1,120p' <skill-dir>/SKILL.md
   find <skill-dir> -maxdepth 3 -type f | sort
   ```
   先查看 frontmatter、主体结构和文件列表。

2. Check whether Chinese notes already exist:
   ```bash
   rg -n "[\\p{Han}]" <skill-dir>
   ```
   如果已有中文，只补缺失部分，避免重复。

3. Add Chinese notes without changing trigger metadata:
   - Add one short `中文说明：...` paragraph after the opening overview.
   - Add bilingual headings only for major sections, for example `## Core Rules / 核心规则`.
   - Add 1-2 Chinese sentences after dense English paragraphs when they clarify intent.
   - Do not translate code blocks unless the surrounding explanation needs Chinese context.

4. If the skill has detailed references, read `references/localization-patterns.md` before editing those files.

5. Validate:
   ```bash
   python3 <skill-creator-dir>/scripts/quick_validate.py <skill-dir>
   ```
   If `PyYAML` is missing, install it into a temporary directory and run validation with `PYTHONPATH`; do not modify the user's global Python environment.

6. Commit separately:
   ```bash
   git add <skill-dir>
   git commit -m "Add Chinese notes to <skill-name> skill"
   ```
   中文化改动应该独立提交，便于和上游原版内容区分。

## What Not To Do / 不要这样做

- Do not rewrite the skill into a new opinionated workflow unless the user asks.
- 不要借中文化重写第三方 skill 的原始工作流。
- Do not remove license files or source references.
- 不要删除许可证或来源信息。
- Do not add long educational tutorials that make the skill noisy.
- 不要添加冗长教程，skill 应该保持轻量。
- Do not silently overwrite a user's existing Chinese edits.
- 不要静默覆盖用户已有中文修改。

