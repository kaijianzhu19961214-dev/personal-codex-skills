# Conversion Routes

Choose the first route that is available, local, and appropriate for the source. Preserve metadata and record limitations.

## Preferred Tool Order

1. Existing file-specific skills or local parsers already available in the environment.
2. `markitdown` or `uvx markitdown` for broad document conversion.
3. Browser/web extraction tools for dynamic webpages, login-gated pages, or content that needs readability cleanup.
4. Manual structured extraction for small pasted content.
5. External OCR/transcription/document intelligence only when the user approves or the content is non-sensitive.

## PDF

Best for text PDFs:

```bash
uvx markitdown input.pdf > output.md
```

Fallbacks:

- Use PDF text extraction tools for simple text.
- Use OCR/document intelligence only for scanned PDFs, image-heavy reports, or broken reading order.

Check:

- page order
- headings
- tables
- footnotes
- captions
- whether scanned pages were skipped

## Word / DOCX

Best route:

```bash
uvx markitdown input.docx > output.md
```

Check:

- heading hierarchy
- tables
- tracked changes/comments, if relevant
- embedded images and captions

For legal or review documents, note whether tracked changes/comments were preserved or ignored.

## PowerPoint / PPTX

Best route:

```bash
uvx markitdown input.pptx > output.md
```

Structure output by slide:

```markdown
## Slide 1: Title
```

Check:

- slide order
- speaker notes
- chart labels
- image-only slides

## Excel / CSV

Best route:

```bash
uvx markitdown input.xlsx > output.md
```

For large workbooks, prefer one section per sheet:

```markdown
## Sheet: sheet_name
```

Check:

- sheet names
- table boundaries
- formulas vs displayed values
- large row truncation

For analysis tasks, consider keeping CSV/XLSX as structured data instead of converting everything to prose Markdown.

## HTML / Webpage

For static public pages:

```bash
uvx markitdown https://example.com/page > output.md
```

For dynamic, login-gated, or JS-rendered pages:

- Use browser/web tools first.
- Extract article title, URL, publication date, headings, links, and visible text.
- Convert the cleaned content to Markdown.

Check:

- navigation/sidebar noise
- ads or comments accidentally included
- missing lazy-loaded content
- source URL and access time

## Transcript / Audio / Video

If a transcript already exists, convert or normalize the transcript directly.

Recommended structure:

```markdown
## Transcript Metadata

- Source:
- Speakers:
- Date:

## Transcript

### 00:00 Speaker
Text...
```

If transcription is required, note which transcription tool was used and whether timestamps/speaker labels are reliable.

## Images / OCR

Use OCR only when needed. Record:

- OCR tool
- language
- confidence or visible quality issues
- unreadable regions

Keep image references when they matter:

```markdown
![description](relative/path/to/image.png)
```

## JSON / XML

For configuration or API payloads, do not flatten away structure. Prefer fenced code blocks plus short descriptions:

````markdown
```json
{ "...": "..." }
```
````

For large structured data, summarize schema and preserve the original file path.

## Conversion Notes Template

Append when useful:

```markdown
---

## Conversion Notes

- Route:
- Quality:
- Missing or lossy content:
- Follow-up cleanup:
```
