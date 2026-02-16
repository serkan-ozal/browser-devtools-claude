# browser-devtools-claude

Claude Plugin for [Browser DevTools MCP](https://www.npmjs.com/package/browser-devtools-mcp) — Playwright browser automation and non-blocking Node.js backend debugging.

## Prerequisites

- [Claude Code](https://code.claude.com) (CLI + authenticated)
- Node.js 18+ (for `npx` — the MCP server runs as an npm package)

## Installation

### Option 1: Plugin (recommended)

1. In Claude Code, run: `/plugin`
2. Add this repo as a marketplace: `/plugin marketplace add serkan-ozal/browser-devtools-claude`
3. Install: `/plugin install browser-devtools-mcp@serkan-ozal/browser-devtools-claude`

### Option 2: Manual MCP configuration

Example — add to `~/.claude/settings.json` (see [CONFIG.md](./CONFIG.md) for more):

```json
{
  "mcpServers": {
    "browser-devtools": {
      "command": "npx",
      "args": ["-y", "browser-devtools-mcp@latest"],
      "env": {
        "PLATFORM": "browser",
        "BROWSER_HEADLESS_ENABLE": "true"
      }
    }
  }
}
```

This gives you the MCP tools without the plugin’s skills, commands, or agents. See [CONFIG.md](./CONFIG.md) for all environment variables.

## Usage

### Slash commands

Some common commands (see `commands/` for the full list):

| Command | Description |
|---------|-------------|
| `/browse <url>` | Navigate to a URL and interact with the page |
| `/screenshot` | Capture page or element screenshot |
| `/click`, `/fill`, `/hover` | Interact with elements |
| `/accessibility` | Run accessibility snapshot (ARIA/AX tree) |
| `/console`, `/network` | Inspect logs and HTTP requests |
| `/webvitals` | Get Core Web Vitals metrics |
| `/figma` | Compare page with Figma design |
| `/run-js` | Execute JavaScript in the page |

### Agents

Use agents for focused tasks:

- **accessibility-auditor** — WCAG / a11y review
- **design-qa** — Figma vs live UI comparison
- **performance-analyzer** — LCP, CLS, INP
- **qa-tester** — Automated testing flows
- **scraper** — Extract data from pages

### Skills

The plugin activates skills when you mention:

- **web-debugging** — Console, network, tracepoints
- **node-debugging** — Node.js backend tracepoints
- **browser-testing** — Playwright-style flows
- **observability** — Traces, OTEL
- **performance-audit** — Web Vitals
- **visual-testing** — Figma comparison

### Platform mode

- **browser** (default) — Web automation via Playwright
- **node** — Attach to Node.js processes for debugging (`PLATFORM=node`)

## Contents

- **Skills**: web-debugging, node-debugging, browser-testing, observability, performance-audit, visual-testing
- **Commands**: Slash commands for browse, screenshot, click, fill, and more
- **Agents**: accessibility-auditor, design-qa, performance-analyzer, qa-tester, scraper
- **Config**: [CONFIG.md](./CONFIG.md) — Environment variables and platform selection
