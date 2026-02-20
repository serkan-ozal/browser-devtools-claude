# Web Debugging Skill

Debug web applications by inspecting console logs, network requests, JavaScript errors, and using non-blocking tracepoints/logpoints.

## When to Use

This skill activates when:
- User reports a bug or error on a web page
- User asks to debug JavaScript issues
- User wants to inspect API calls or network requests
- User needs to troubleshoot page loading issues
- User mentions console errors or warnings
- User wants to trace code execution without pausing

## Capabilities

### Console Inspection
- Get all console messages (`o11y_get-console-messages`)
- Filter by log level (error, warn, info, debug)
- Identify JavaScript exceptions and stack traces

### Network Analysis
- Monitor HTTP requests (`o11y_get-http-requests`)
- Inspect request/response headers
- Check response status codes and timing
- Identify failed or slow requests

### JavaScript Debugging
- Execute diagnostic code (`run_js-in-browser`)
- Inspect DOM state and element properties
- Check localStorage, sessionStorage, cookies
- Verify JavaScript variables and state

### Non-Blocking Debugging (Advanced)
- **Tracepoints** (`debug_put-tracepoint`): Capture call stack and local variables at specific code locations without pausing
- **Logpoints** (`debug_put-logpoint`): Evaluate and log expressions at code locations
- **Exceptionpoints** (`debug_put-exceptionpoint`): Capture snapshots when exceptions occur
- **Netpoints** (`debug_put-netpoint`): Monitor specific network requests/responses (browser only)
- **Dompoints** (`debug_put-dompoint`): Monitor DOM mutations on specific elements (browser only)
- **Watch Expressions** (`debug_add-watch`): Evaluate expressions at every tracepoint hit
- Get snapshots: `debug_get-tracepoint-snapshots`, `debug_get-logpoint-snapshots`, etc.

For Node.js backend debugging, use `PLATFORM=node` and see the node-debugging skill. Node platform adds `run_js-in-node` and `debug_get-logs`; Dompoints/Netpoints are browser-only.

### Error Investigation
- ARIA snapshot first (`a11y_take-aria-snapshot`) for page structure; then screenshot for visual verification
- Annotated screenshot (`content_take-screenshot` with `annotate: true`) when you need labeled elements
- HTML snapshot, check for 404s

## Debugging Workflow

1. **Reproduce**: Navigate to the problematic page
2. **ARIA snapshot**: Get page structure and refs
3. **Capture**: Screenshot (annotated if needed for element identification)
4. **Inspect Console**: Check for JavaScript errors
5. **Analyze Network**: Look for failed requests
6. **Set Probes**: Add tracepoints/logpoints if needed for deeper investigation
7. **Investigate**: Run diagnostic JavaScript or trigger probes
8. **Collect Snapshots**: Get captured debug snapshots
9. **Document**: Summarize findings with evidence

## Best Practices

- Always check console for errors first
- Filter network requests to relevant endpoints
- Take screenshots before and after actions
- Use tracepoints for call stack inspection without stopping execution
- Use logpoints for lightweight logging at specific code points
- Document reproduction steps clearly
