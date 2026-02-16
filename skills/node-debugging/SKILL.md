# Node.js Backend Debugging Skill

Debug Node.js backend processes using non-blocking tracepoints, logpoints, exceptionpoints, and JavaScript execution. Use when the user needs to debug API servers, workers, or backend scripts.

## When to Use

This skill activates when:
- User asks to debug Node.js backend or API
- User wants to trace function calls in a running server
- User needs to inspect variables or state in a Node process
- User mentions backend errors, API bugs, or server-side issues
- User wants to run JavaScript in a connected Node process

## Prerequisites

- Use MCP with `PLATFORM=node` or run `node-devtools-mcp` separately
- Connect to the target process before other debug commands (`debug_connect`)

## Capabilities

### Connection
- Connect by PID (`debug_connect` with `pid`)
- Connect by process name (`debug_connect` with `processName`)
- Connect by Docker container (`debug_connect` with `containerName` or `containerId`)
- Connect by inspector port or WebSocket URL

For Docker: use `host.docker.internal` or container name when MCP runs in a container. Mount `/var/run/docker.sock` in the MCP container.

### Non-Blocking Debugging
- **Tracepoints** (`debug_put-tracepoint`): Capture call stack and local variables at code locations
- **Logpoints** (`debug_put-logpoint`): Evaluate and log expressions
- **Exceptionpoints** (`debug_put-exceptionpoint`): Capture on uncaught or all exceptions
- **Watch expressions** (`debug_add-watch`): Evaluate at every tracepoint hit

### Snapshot Retrieval
- `debug_get-tracepoint-snapshots`
- `debug_get-logpoint-snapshots`
- `debug_get-exceptionpoint-snapshots`
- Clear snapshots when done to free memory

### Console & Source Maps
- **Console logs** (`debug_get-logs`): Captures console.log, error, warn from the Node process
- **Source maps** (`debug_resolve-source-location`): Resolve bundled code to original source

### JavaScript Execution
- **Run in process** (`run_js-in-node`): Execute arbitrary JavaScript in the connected Node process—inspect `process.memoryUsage()`, call `require()` modules, read globals

## Debugging Workflow

1. **Connect**: `debug_connect` with pid, processName, or containerName
2. **Set probes**: Tracepoints on route handlers, exceptionpoints for errors
3. **Trigger**: Make API requests or trigger the code path
4. **Collect**: `debug_get-tracepoint-snapshots` or `debug_get-exceptionpoint-snapshots`
5. **Investigate**: Use `run_js-in-node` for dynamic inspection
6. **Cleanup**: `debug_clear-tracepoints`, `debug_disconnect`

## Best Practices

- Use `urlPattern` matching script paths (e.g. `routes/api.ts`, `server.js`)
- Start with exceptionpoints to catch errors first
- Use logpoints for lightweight monitoring
- Poll snapshots with `fromSequence` for efficiency
- Clear probes when done to avoid overhead
