# Browser Verification Checklist

Use this checklist for local app verification and frontend regression checks.

## Basic Page Load

- Correct URL loaded.
- Page title is expected or reasonable.
- Main content is visible.
- No blank screen.
- No full-page error overlay.

## Console And Network

- No uncaught runtime exceptions.
- No repeated hydration errors.
- No failed critical JavaScript or CSS assets.
- API failures are either expected mock behavior or documented issues.

## Layout

- Desktop viewport checked.
- Mobile viewport checked for user-facing pages.
- No overlapping panels, cards, or buttons.
- Long text wraps safely.
- Fixed headers/footers do not cover content.
- Primary media/assets render.

## Interaction

- Primary CTA works.
- Navigation works.
- Forms accept input.
- Validation errors are visible and understandable.
- Loading state resolves or fails gracefully.

## Accessibility Gut Check

- Keyboard focus is visible.
- Buttons and links have accessible names.
- Color contrast is not obviously poor.
- Motion is not excessive for core tasks.

## Reporting

Report only meaningful issues. Include:

- Reproduction step
- Expected behavior
- Actual behavior
- Screenshot or console evidence when available
- Suggested fix direction

