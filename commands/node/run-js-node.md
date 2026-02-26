---
name: run-js-node
description: Execute JavaScript in the connected Node.js process
---

# /run-js-node

Execute JavaScript in the connected Node.js process.

## Usage

```
/run-js-node <script>
```

## Description

Runs JavaScript in the connected Node.js process. Access `process`, `require()`, globals. Use `PLATFORM=node` and connect first.

## Examples

```
/run-js-node process.memoryUsage()
/run-js-node require('os').cpus().length
```

## MCP Tools Used

- `run_js-in-node` — script, timeoutMs (Node platform only)
