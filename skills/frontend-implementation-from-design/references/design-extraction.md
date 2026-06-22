# Design Extraction

Use this reference when reading a design source before implementation.

## Extract

- Page/component purpose
- Primary user workflow
- Layout grid and hierarchy
- Color palette with hex values when possible
- Typography roles and approximate sizes/weights
- Spacing rhythm
- Component inventory
- Interactive states
- Empty/loading/error states
- Mobile behavior

## Figma Or Design MCP

When a design MCP is available:

- Prefer structured layer data over screenshots.
- Preserve component names and variants when useful.
- Map design tokens to existing CSS variables or theme tokens.
- Do not blindly reproduce decorative layers that do not serve the product.

## Screenshot Or Product Page

When using screenshots or product pages:

- Inspect actual dimensions and viewport.
- Identify repeated components and spacing.
- Use image assets only when they are relevant and inspectable.
- Avoid approximating with generic gradients or decorative blobs.

## Implementation Mapping

Convert design into:

- Route/page
- Components
- Props and state
- Data fixtures
- CSS variables/theme tokens
- Responsive rules
- Interaction states

