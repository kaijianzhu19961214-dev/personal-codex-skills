# Localization Patterns

Use this reference when adding Chinese notes to a longer skill or reference files.

## Preferred Patterns

Opening note:

```markdown
中文说明：这个 skill 用于...，重点是...。
```

Bilingual heading:

```markdown
## Default Workflow / 默认流程
```

Short intent note after an English paragraph:

```markdown
这段的重点是先确定设计目标，再开始实现，避免直接套模板。
```

Command explanation:

```markdown
先检查当前分支和未提交改动：
```

## Frontmatter

Keep this section mostly unchanged:

```yaml
---
name: existing-skill-name
description: Existing English trigger description...
---
```

Only adjust `description` if it is broken, missing important trigger terms, or the user explicitly asks for bilingual metadata.

## Density

Good Chinese notes should help the user skim:

- One Chinese overview near the top.
- Bilingual headings for major sections.
- Chinese notes after paragraphs that encode important judgment.
- No Chinese note for every bullet when the English is already simple.

## Upstream Updates

When updating a third-party skill from upstream:

1. Update or reinstall the original source.
2. Reapply Chinese notes only where useful.
3. Keep localization changes in a separate commit when possible.

