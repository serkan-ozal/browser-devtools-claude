---
name: select
description: Select an option from a dropdown or select element by selector or ref
---

# /select

Select an option from a dropdown or select element.

## Usage

```
/select <selector|ref> <value>
```

## Description

Selects an option from a `<select>` dropdown. Use CSS selector or ref (e.g. `e1` from ARIA snapshot).

## Examples

```
/select e1 USA
/select #country USA
/select select[name="size"] Large
```

## MCP Tools Used

- `interaction_select` - Accepts selector or ref (e1, @e1)
