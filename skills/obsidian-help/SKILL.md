---
name: obsidian-help
description: Personal Obsidian official-help workflow. Use when the user asks how to use Obsidian features, configure vault settings, plugins, templates, backlinks, graph view, properties, sync, publish, search, tags, links, daily notes, canvas, or wants up-to-date Obsidian documentation before changing the user's Obsidian knowledge base.
---

# Obsidian Help

Use this skill when the task is about understanding Obsidian itself rather than writing notes into the Vault. Prefer current official Obsidian documentation when behavior could have changed.

中文说明：这是 `obsidian-knowledge-base` 的官方文档查询补丁。它回答“Obsidian 怎么用/怎么配置/某个功能是什么”，不负责直接设计知识库内容。

## Workflow

1. Identify whether the user needs Obsidian product help or personal Vault note creation.
2. For product behavior, verify with official Obsidian docs or installed app state when possible.
3. For Vault writing, hand off to `obsidian-knowledge-base`.
4. For templates, properties, or links, explain the Obsidian feature and then apply the user's personal conventions.

## Output

- Chinese-first.
- Give concise steps.
- Include exact menu names or setting names when known.
- Mention whether a plugin is core, community, or third-party.
- Do not recommend installing community plugins without noting risk and maintenance.
