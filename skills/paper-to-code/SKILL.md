---
name: paper-to-code
description: Personal paper-to-code workflow for implementing algorithms, models, experiments, or methods from research papers, especially AI/ML, quantitative finance, statistics, optimization, and data science papers. Use when the user asks to reproduce a paper, implement a method from PDF/arXiv, turn equations into Python, create tests/demos, compare paper claims to code, or build a minimal reproducible implementation.
---

# Paper To Code

Use this skill to turn a research paper into a scoped implementation plan and code.

中文说明：这个 skill 负责“论文到代码”。它适合从论文/PDF/arXiv 中提炼算法、公式、实验设定，并实现成可验证的 Python 项目。

## Workflow

1. Read the paper: abstract, contribution, method section, equations/algorithm boxes, data/evaluation, implementation details.
2. Extract an implementation spec: inputs/outputs, assumptions, hyperparameters, dependencies, metric.
3. Define MVP scope before coding.
4. Implement incrementally.
5. Add tests for shape/type correctness, boundary cases, synthetic examples, and paper examples when available.
6. Document gaps between the paper and implementation.

## Python Rules

- Follow the user's Python/FastAPI AGENTS.md style when relevant.
- Prefer typed functions, dataclasses, or Pydantic models when useful.
- Use `unittest` for tests unless repo conventions require otherwise.
- Do not overbuild training infrastructure unless requested.

## Output

For planning: `Paper Summary`, `Implementation Target`, `MVP Scope`, `Algorithm Steps`, `Data Requirements`, `Tests`, `Open Questions`.

For code changes, include files changed and validation.
