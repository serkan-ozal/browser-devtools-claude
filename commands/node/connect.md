---
name: connect
description: Connect to a Node.js process for debugging via V8 Inspector
---

# /connect

Connect to a Node.js process for debugging.

## Usage

```
/connect <pid|process-name|port|ws-url>
```

## Description

Connects to a running Node.js process via the V8 Inspector Protocol. Required before using tracepoint, logpoint, or run-js-node. Use `PLATFORM=node` in MCP config.

## Arguments

- `pid` — Process ID (e.g. `12345`)
- `process-name` — Process name (e.g. `node server.js`)
- `port` — Inspector port (e.g. `9229`)
- `ws-url` — WebSocket URL to inspector

For Docker: use `containerName` or `containerId`; set `host` to `host.docker.internal` when MCP runs in a container.

## Examples

```
/connect 12345
/connect node server.js
/connect 9229
```

## MCP Tools Used

- `debug_connect` — Connect by pid, processName, containerId, containerName, host, inspectorPort, wsUrl
