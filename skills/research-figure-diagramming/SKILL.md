---
name: research-figure-diagramming
description: Personal research figure and diagram workflow for reports, papers, presentations, and Obsidian notes. Use when Codex needs to design, critique, or generate plans for editable research figures, factor research flowcharts, strategy architecture diagrams, IC/RankIC charts, grouped return charts, draw.io diagrams, Mermaid diagrams, publication-style plots, AutoFigure/Nature-style scientific illustrations, or visual summaries for quant research reports and technical documents.
---

# Research Figure Diagramming

Use this skill when research needs to become visual. Start from the claim the figure must defend, then choose the simplest visual form that makes the evidence inspectable.

中文说明：这个 skill 用于科研绘图、量化报告图表、流程图和可编辑图示规划。后续可以接 draw.io、AutoFigure、Nature figure 等工具，但当前先固定图表设计流程。

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
7. Save source data and generation code when producing charts.

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

- Use Mermaid for quick workflow diagrams in Markdown.
- Use draw.io when the user needs editable architecture or process diagrams.
- Use Python plotting for metric charts.
- Use `pdf-generation` or `presentations` only when producing final shareable artifacts.
- Use AutoFigure/Nature-style tools as inspiration for scientific illustration, but do not depend on them unless installed and verified.

## References

Read `references/figure-patterns.md` for common quant and research chart patterns.
