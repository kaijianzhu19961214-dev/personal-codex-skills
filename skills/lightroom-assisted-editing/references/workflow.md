# Lightroom Assisted Editing Workflow

这是给专门修图项目使用的稳定工作流：Codex 负责分析、参数、检查和复盘；Lightroom Classic 负责人工套用和批量同步；本地脚本负责导出后的对比与归档。

## 适用场景

- Lightroom MCP 不稳定，不能直接由 Codex 控制 Lightroom。
- 需要 Codex 给出可手动执行的 Lightroom 参数。
- 需要批量照片保持统一风格。
- 需要对比原图、v1、v2 的导出结果。
- 需要把修图流程变成项目化、可复盘的工作流。

## 推荐项目结构

```text
photo-editing-project/
  originals/
    2026-06-wuhan-street/
  lightroom_exports/
    2026-06-wuhan-street/
      v1/
      v2/
      contact_sheets/
  references/
    moodboards/
    target_styles/
  notes/
    edit-log.md
    preset-recipes.md
```

命名建议：

```text
YYYYMMDD_scene_original.ext
YYYYMMDD_scene_v1.jpg
YYYYMMDD_scene_v2.jpg
YYYYMMDD_scene_before_after_v1.jpg
```

## 单张照片流程

1. 用户提供原图或 Lightroom 当前导出的 JPEG。
2. Codex 进行照片诊断：
   - 主体和叙事
   - 构图和裁切
   - 曝光和动态范围
   - 白平衡和偏色
   - 色彩关系
   - 细节、噪点、锐化
   - 干扰物和是否需要 Photoshop
3. Codex 输出 Lightroom 手动参数。
4. 用户在 Lightroom Classic 里套用参数并导出 v1。
5. Codex 检查 v1：
   - 是否解决核心问题
   - 是否出现过修、偏色、锐化过度、肤色异常、天空断层、噪点放大
6. Codex 输出 v2 微调参数。

## 批量照片流程

先选一张 anchor photo：

- 曝光最典型
- 色温最接近系列平均
- 主体和场景代表整组照片
- 没有极端高光或极端阴影

Codex 先为 anchor photo 生成参数。用户在 Lightroom 中完成 anchor edit 后：

1. 同步基础设置到同组照片：
   - Profile
   - White Balance
   - Basic Tone
   - Tone Curve
   - HSL
   - Color Grading
   - Detail
2. 不默认同步裁切、污点修复和复杂遮罩。
3. 用户导出 6-12 张代表样片。
4. Codex 生成批量一致性检查：
   - 色温是否漂移
   - 人物肤色是否异常
   - 天空/建筑/绿植是否统一
   - 曝光是否因场景变化需要分组

## Lightroom 参数表达规则

用区间表达不确定性：

```text
Exposure: +0.10 到 +0.35
Highlights: -25 到 -45
Shadows: +10 到 +30
Temp: 往暖方向 +300K 左右，视肤色或灰白物体微调
```

不要伪造绝对精确值。JPEG、手机图、压缩图应更保守。

## 常用输出模板

```text
后期目标：
让画面更自然、主体更清楚，同时保留现场氛围。

当前问题：
- 天空偏紫/偏青
- 主体亮度不足
- 绿植饱和和明度抢注意力

Lightroom 手动参数：
- Profile: Adobe Color / Camera Standard
- WB: Temp +300K 左右，Tint -5 到 -12
- Exposure: +0.15
- Highlights: -35
- Shadows: +20
- Whites: +8
- Blacks: -12
- Texture: +5
- Clarity: +6
- Dehaze: +4

局部遮罩：
- 主体径向遮罩：Exposure +0.20，Texture +8
- 天空线性渐变：Saturation -10，Noise Reduction +15
- 边缘暗角：Exposure -0.20

导出验证：
- JPEG, sRGB, quality 85-90
- 长边 3000px 用于快速复盘
- 全尺寸保留一版用于最终输出
```

## 导出后验证

用户导出后，Codex 应检查：

- 原图路径和导出路径
- 分辨率、格式、文件大小
- 色彩是否过饱和或偏色
- 亮部是否过曝、暗部是否死黑
- 细节是否锐化过度
- 是否有 JPEG 断层或噪点放大
- 与原图相比主体是否更清楚

可以生成：

- before/after 对比图
- v1/v2 对比图
- contact sheet
- 缩略图预览

## Lightroom 到 Photoshop/AI 的分界

继续留在 Lightroom：

- 曝光、白平衡、色彩、HSL、曲线、暗角
- 简单线性/径向/主体/天空遮罩
- 基础污点和轻量移除

转 Photoshop：

- 电线、复杂杂物、人物穿帮、边缘修复
- 皮肤精修、频率分离、复杂 dodge and burn
- 多图合成和精确局部修复

转 AI：

- 扩图
- 大面积背景替换
- 新增/移除复杂对象
- 风格化重绘

## 复盘记录

建议每组照片维护 `notes/edit-log.md`：

```text
日期：
照片组：
目标风格：
Anchor photo：
v1 主要参数：
v1 问题：
v2 调整：
最终导出：
可复用 preset：
```

## 质量原则

- 纪录类照片优先真实和可读性。
- 街拍可以保留现场光线和轻微色偏，但不要让偏色抢走主体。
- 风光和建筑可以增强层次，但避免 HDR 感。
- 人像优先肤色自然，少量修饰，保留皮肤纹理。
- 系列照片比单张极致更重要，先统一再精修。
