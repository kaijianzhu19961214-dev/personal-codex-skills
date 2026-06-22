---
name: multi-search-engine
license: MIT
description: Multi-search workflow for web research across Chinese and international search engines. Use when the task needs broad recall, bilingual search, search operators, time filters, site/filetype queries, privacy-focused search engines, or WolframAlpha-style knowledge queries without relying on a single search engine.
metadata:
  version: "2.0.1-codex"
  upstream: https://clawhub.ai/gpyangyoujun/multi-search-engine
  upstream_archive: https://github.com/openclaw/skills/tree/main/skills/gpyangyoujun/multi-search-engine
---

# Multi Search Engine

Use this skill when a single search engine may miss useful results. Prefer it for research, fact-finding, source discovery, bilingual queries, and cases where changing engine, language, region, or operator strategy is likely to improve recall.

中文说明：这个 skill 用于“换搜索思路”，不是替代事实核查。它帮助 Codex 在中文、英文、隐私搜索、站内搜索、文件搜索、时间过滤和知识计算之间切换，减少只靠一个搜索入口造成的偏差。

## Core Rules / 核心规则

- Start with the user's actual goal, not with a fixed engine.
- 先明确用户要找什么，再决定用中文搜索、英文搜索、站内搜索、文件类型搜索、新闻搜索或知识计算。
- Use multiple engines when recall matters; use authoritative sources when proof matters.
- 需要覆盖面时换多个搜索引擎；需要证明时必须回到一手来源。
- Do not send secrets, tokens, internal URLs, personal identifiers, or sensitive business data as search keywords.
- 不要把密钥、token、内网地址、个人隐私或敏感业务信息直接发送给外部搜索引擎。
- Prefer precise operators before broad retry loops.
- 优先优化查询语句，而不是反复用同一个关键词刷新结果。
- Record which search approach worked when it materially affects the answer.
- 如果搜索路径会影响结论，回复中说明使用了哪些入口或查询策略。

## Engine Selection / 搜索入口选择

Use these groups as search strategy choices. Exact availability can change; if one engine blocks or returns weak results, switch.

中文说明：搜索引擎的可用性和结果质量会变。遇到验证码、空结果、地区限制或明显噪声时，直接换引擎或换语言。

| Goal | Suggested Engines |
|------|-------------------|
| Chinese general web | Baidu, Bing CN, Sogou, 360 |
| Chinese social/public account content | Sogou WeChat, Toutiao search |
| International general web | Google, Bing INT, DuckDuckGo, Yahoo |
| Privacy-oriented search | DuckDuckGo, Startpage, Brave, Qwant |
| Developer/source code discovery | Google/Bing with `site:github.com`, DuckDuckGo `!gh`, GitHub search |
| Academic or PDF discovery | Google/Bing with `filetype:pdf`, Google Scholar |
| Knowledge calculation | WolframAlpha |

## Query Patterns / 查询模式

Read `references/search-patterns.md` when the task needs advanced operators, time filters, bilingual query expansion, or engine URL templates.

常用策略：

- Exact phrase: `"machine learning"`
- Exclude noisy terms: `python -snake`
- Site search: `site:github.com fastapi sqlalchemy`
- File search: `filetype:pdf annual report`
- Title search: `intitle:"release notes"`
- URL search: `inurl:docs api reference`
- Either term: `FastAPI OR Starlette`
- Recent Google result: `tbs=qdr:w` for past week
- Custom date range: `tbs=cdr:1,cd_min:1/1/2026,cd_max:6/22/2026`

## Workflow / 工作流程

1. Define the search target:
   - What fact, document, project, person, API, release note, bug report, or official page is needed?
   - 先定义要找的是事实、原文、官方页面、代码仓库、文档、新闻还是教程。
2. Build 2-4 query variants:
   - English and Chinese variants when the topic crosses language communities.
   - Add `site:`, `filetype:`, exact quotes, or time filters before adding more engines.
3. Search with different intent groups:
   - Broad recall: Google/Bing/DuckDuckGo.
   - Chinese context: Baidu/Bing CN/Sogou.
   - Privacy/fallback: Startpage/Brave/Qwant.
   - Calculation/entity facts: WolframAlpha.
4. Open promising primary sources:
   - Official docs, source repositories, standards, papers, company/newsroom pages, government pages.
   - 搜索结果页只用于发现来源，不作为最终证据。
5. Compare and report:
   - Summarize what was found, where it came from, and any uncertainty or source conflict.

## Safety / 安全边界

- Do not use advanced operators to hunt for exposed credentials, private documents, personal data, or vulnerable systems.
- 不使用 `filetype:`, `inurl:`, `intitle:` 等操作符搜索泄露凭据、隐私文件或可被利用的系统入口。
- For legal, medical, financial, security, or policy questions, prefer official sources and state when evidence is incomplete.
- 高风险主题必须优先官方来源；找不到一手来源时明确说明证据限制。
- If a query might expose private user context, ask for a sanitized keyword instead.
- 如果关键词可能泄露用户隐私，先要求脱敏再搜索。

## Source / 来源

This personal Codex-compatible version is adapted from the ClawHub/OpenClaw `multi-search-engine` skill concept:

- ClawHub page: <https://clawhub.ai/gpyangyoujun/multi-search-engine>
- OpenClaw archive path: <https://github.com/openclaw/skills/tree/main/skills/gpyangyoujun/multi-search-engine>
