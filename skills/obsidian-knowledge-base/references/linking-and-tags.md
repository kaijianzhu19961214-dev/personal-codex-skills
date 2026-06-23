# Linking And Tags

## Links

- Use wiki links for notes: `[[note-title]]`.
- Use aliases when title clarity helps: `[[note-title|display text]]`.
- Link source notes to permanent notes and project notes.
- Prefer links and MOCs over deep folder nesting.

## Backlinks

When creating a permanent note from a source note, add:

```markdown
## Links

- Source: [[source-note]]
```

When creating a project note, link:

- related repo note
- project MOC
- relevant technical notes
- decision notes

## Tags

Use tags for broad filtering, not for every noun.

Recommended top-level tags:

- `#type/inbox`
- `#type/literature`
- `#type/permanent`
- `#type/project`
- `#type/meeting`
- `#type/code-session`
- `#domain/quant`
- `#domain/python`
- `#domain/fastapi`
- `#domain/ai-tools`
- `#status/seed`
- `#status/draft`
- `#status/active`
- `#status/evergreen`

## Source Confidence

Use frontmatter:

```yaml
confidence: high|medium|low
```

- `high`: official docs, local files, primary source, direct transcript.
- `medium`: reputable secondary source or multiple consistent sources.
- `low`: partial page, unclear date, informal source, or inferred summary.
