# Node Platform Commands

Use with `PLATFORM=node`. Node.js backend debugging via V8 Inspector.

| Command | Tool(s) |
|---------|---------|
| /connect | debug_connect |
| /disconnect | debug_disconnect |
| /logs | debug_get-logs |
| /status | debug_status |
| /tracepoint | debug_put-tracepoint |
| /logpoint | debug_put-logpoint |
| /exceptionpoint | debug_put-exceptionpoint |
| /snapshots | debug_get-probe-snapshots |
| /run-js-node | run_js-in-node |

Additional tools (no dedicated command): debug_clear-probe-snapshots, debug_list-probes, debug_remove-probe, debug_clear-probes, debug_add-watch, debug_resolve-source-location.
