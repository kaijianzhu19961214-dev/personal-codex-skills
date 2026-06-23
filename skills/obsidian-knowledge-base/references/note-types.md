# Note Types

Use these templates as behavior rules. Template files live in `assets/templates/`.

## Inbox Note

Destination: `00_Inbox/`

Use for quick capture when the final category is unknown.

Minimum sections:

- `## Capture`
- `## Next`

## Literature / Source Note

Destination: `30_Resources/`

Use for articles, PDFs, docs, videos, podcasts, newsletters, official documentation, papers, and books.

Sections:

- `## TL;DR`
- `## Key Points`
- `## Evidence`
- `## My Notes`
- `## Action Items`
- `## To Confirm`

Frontmatter should include `source`, `author`, `published`, `accessed`, and `confidence` when available.

## Permanent Note

Destination: `40_Permanent/`

Use for one reusable idea, principle, pattern, or conclusion.

Rules:

- One idea per note.
- State the idea in the title or first paragraph.
- Link back to source notes.
- Prefer durable wording over temporary task language.

Sections:

- `## Idea`
- `## Why It Matters`
- `## Evidence`
- `## Links`

## Project Note

Destination: `10_Projects/`

Use for active work: repos, apps, research projects, personal systems, and implementation plans.

Sections:

- `## Status`
- `## Goals`
- `## Decisions`
- `## Current Context`
- `## Next Actions`
- `## Links`

For code projects, include repo path, branch, key commands, test status, and active risks.

## Meeting Note

Destination: `10_Projects/` when project-specific, otherwise `00_Inbox/`.

Sections:

- `## Summary`
- `## Decisions`
- `## Action Items`
- `## Open Questions`
- `## Notes`

Do not invent owners or deadlines.

## Code Session Handoff

Destination: `10_Projects/<project>/` when a project folder exists, otherwise `10_Projects/`.

Sections:

- `## Current State`
- `## Completed`
- `## Key Files`
- `## Validation`
- `## Next Actions`
- `## Risks`

Preserve exact repo paths, branch names, commit hashes, and commands.

## MOC

Destination: `50_MOCs/`

Use for topic index pages.

Sections:

- `## Overview`
- `## Core Notes`
- `## Projects`
- `## Resources`
- `## Open Questions`

MOCs should link notes instead of duplicating their content.
