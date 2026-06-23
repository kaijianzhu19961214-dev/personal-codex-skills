# Vault Structure

Default Vault:

```text
/Users/zhukaijian/Documents/Obsidian Vault
```

## Folders

| Folder | Purpose |
|---|---|
| `00_Inbox/` | Fast capture, unsorted notes, temporary imported summaries |
| `10_Projects/` | Active project notes, repo notes, project decisions, implementation logs |
| `20_Areas/` | Long-term areas of responsibility, such as quant research, FastAPI, AI tools |
| `30_Resources/` | Literature notes, article notes, book notes, docs notes, tool notes |
| `40_Permanent/` | Evergreen notes, one durable idea per note |
| `50_MOCs/` | Maps of Content and index pages |
| `60_Daily/` | Daily notes and lightweight work journals |
| `90_Archive/` | Inactive projects or old notes |
| `99_Templates/` | Reusable note templates |
| `attachments/` | Images, PDFs, exported files, screenshots |

## Routing Rules

- New unsorted note: `00_Inbox/YYYY-MM-DD-title.md`
- External article/PDF/video note: `30_Resources/YYYY-MM-DD-title.md`
- Durable concept: `40_Permanent/title.md`
- Active repo/project: `10_Projects/project-name.md`
- Long-lived domain: `20_Areas/domain-name.md`
- Index or topic overview: `50_MOCs/topic-moc.md`
- Daily note: `60_Daily/YYYY-MM-DD.md`

## Naming

- Use lowercase English slugs for project/repo notes when the project name is English.
- Use concise Chinese titles for Chinese knowledge notes.
- Prefix date for source notes and daily notes.
- Avoid special filesystem characters: `/`, `:`, `*`, `?`, `"`, `<`, `>`, `|`.

## Maintenance

- Inbox notes should eventually move into Projects, Resources, Permanent, or Archive.
- Permanent notes should be linked from at least one MOC or area note.
- Project notes should include current status and next actions.
- Source notes should keep their source URLs or file paths.
