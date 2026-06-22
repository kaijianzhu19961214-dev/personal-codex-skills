# Visual Verification

Use this reference when a frontend implementation can be run locally.

## Checks

- Desktop viewport renders correctly.
- Mobile viewport renders correctly.
- Text does not overflow buttons/cards/panels.
- No incoherent overlap.
- Primary assets load.
- Hover/focus/active states are visible.
- Loading/empty/error states exist when relevant.
- Keyboard focus is visible for controls.
- Reduced motion is respected for significant animation.

## Three.js Or Canvas

If the implementation uses Three.js, canvas, or WebGL:

- Confirm the canvas is nonblank.
- Check pixel output, not only DOM presence.
- Verify the scene is framed at desktop and mobile sizes.
- Verify animation or interaction works.

## Final Reporting

Mention:

- Dev server URL, if started.
- Screenshot/viewports checked.
- Build/lint/test results.
- Any deliberate visual deviations from the source.

