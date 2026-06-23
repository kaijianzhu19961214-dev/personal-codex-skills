---
name: mindmap-markmap
description: Personal Markdown-to-mindmap workflow. Use when the user asks to create a mind map, markmap, visual outline, knowledge graph outline, concept map, learning map, research map, Obsidian note map, or convert summaries/Markdown/meeting notes/research notes into a hierarchical mindmap-friendly Markdown or HTML artifact.
---

# Mindmap Markmap

Use this skill to turn structured notes into a mindmap-friendly hierarchy. It pairs well with `content-summarizer`, `markdown-converter`, and `obsidian-knowledge-base`.

中文说明：这个 skill 用于把长文总结、研究报告、会议纪要或 Obsidian 笔记转成可视化思维导图结构。默认先输出 Markmap 友好的 Markdown。

## Core Rules

- Start from a clear central topic.
- Use 2-5 top-level branches unless the user asks for exhaustive mapping.
- Keep nodes short; details belong in child nodes.
- Preserve source links as leaf nodes.
- Do not force a mindmap for flat data; suggest table or outline when better.

## Output Formats

Default:

```markdown
# Topic

## Branch

### Subtopic

- Detail
```

When the user asks for an artifact, create `.md` for Markmap-compatible Markdown, or `.html` if a local Markmap renderer is available.

## Workflow

1. Identify source material.
2. If source is long, summarize first with `content-summarizer`.
3. Convert to hierarchy: central topic, branches, sub-branches, examples/evidence/actions.
4. If writing to Obsidian, save under `30_Resources/` or `50_MOCs/` depending on purpose.
5. Report the generated file path and suggested next refinement.
