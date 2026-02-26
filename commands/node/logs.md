---
name: logs
description: Get console output from the connected Node.js process
---

# /logs

Get console output from the connected Node.js process.

## Usage

```
/logs [filter]
```

## Description

Retrieves console.log, console.error, console.warn output from the connected Node.js process. Use `PLATFORM=node` and connect first.

## Examples

```
/logs
/logs error
```

## MCP Tools Used

- `debug_get-logs` — type, search, limit (Node platform only)
