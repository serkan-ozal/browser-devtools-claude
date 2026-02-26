---
name: logpoint
description: Set a logpoint to evaluate and log expressions without pausing
---

# /logpoint

Set a logpoint to evaluate and log expressions without pausing.

## Usage

```
/logpoint <url-pattern> <line-number> <expression> [condition]
```

## Description

Evaluates an expression when the code location is hit and logs the result. Lighter than tracepoint (no call stack). Use `PLATFORM=node` and connect first.

## Examples

```
/logpoint server.js 42 "req.url"
/logpoint api.js 10 "JSON.stringify(err)"
```

## MCP Tools Used

- `debug_put-logpoint` — urlPattern, lineNumber, logExpression, columnNumber, condition, hitCondition
