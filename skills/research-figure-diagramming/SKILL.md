---
name: research-figure-diagramming
description: Personal research figure and diagram workflow for reports, papers, presentations, and Obsidian notes. Use when Codex needs to design, critique, or generate plans for editable research figures, factor research flowcharts, strategy architecture diagrams, IC/RankIC charts, grouped return charts, draw.io diagrams, Mermaid diagrams, publication-style plots, AutoFigure/Nature-style scientific illustrations, Codex imagegen illustrations, or visual summaries for quant research reports and technical documents.
---

# Research Figure Diagramming

Use this skill when research needs to become visual. Start from the claim the figure must defend, then choose the simplest visual form that makes the evidence inspectable.

中文说明：这个 skill 用于科研绘图、量化报告图表、流程图、可编辑图示和 Codex `imagegen` 配图规划。数据图表优先用可复现代码生成，解释性配图和图文摘要可以用 `imagegen`。

## Figure Flow

1. State the claim or question.
2. Identify the audience:
   - internal research note
   - recurring quant report
   - paper-style figure
   - presentation slide
3. Choose figure type:
   - line chart
   - bar chart
   - heatmap
   - scatter/regression plot
   - draw.io architecture diagram
   - Mermaid flowchart
   - factor pipeline diagram
4. Specify required data fields.
5. Define visual encodings and annotations.
6. Require editability for report assets when possible.
7. Decide whether the figure is evidence, explanation, or decoration.
8. Save source data and generation code when producing charts.
9. Save generated images under the target note's attachment folder and reference them from Markdown.

## Quant Figure Defaults

- IC / RankIC time series
- IC distribution histogram
- quantile grouped returns
- long-short NAV and drawdown
- turnover and cost sensitivity
- factor decay by horizon
- industry or size exposure heatmap
- research pipeline diagram

## Tool Routing

- Use Codex `imagegen` for non-data illustrations, conceptual visual summaries, cover images, teaching diagrams, and article-style images.
- Use Mermaid for quick workflow diagrams in Markdown.
- Use draw.io when the user needs editable architecture or process diagrams.
- Use Python plotting for metric charts.
- Use `pdf-generation` or `presentations` only when producing final shareable artifacts.
- Use AutoFigure/Nature-style tools as inspiration for scientific illustration, but do not depend on them unless installed and verified.

## Imagegen Rules

- Do not use `imagegen` for evidence-bearing charts such as IC curves, returns, drawdowns, or regression results.
- Use `imagegen` when a visual metaphor or explanatory scene helps reading.
- Keep prompts specific: subject, purpose, style, aspect ratio, and where the image will be used.
- Prefer neutral research/report style over overly promotional visuals.
- Save image assets in Obsidian as attachments and cite generated status in the note when relevant.

## References

Read `references/figure-patterns.md` for common quant and research chart patterns.
