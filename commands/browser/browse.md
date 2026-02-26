---
name: browse
description: Navigate to a URL and interact with web pages using Browser DevTools MCP
---

# /browse

Navigate to a URL and interact with web pages using Browser DevTools MCP.

## Usage

```
/browse <url>
```

## Description

Opens a browser and navigates to the specified URL. **Workflow**: Call `a11y_take-aria-snapshot` first to get refs (e1, e2, …), then use refs in interactions or take annotated screenshots. After navigation:
- ARIA snapshot first (`a11y_take-aria-snapshot`) — returns refs for interactions
- Click, fill, hover with refs (`interaction_click`, `interaction_fill`, etc.)
- Screenshots (`content_take-screenshot`) — use `annotate: true` for labeled overlay
- Page content (`content_get-as-html`, `content_get-as-text`)
- Console and network (`o11y_get-console-messages`, `o11y_get-http-requests`)

## Examples

```
/browse https://example.com
/browse https://www.npmjs.com/package/browser-devtools-mcp
```

## MCP Tools Used

- `navigation_go-to` - Navigate to the URL
- `content_take-screenshot` - Capture visual state
- `sync_wait-for-network-idle` - Wait for page load
