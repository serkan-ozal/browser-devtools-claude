---
name: screenshot
description: Take a screenshot of the current browser page or a specific element
---

# /screenshot

Take a screenshot of the current browser page or a specific element.

## Usage

```
/screenshot [selector|ref]
```

## Description

Captures a screenshot of the current page. Use CSS selector or ref (e.g. `e1` from ARIA snapshot) to capture a specific element.

**Important**: Do not use screenshot to understand page structure. Call `/accessibility` or `a11y_take-aria-snapshot` first, then screenshot for visual verification.

## Examples

```
/screenshot
/screenshot #main-content
/screenshot e1
```

## Options

- No arguments: Captures full page
- With selector or ref: Captures only the matched element
- **Annotated**: Use `annotate: true` to overlay numbered labels [1],[2],… mapping to refs e1,e2. Add `annotateContent` for headings, `cursorInteractive` for div/span buttons.

## MCP Tools Used

- `content_take-screenshot` - Capture (selector, ref, annotate, annotateContent, cursorInteractive)
