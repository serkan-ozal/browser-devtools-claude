---
name: click
description: Click an element on the page by selector or ref
---

# /click

Click an element on the page.

## Usage

```
/click <selector|ref>
```

## Description

Clicks an element identified by CSS selector **or ref** from the last ARIA snapshot (e.g. `e1`, `@e1`).

## Arguments

- `selector` or `ref`: CSS selector (e.g. `#submit`) or ref from `a11y_take-aria-snapshot` (e.g. `e1`)

## Examples

```
/click e1
/click button[type="submit"]
/click #checkout
/click [data-testid="add-to-cart"]
```

## Notes

- Refs come from `a11y_take-aria-snapshot`; valid until next snapshot or navigation
- Waits for element to be visible and clickable
- Scrolls element into view if needed

## MCP Tools Used

- `interaction_click` - Accepts selector or ref (e1, @e1)
