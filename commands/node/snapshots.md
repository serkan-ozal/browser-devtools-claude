---
name: snapshots
description: Get captured tracepoint, logpoint, or exceptionpoint snapshots
---

# /snapshots

Get captured tracepoint, logpoint, or exceptionpoint snapshots.

## Usage

```
/snapshots [types] [from-sequence]
```

## Description

Retrieves captured snapshots. Use `PLATFORM=node` after setting tracepoints/logpoints/exceptionpoints and triggering the code.

## Arguments

- `types` — tracepoint, logpoint, exceptionpoint (optional; omit for all)
- `from-sequence` — Incremental polling (get only new snapshots)

## MCP Tools Used

- `debug_get-probe-snapshots` — types, probeId, fromSequence, limit → tracepointSnapshots, logpointSnapshots, exceptionpointSnapshots
