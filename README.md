# Personal Codex Skills

This repository stores reusable Codex skills for personal use across machines.

## Skill Groups

### Photography Post-Processing

Use these skills for Lightroom/Photoshop-style photographic editing, not research-report figures or UI graphics:

- `photo-post-processing`: top-level dispatcher for photography editing tasks.
- `photo-critique`: photo diagnosis and practical edit suggestions.
- `lightroom-style-workflow`: non-destructive color grading and RAW/JPEG development.
- `photoshop-retouching-workflow`: local retouching, cleanup, layers, and portrait refinement.
- `local-photo-editor`: deterministic crop, resize, convert, export, metadata, and batch operations.
- `ai-photo-editing`: generative edits using Codex imagegen or similar image models.

### Quant Data And Research Memory

- `external-data-watch`: monitor external statistics, industry data, inventory, supply-demand forecasts, and route updates into Obsidian/PostgreSQL/ClickHouse/MinIO.
- `financial-report-ingestion`: index and summarize financial research reports into Obsidian without copying full copyrighted text.

## Layout

```text
skills/
  academic-literature-research/
    SKILL.md
    agents/
    references/
  agent-browser/
    SKILL.md
  anti-distill/
    SKILL.md
    prompts/
    examples/
  api-explorer/
    SKILL.md
    references/
  awesome-human-distillation/
    SKILL.md
    references/
  browser-verification/
    SKILL.md
    references/
  content-summarizer/
    SKILL.md
    agents/
    references/
  context-compression/
    SKILL.md
  markdown-converter/
    SKILL.md
    agents/
    references/
  find-skills/
    SKILL.md
  doc-coauthoring/
    SKILL.md
  context7-doc-research/
    SKILL.md
    references/
  deep-research-report/
    SKILL.md
  document-parser/
    SKILL.md
  empirical-research-methods/
    SKILL.md
    agents/
    references/
  fastapi-api-doc/
    SKILL.md
    references/
  fastapi-test-writer/
    SKILL.md
    references/
  frontend-design/
    SKILL.md
    LICENSE.txt
  frontend-implementation-from-design/
    SKILL.md
    references/
  gh-address-comments/
    SKILL.md
    scripts/
  gh-fix-ci/
    SKILL.md
    scripts/
  git-workflow/
    SKILL.md
    references/
  github-skill-forge/
    SKILL.md
    scripts/
  humanizer/
    SKILL.md
  interaction-design/
    SKILL.md
    references/
  karpathy-guidelines/
    SKILL.md
  latex-document/
    SKILL.md
  literature-review/
    SKILL.md
  memory-config/
    SKILL.md
  memory-recall/
    SKILL.md
  memory-to-skill/
    SKILL.md
  multi-search-engine/
    SKILL.md
    references/
  mindmap-markmap/
    SKILL.md
  obsidian-knowledge-base/
    SKILL.md
    agents/
    assets/
    references/
    scripts/
  obsidian-pkm-workflows/
    SKILL.md
  obsidian-help/
    SKILL.md
  paper-to-code/
    SKILL.md
  pdf-generation/
    SKILL.md
  quant-factor-research/
    SKILL.md
    agents/
    references/
  quant-research-memory/
    SKILL.md
    agents/
    references/
  quant-research-report/
    SKILL.md
    agents/
    references/
  python-code-review/
    SKILL.md
    references/
  requesting-code-review/
    SKILL.md
    agents/
    references/
  research-figure-diagramming/
    SKILL.md
    agents/
    references/
  skill-chinese-notes/
    SKILL.md
    references/
  skill-priority-policy/
    SKILL.md
    agents/
    references/
  skill-vetter/
    SKILL.md
    references/
  structured-planning/
    SKILL.md
    agents/
    references/
  systematic-debugging/
    SKILL.md
    agents/
    references/
  technical-writer/
    SKILL.md
  technical-writing/
    SKILL.md
    references/
  ui-ux-pro-max/
    SKILL.md
  web-access/
    SKILL.md
    scripts/
    references/
  workflow-orchestrator/
    SKILL.md
    references/
vendor/
  memsearch-codex/
    hooks/
    scripts/
    prompts/
```

## Install On A New Machine

Clone this repository:

```bash
git clone https://github.com/<your-github-user>/<repo-name>.git ~/dev/personal-codex-skills
cd ~/dev/personal-codex-skills
```

Install all skills with symlinks:

```bash
./scripts/link_skills.sh
```

Or install a single skill with Codex:

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/agent-browser
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/anti-distill
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/api-explorer
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/awesome-human-distillation
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/browser-verification
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/content-summarizer
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/context-compression
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/markdown-converter
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/context7-doc-research
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/deep-research-report
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/document-parser
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/fastapi-api-doc
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/fastapi-test-writer
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/interaction-design
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/latex-document
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/literature-review
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/git-workflow
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/frontend-design
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/frontend-implementation-from-design
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/gh-address-comments
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/gh-fix-ci
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/skill-chinese-notes
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/skill-priority-policy
```

## Skill Priority Policy

This repository is the canonical source for personal Codex skills.

Priority model:

1. Current user request wins for the current turn.
2. Project-local `AGENTS.md` wins for the current repository's coding style and workflow.
3. Personal skills in this repository define reusable long-term preferences.
4. `~/.codex/skills` exposes skills to Codex, usually through symlinks from this repository.
5. `~/.codex/skills/.system` and bundled runtime skills are baseline system capabilities and should not be edited.
6. Third-party marketplace or GitHub skills should be vetted, annotated, wrapped, or vendored deliberately instead of silently modified.

Avoid duplicate skill names. When a third-party skill overlaps with a personal workflow, prefer a clearly named personal wrapper skill and keep upstream behavior readable.

## Skill Groups

Use these groups to decide priority and avoid accidental overlap:

| Group | Primary skills | Role |
|---|---|---|
| Core workflow | `structured-planning`, `systematic-debugging`, `requesting-code-review`, `workflow-orchestrator`, `git-workflow`, `skill-priority-policy`, `skill-vetter` | Plan, debug, review, orchestrate, and govern work. |
| Python/FastAPI | `python-code-review`, `fastapi-test-writer`, `fastapi-api-doc`, `technical-writing` | Project-specific engineering quality and documentation. |
| Quant research | `quant-factor-research`, `quant-research-memory`, `quant-research-report`, `academic-literature-research`, `empirical-research-methods`, `research-figure-diagramming` | Factor research, storage/memory routing, empirical validation, literature, visualization, and recurring reports. |
| Knowledge base | `obsidian-knowledge-base`, `obsidian-pkm-workflows`, `obsidian-help`, `content-summarizer`, `context-compression` | Capture, summarize, organize, and synthesize notes. |
| Current docs/research tools | `context7-doc-research`, `multi-search-engine`, `deep-research-report`, `document-parser`, `markdown-converter` | Current documentation, web research, and source conversion. |
| Frontend/UI | `frontend-design`, `interaction-design`, `frontend-implementation-from-design`, `ui-ux-pro-max`, `browser-verification` | UI design, implementation, and browser verification. |
| Experimental/vendor-inspired | `awesome-human-distillation`, `anti-distill`, `github-skill-forge`, `karpathy-guidelines`, `humanizer` | Useful references or specialized workflows; keep trigger scope narrow. |

When two skills overlap, prefer the most specific personal skill. For example, use `quant-factor-research` for factor validation, `academic-literature-research` for paper discovery, and `quant-research-report` for the final recurring report.

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/skill-vetter
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/ui-ux-pro-max
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/github-skill-forge
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/humanizer
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/karpathy-guidelines
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/find-skills
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/technical-writer
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/doc-coauthoring
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/technical-writing
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/multi-search-engine
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/mindmap-markmap
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/obsidian-knowledge-base
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/obsidian-pkm-workflows
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/obsidian-help
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/paper-to-code
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/pdf-generation
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/python-code-review
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/web-access
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/memory-recall
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/memory-config
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/memory-to-skill
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/workflow-orchestrator
```

## Tool Notes

Some skills rely on external CLIs:

- `gh-address-comments` and `gh-fix-ci` require the GitHub CLI (`gh`) and GitHub authentication.
- `agent-browser` requires the `agent-browser` CLI. `browser-verification` can fall back to `web-access` when `agent-browser` is unavailable.

## MemSearch Notes

`memory-recall`, `memory-config`, and `memory-to-skill` are vendored from the MemSearch Codex plugin. This repository installs the skills and support files only; it does not automatically enable Codex hooks, install `uv`, or download embedding models.

The support files are stored in `vendor/memsearch-codex/` and copied locally to `~/.codex/memsearch-codex/`. Enable automatic memory capture only after reviewing the hook behavior and confirming that writing project-local `.memsearch/memory/*.md` files is desired.

Restart Codex after adding or updating skills.
