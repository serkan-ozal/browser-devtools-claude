# /accessibility

Run accessibility analysis on the current page.

## Usage

```
/accessibility [selector]
```

## Description

Performs accessibility analysis on the current page using ARIA snapshots and accessibility tree inspection. Helps identify accessibility issues like missing labels, improper heading hierarchy, and ARIA violations.

## Examples

```
/accessibility
/accessibility #navigation
/accessibility form
```

## What It Checks

- ARIA labels and roles
- Heading hierarchy
- Form input labels
- Focusable elements
- Color contrast (via visual inspection)
- Keyboard navigation paths

## Ref-Based Workflow

`a11y_take-aria-snapshot` returns **refs** (e1, e2, …) that you can use in interactions (click, fill, hover). Options: `interactiveOnly`, `cursorInteractive` (for div/span buttons), `selector` (scope). Refs are valid until next snapshot or navigation.

## MCP Tools Used

- `a11y_take-aria-snapshot` - ARIA snapshot with refs
- `a11y_take-ax-tree-snapshot` - AX tree (bounding box, occlusion, styles)
