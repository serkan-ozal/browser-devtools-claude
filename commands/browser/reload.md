---
name: reload
description: Reload the current page
---

# /reload

Reload the current page.

## Usage

```
/reload
```

## Description

Reloads the current page. By default returns ARIA snapshot with refs after reload.

## Notes

- Waits for page load to complete before returning
- Optional: `includeSnapshot`, `snapshotInteractiveOnly`, `snapshotCursorInteractive`

## MCP Tools Used

- `navigation_reload` - Reload the page
