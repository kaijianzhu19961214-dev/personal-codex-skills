# Source Handling

## Preserve Sources

- Keep source titles, URLs, file paths, dates, authors, speakers, and timestamps when available.
- For local files, cite the absolute path or the exact filename the user supplied.
- For webpages, include the URL and note if the page was dynamic, login-gated, paywalled, unavailable, or only partially visible.
- For long videos or transcripts, cite timestamps when present.

## Fact vs Inference

Use explicit labels when the distinction matters:

- `事实`: directly supported by the source.
- `推断`: a reasonable interpretation, but not directly stated.
- `待确认`: not enough evidence, missing source, stale source, or conflicting source.

Do not convert inference into a definitive claim.

## Copyright-Safe Summaries

- Summarize in your own words.
- Avoid reproducing long passages from articles, books, transcripts, or paid content.
- Use short quotes only when a phrase is itself important evidence.
- If the user asks for full text extraction, provide a brief excerpt and explain that you can summarize the rest.

## Multi-Source Conflicts

When sources disagree:

1. Prefer primary sources over commentary.
2. Prefer newer sources for fast-changing topics.
3. State the conflict directly.
4. Explain what would resolve the conflict, such as official docs, changelog, release note, or repo commit.

## Evidence Quality

Use lightweight confidence markers when helpful:

- `高`: primary source, official docs, direct transcript, or local file.
- `中`: reputable secondary source or multiple consistent sources.
- `低`: single informal source, unclear date, partial access, or inferred from context.

## Sensitive Content

- Do not expose secrets, tokens, private credentials, personal addresses, or private meeting details unless the user explicitly asks and it is necessary.
- When summarizing shared logs or transcripts, redact obvious secrets and mention the redaction.
