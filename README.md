# Personal Codex Skills

This repository stores reusable Codex skills for personal use across machines.

## Layout

```text
skills/
  frontend-design/
    SKILL.md
    LICENSE.txt
  git-workflow/
    SKILL.md
    references/
  interaction-design/
    SKILL.md
    references/
  skill-chinese-notes/
    SKILL.md
    references/
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
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/interaction-design
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/git-workflow
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/frontend-design
```

```text
$skill-installer https://github.com/<your-github-user>/<repo-name>/tree/main/skills/skill-chinese-notes
```

Restart Codex after adding or updating skills.
