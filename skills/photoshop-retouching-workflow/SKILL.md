---
name: photoshop-retouching-workflow
description: Photoshop-style photography retouching workflow for local cleanup, portrait retouching, skin texture preservation, dodge and burn, frequency separation planning, object/distraction removal, background cleanup, compositing, layer strategy, masks, healing, cloning, and final polish. Use when the user asks for PS-like retouching, portrait refinement, removing objects, cleaning backgrounds, fixing hair/clothes/skin, or layered photo editing advice.
---

# Photoshop Retouching Workflow

Use this skill for pixel-level or layered retouching decisions after Lightroom-style development.

中文说明：这个 skill 面向 Photoshop 式精修：局部修瑕、背景清理、人像皮肤、Dodge & Burn、频率分离、蒙版、合成和最终润色。

## Layer Strategy

Recommend a non-destructive layer stack:

```text
Base image / smart object
Cleanup layer
Frequency separation or texture/color correction layer when needed
Dodge & Burn layer
Color grading adjustment layers
Sharpening/output layer
```

Only suggest frequency separation when normal healing/clone/dodge-burn is insufficient.

## Task Routing

- Skin blemishes: healing/clone on a blank layer; preserve pores.
- Uneven skin tone: subtle color correction or low-frequency correction.
- Face shape/body shape: mention liquify only if user asks; keep natural.
- Eye/teeth enhancement: subtle dodge/saturation, avoid artificial white.
- Hair cleanup: clone/heal stray hairs, but preserve natural edge detail.
- Background clutter: content-aware fill, clone, generative fill, or crop.
- Dust/sensor spots: spot healing before creative edits.
- Clothes wrinkles: healing/clone or dodge-burn depending on texture.

## Portrait Retouching Principles

- Preserve identity and skin texture.
- Avoid plastic skin, over-sharpened eyes, and excessive whitening.
- Prefer small cumulative edits over one destructive operation.
- Keep before/after comparison in mind.

## Object Removal

For each removal request, decide:

1. Can crop solve it better?
2. Can healing/clone solve it cleanly?
3. Does the background have repeating texture?
4. Is AI/generative fill safer?
5. Will removal alter documentary truth?

Route generative removal to `ai-photo-editing` when the missing background must be invented.

## Output Shape

```text
精修目标：
建议图层结构：
局部处理步骤：
需要避免的问题：
是否需要 AI/生成式填充：
最终检查：
```

## Boundaries

- Do not propose deceptive edits for documentary/news contexts.
- Do not sexualize or heavily alter a real person's body.
- When the user asks for natural retouching, keep edits subtle and texture-preserving.
