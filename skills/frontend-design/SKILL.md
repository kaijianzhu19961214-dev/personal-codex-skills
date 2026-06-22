---
name: frontend-design
description: Guidance for distinctive, intentional visual design when building new UI or reshaping an existing one. Helps with aesthetic direction, typography, and making choices that don't read as templated defaults.
license: Complete terms in LICENSE.txt
---

# Frontend Design

Approach this as the design lead at a small studio known for giving every client a visual identity that could not be mistaken for anyone else's. This client has already rejected proposals that felt templated, and is paying for a distinctive point of view: make deliberate, opinionated choices about palette, typography, and layout that are specific to this brief, and take one real aesthetic risk you can justify.

中文说明：这个 skill 用于前端视觉设计方向，重点是避免模板化 AI 风格，围绕具体主题做有辨识度的配色、字体、布局和文案选择。

## Ground it in the subject / 扎根具体主题

If the brief does not pin down what the product or subject is, pin it yourself before designing: name one concrete subject, its audience, and the page's single job, and state your choice. If there's any information in your memory about the human's preferences, context about what they're building, or designs you've made before – use that as a hint. The subject's own world, its materials, instruments, artifacts, and vernacular, is where distinctive choices come from. Build with the brief's real content and subject matter throughout.

如果需求没有明确产品或主题，先主动确定一个具体主题、目标受众和页面唯一任务。视觉选择应该来自主题本身的材料、场景、工具和语言，而不是套用通用模板。

## Design principles / 设计原则

For web designs, the hero is a thesis. Open with the most characteristic thing in the subject's world, in whatever form makes sense for it: a headline, an image, an animation, a live demo, an interactive moment. Be deliberate with your choice: a big number with a small label, supporting stats, and a gradient accent is the template answer, only use if that's truly the best option.

首屏应该表达这个页面的核心主张。可以用标题、图片、动画、实时演示或交互瞬间，但必须服务主题，不要默认使用大数字、渐变和统计卡片。

Typography carries the personality of the page. Pair the display and body faces deliberately, not the same families you would reach for on any other project, and set a clear type scale with intentional weights, widths, and spacing. Make the type treatment itself a memorable part of the design, not a neutral delivery vehicle for the content.

字体是气质的一部分。标题、正文和辅助信息的字体搭配要有明确理由，不要总用同一套默认字体组合。

Structure is information. Structural devices, numbering, eyebrows, dividers, labels, should encode something true about the content, not decorate it. Many generic designs use numbered markers (01 / 02 / 03), but that's only appropriate if the content actually is a sequence - like a real process or a typed timeline where order carries information the reader needs. Question if choices like numbered markers actually make sense before incorporating them.

结构本身也是信息。编号、分割线、标签等元素只有在表达真实内容关系时才使用，不把它们当纯装饰。

Leverage motion deliberately. Think about where and if animation can serve the subject: a page-load sequence, a scroll-triggered reveal, hover micro-interactions, ambient atmosphere. An orchestrated moment usually lands harder than scattered effects; choose what the direction calls for. However, sometimes less is more, and extra animation contributes to the feeling that the design is AI-generated.

动效要有目的。一个集中设计的关键动效通常比到处散落的小动画更有力量；不需要动效时要克制。

Match complexity to the vision. Maximalist directions need elaborate execution; minimal directions need precision in spacing, type, and detail. Elegance is executing the chosen vision well.

复杂度要匹配视觉方向。极简设计依赖精确的间距、字体和细节；复杂设计需要完整执行力。

Consider written content carefully. Often a design brief may not contain real content, and it's up to you to come up with copy. Copy can make a design feel as templated as the design itself. See the below section on writing for more guidance.

文案也是设计材料。缺少真实内容时，需要写出贴合产品和用户的具体文案，避免空泛营销话术。

## Process: brainstorm, explore, plan, critique, build, critique again / 流程：构思、计划、评审、构建、再评审

For calibration: AI-generated design right now clusters around three looks: (1) a warm cream background (near #F4F1EA) with a high-contrast serif display and a terracotta accent; (2) a near-black background with a single bright acid-green or vermilion accent; (3) a broadsheet-style layout with hairline rules, zero border-radius, and dense newspaper-like columns. All three are legitimate for some briefs, but they are defaults rather than choices, and they appear regardless of subject. Where the brief pins down a visual direction, follow it exactly — the brief's own words always win, including when it asks for one of these looks. Where it leaves an axis free, don't spend that freedom on one of these defaults. Just like a human designer who's hired, there's often a careful balance between doing what you're good at and taking each project as a chance to experiment and learn.

警惕常见 AI 默认风格：奶油色+高对比衬线字、近黑背景+亮色点缀、报纸式密集线框布局。它们不是不能用，而是必须由具体需求决定。

Work in two passes. First, brainstorm a short design plan based on the human's design brief: create a compact token system with color, type, layout, and signature. Color: describe the palette as 4–6 named hex values. Type: the typefaces for 2+ roles (a characterful display face that's used with restraint, a complementary body face, and a utility face for captions or data if needed). Layout: a layout concept, using one-sentence prose descriptions and ASCII wireframes to ideate and compare. Signature: the single unique element this page will be remembered by that embodies the brief in an appropriate way.

先做简短设计计划：定义 4-6 个颜色、2 个以上字体角色、布局概念，以及一个能代表页面的记忆点。

Then review that plan against the brief before building: if any part of it reads like the generic default you would produce for any similar page (work through a similar prompt to see if you arrive somewhere similar) rather than a choice made for this specific brief — revise that part, say what you changed and why. Only after you've confirmed the relative uniqueness of your design plan should you start to write the code, following the revised plan exactly and deriving every color and type decision from it.

写代码前先自查：如果某个选择看起来像任何项目都能套用的默认答案，先修改，再开始实现。

When writing the code, be careful of structuring your CSS selector specificities. It's easy to generate CSS classes that cancel each other out (especially with a type-based selector like .section and a element-based selector like .cta). This can happen often with paddings/margins between sections.

实现时注意 CSS 选择器优先级，避免 `.section`、`.cta` 等类之间互相覆盖导致间距或样式异常。

Try to do a lot of this planning and iteration in your thinking, and only show ideas to the user when you have higher confidence it'll delight them.

尽量在内部完成足够的方案迭代，只把更成熟的方向展示给用户。

## Restraint and self-critique / 克制和自我评审

Spend your boldness in one place. Let the signature element be the one memorable thing, keep everything around it quiet and disciplined, and cut any decoration that does not serve the brief. Not taking a risk can be a risk itself! Build to a quality floor without announcing it: responsive down to mobile, visible keyboard focus, reduced motion respected. Critique your own work as you build, taking screenshots if your environment supports it – a picture is worth 1000 tokens. Consider Chanel's advice: before leaving the house, take a look in the mirror and remove one accessory. Human creators have memory and always try to do something new, so if you have a space to quickly jot down notes about what you've tried, it can help you in future passes.

大胆只花在一个关键点上，让其他部分安静、纪律化。构建时默认做到响应式、键盘焦点清晰、尊重 reduced motion，并通过截图自查。

## More on writing in design / 设计中的文案

Words appear in a design for one reason: to make it easier to understand, and therefore easier to use. They are design material, not decoration. Bring the same intentionality to copy that you would bring to spacing and color. Before writing anything, ask what the design needs to say, and how it can best be said to help the person navigate the experience.

界面文字的目标是让用户更容易理解和使用。文案不是装饰，要像颜色和间距一样被认真设计。

Write from the end user's side of the screen. Name things by what people control and recognize, never by how the system is built. A person manages notifications, not webhook config. Describe what something does in plain terms rather than selling it. Being specific is always better than being clever.

从用户视角命名。使用用户能控制、能理解的词，而不是内部实现术语。

Use active voice as default. A control should say exactly what happens when it's used: "Save changes," not "Submit." An action keeps the same name through the whole flow, so the button that says "Publish" produces a toast that says "Published." The vocabulary of an interface is the signposting for someone navigating the product. Cohesion and consistency are how people learn their way around.

按钮文案要说明动作结果，例如用 “Save changes” 而不是泛泛的 “Submit”。同一个动作在按钮、toast 和状态里保持一致命名。

Treat failure and emptiness as moments for direction, not mood. Explain what went wrong and how to fix it, in the interface's voice rather than a person's. Errors don't apologize, and they are never vague about what happened. An empty screen is an invitation to act.

错误和空状态要给方向：说明发生了什么、如何解决，不要含糊道歉。

Keep the register conversational and tuned: plain verbs, sentence case, no filler, with tone matched to the brand and the audience. Let each element do exactly one job. A label labels, an example demonstrates, and nothing quietly does double duty.

保持自然、清晰、贴合品牌和用户语境。每个文字元素只承担一个明确职责。
