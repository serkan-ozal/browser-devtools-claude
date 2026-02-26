---
name: drag
description: Drag an element to a target location by selector or ref
---

# /drag

Drag an element to a target location.

## Usage

```
/drag <source-selector|ref> <target-selector|ref>
```

## Description

Performs drag and drop from source to target. Use CSS selectors or refs (e.g. `e1`, `e2` from ARIA snapshot).

## Examples

```
/drag e1 e2
/drag .draggable-item .drop-zone
/drag #card-1 #column-2
```

## MCP Tools Used

- `interaction_drag` - Accepts selector or ref for source and target
