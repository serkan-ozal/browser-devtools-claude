---
name: exceptionpoint
description: Configure exception breakpoints to capture snapshots on exceptions
---

# /exceptionpoint

Configure exception breakpoints.

## Usage

```
/exceptionpoint <state>
```

## Description

Captures snapshots when exceptions occur. Use `PLATFORM=node` and connect first.

## Arguments

- `state` — `none` (disable), `uncaught` (uncaught only), `all` (all exceptions)

## Examples

```
/exceptionpoint uncaught
/exceptionpoint all
```

## MCP Tools Used

- `debug_put-exceptionpoint` — state (none, uncaught, all)
