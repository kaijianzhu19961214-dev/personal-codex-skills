# Summary Formats

Use the smallest format that answers the user's request. Prefer Chinese headings.

## Article / Blog / Webpage

```text
TL;DR
- One to three bullets with the main takeaway.

关键结论
- Claim or conclusion.

证据与来源
- Source title or URL/path: supporting detail.

有价值的细节
- Data, examples, caveats, tools, links, or quoted terms worth preserving.

待确认
- Missing date, author, source freshness, paywall limitation, or claims needing verification.
```

Use this for long articles, blog posts, newsletters, documentation pages, and research-style webpages.

## Transcript / Video / Podcast

```text
TL;DR
- Main point.

时间线
- 00:00 Topic or claim, if timestamps are available.

关键结论
- Decision-useful conclusions.

可执行建议
- Practical advice, commands, settings, or next steps.

待确认
- Claims without enough context or timestamps that need rechecking.
```

Preserve timestamps when available. If no timestamps exist, group by topic instead of fabricating times.

## Meeting Notes

```text
会议结论
- Final decisions or strongest alignment points.

讨论要点
- Topic: concise summary.

行动项
- Owner, task, deadline, dependency. Use `负责人待确认` or `时间待确认` when missing.

风险与阻塞
- Risk, blocker, dependency, or tradeoff.

待确认
- Open question.
```

Do not assign owners or dates unless the source states them.

## Long Conversation

```text
对话摘要
- What was discussed and why it mattered.

已确认事项
- Stable decisions, preferences, facts, or constraints.

未解决问题
- Open questions or unresolved choices.

下一步
- Concrete follow-up actions.

可复用记忆
- Preferences, workflows, repo paths, commands, or decisions worth carrying forward.
```

Use this for chat compression, memory preparation, and thread handoff.

## Code Session Handoff

```text
当前状态
- Repo, branch, changed files, tests, server state, or deployment state.

已完成
- Implemented changes and why they matter.

关键文件
- Absolute path or repo-relative path: reason it matters.

验证结果
- Tests, linters, browser checks, manual checks, or not run.

下一步
- Concrete commands or tasks.

风险与注意事项
- User changes, dirty worktree, failing tests, credentials, external services, or assumptions.
```

Mention exact commits, branches, PRs, and unpushed status when available.

## Multi-Source Research

```text
结论
- Consolidated answer.

来源对照
- Source A: claim.
- Source B: claim.

一致点
- Shared facts across sources.

冲突点
- Conflicting claims and likely reason.

建议行动
- What to do next based on current evidence.

待确认
- Items needing primary-source verification.
```

Prefer primary sources for technical, legal, medical, financial, and current information.
