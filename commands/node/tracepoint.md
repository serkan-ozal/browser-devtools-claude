---
name: tracepoint
description: Set a tracepoint to capture call stack and variables without pausing
---

# /tracepoint

Set a tracepoint to capture call stack and variables without pausing.

## Usage

```
/tracepoint <url-pattern> <line-number> [condition]
```

## Description

Sets a non-blocking tracepoint. When the code location is hit, captures call stack and local variables. Execution continues. Use `PLATFORM=node` and connect first.

## Arguments

- `url-pattern` — File pattern (e.g. `server.js`, `**/routes/*.ts`)
- `line-number` — Line number
- `condition` — Optional expression to filter hits

## Examples

```
/tracepoint server.js 42
/tracepoint routes/api.js 15 "req.method === 'POST'"
```

## MCP Tools Used

- `debug_put-tracepoint` — urlPattern, lineNumber, columnNumber, condition, hitCondition
