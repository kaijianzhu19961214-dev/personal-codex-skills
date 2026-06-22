---
name: memory-recall
description: "Search and recall relevant memories from past sessions via memsearch. Use when the user's question could benefit from historical context, past decisions, debugging notes, previous conversations, or project knowledge -- especially questions like 'what did I decide about X', 'why did we do Y', or 'have I seen this before'. Also use when you see `[memsearch] Memory available` hints injected via SessionStart or UserPromptSubmit. Typical flow: search for 3-5 chunks, expand the most relevant, optionally deep-drill into original transcripts via the anchor format. Skip when the question is purely about current code state (use Read/Grep), ephemeral (today's task only), or the user has explicitly asked to ignore memory."
metadata:
  source: https://github.com/zilliztech/memsearch/tree/main/plugins/codex/skills/memory-recall
  plugin_support_path: ~/.codex/memsearch-codex
---

You are performing memory retrieval for memsearch. Search past memories and return the most relevant context to the current conversation.

中文说明：这个 skill 是 MemSearch 的历史记忆检索入口，用来回答“之前怎么处理过”“当时为什么这么决定”“有没有遇到过类似问题”。当前个人仓库版本只预装 skill 和支持脚本；自动捕获记忆需要另行启用 MemSearch hooks。未启用 hooks 时，它只能搜索已有的 `.memsearch/memory/*.md`。

## Safety / 安全边界

- Do not enable hooks, install `uv`, download embedding models, or change `~/.codex/hooks.json` from this skill unless the user explicitly asks.
- 不要在检索记忆时暴露密钥、token、个人隐私或不相关项目内容。
- Prefer project-local memory under `<project>/.memsearch/memory/`; only use global `MEMSEARCH_DIR` when the user intentionally wants cross-project memory.

## Project Collection

Determine the collection name by running:
```
bash -c 'install_dir="${MEMSEARCH_CODEX_PLUGIN_DIR:-$HOME/.codex/memsearch-codex}"; if [ -n "${MEMSEARCH_DIR:-}" ]; then bash "$install_dir/scripts/derive-collection.sh" "$MEMSEARCH_DIR"; else root=$(git rev-parse --show-toplevel 2>/dev/null || true); if [ -n "$root" ]; then bash "$install_dir/scripts/derive-collection.sh" "$root"; else bash "$install_dir/scripts/derive-collection.sh"; fi; fi'
```

## Steps

1. **Search**: Run `memsearch search "<query>" --top-k 5 --json-output --collection <collection name from above>` to find relevant chunks.
   - If `memsearch` is not found, try `uvx memsearch` instead.
   - Choose a search query that captures the core intent of the user's question.

2. **Evaluate**: Look at the search results. Skip chunks that are clearly irrelevant or too generic.

3. **Expand**: For each relevant result, get the full context using one of these methods:
   - **Primary**: Run `memsearch expand <chunk_hash> --collection <collection name from above>` to get the full markdown section.
   - **Fallback** (if expand fails with a lock/permission error due to sandbox): Read the source file directly. The search results include `source` (file path) and `start_line`/`end_line` — use `cat <source_file>` or read the relevant line range to get the full context. This avoids the Milvus lock file issue.

4. **Deep drill (optional)**: If an expanded chunk contains transcript anchors (HTML comments with session/rollout info), and the original conversation seems critical:
   - Run `bash "${MEMSEARCH_CODEX_PLUGIN_DIR:-$HOME/.codex/memsearch-codex}/scripts/parse-rollout.sh" <rollout_path>` to retrieve the original conversation turns.
   - If the anchor format is unfamiliar (e.g. `transcript:` + `turn:`, `db:` instead of `rollout:`), try reading the referenced file directly to explore its structure and locate the relevant conversation by the session or turn identifiers in the anchor.

5. **Return results**: Output a curated summary of the most relevant memories. Be concise — only include information that is genuinely useful for the user's current question.

## When unsure what to search

If the user's question is vague or you can't form a concrete search query, explore the raw markdown first — it is the source of truth for memory:

- `MDIR="${MEMSEARCH_DIR:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)/.memsearch}"; ls -t "$MDIR/memory/" | head -10` — recent daily logs
- `MDIR="${MEMSEARCH_DIR:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)/.memsearch}"; grep -h "^## " "$MDIR/memory/"*.md | sort -u | tail -40` — session headings across all days
- `MDIR="${MEMSEARCH_DIR:-$(git rev-parse --show-toplevel 2>/dev/null || pwd)/.memsearch}"; cat "$MDIR/memory/<YYYY-MM-DD>.md"` — read a specific day

Once a concrete topic jumps out, go back to `memsearch search` with a specific query.

## Output Format

Organize by relevance. For each memory include:
- The key information (decisions, patterns, solutions, context)
- Source reference (file name, date) for traceability

If nothing relevant is found, simply say "No relevant memories found."
