# Skill Vetting Report Template

Use this exact shape for final vetting reports unless the user asks for more detail.

```markdown
**Skill Vetting Report**

Verdict: `SAFE | WARNING | DANGER | BLOCK`

Skill: `<name>`
Source: `<repo/url>`
Scope: `<global/project/sandbox/not installed>`

**Summary**
- <one or two bullets explaining the decision>

**Findings**
- `[P0/BLOCK]` <critical issue>
- `[P1/DANGER]` <high-risk issue>
- `[P2/WARNING]` <review-needed issue>
- `[Info]` <compatibility or dependency note>

**Codex Compatibility**
- Frontmatter: <pass/fix needed>
- Validation: <quick_validate result or not run>
- External tools: <none/list>

**Required Fixes**
- <fixes before install, or none>

**Recommendation**
- <install / install after edits / sandbox only / do not install>
```

## Severity Mapping

- `P0/BLOCK`: Do not install.
- `P1/DANGER`: Install only in isolated sandbox after explicit user approval.
- `P2/WARNING`: Install after fixes or with documented limitations.
- `Info`: Not blocking.

