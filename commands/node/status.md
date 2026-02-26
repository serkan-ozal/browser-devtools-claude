---
name: status
description: Get debugging status of the connected Node.js process
---

# /status

Get debugging status.

## Usage

```
/status
```

## Description

Gets debugging status: probe counts (tracepoints, logpoints, watches), exceptionpoint state. Use with `PLATFORM=node` after connecting.

## MCP Tools Used

- `debug_status` — Probe counts, exceptionpoint state
