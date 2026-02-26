---
name: fill
description: Fill an input field with text by selector or ref
---

# /fill

Fill an input field with text.

## Usage

```
/fill <selector|ref> <text>
```

## Description

Fills an input field with the specified text. Use CSS selector or ref (e.g. `e1` from ARIA snapshot).

## Arguments

- `selector` or `ref`: CSS selector or ref from `a11y_take-aria-snapshot`
- `text`: Text to enter

## Examples

```
/fill e1 john.doe
/fill #username john.doe
/fill input[name="email"] user@example.com
```

## MCP Tools Used

- `interaction_fill` - Accepts selector or ref (e1, @e1)
