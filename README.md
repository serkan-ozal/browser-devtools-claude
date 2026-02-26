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
    },
    "node-devtools": {
      "command": "npx",
      "args": ["-y", "browser-devtools-mcp@latest"],
      "env": {
        "PLATFORM": "node"
      }
    }
  }
}
```

The plugin includes both **browser** and **node** MCP servers by default. This manual setup gives you the MCP tools without the plugin's skills, commands, or agents. See [CONFIG.md](./CONFIG.md) for all environment variables.

## Usage

### Slash commands

Commands are split by platform. See [docs/commands/](./docs/commands/).

**Browser** (`PLATFORM=browser`): `/browse`, `/screenshot`, `/click`, `/fill`, `/hover`, `/accessibility`, `/console`, `/network`, `/webvitals`, `/figma`, `/run-js`, and more — see [commands/browser/](./commands/browser/).

**Node** (`PLATFORM=node`): `/connect`, `/disconnect`, `/tracepoint`, `/logpoint`, `/snapshots`, `/run-js-node`, and more — see [commands/node/](./commands/node/).

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

The plugin registers two MCP servers by default:

- **browser-devtools** — Web automation via Playwright (`PLATFORM=browser`)
- **node-devtools** — Attach to Node.js processes for non-blocking debugging (`PLATFORM=node`)

Both are active at once; use browser commands for web pages and node commands for backend debugging.

## Contents

- **Skills**: web-debugging, node-debugging, browser-testing, observability, performance-audit, visual-testing
- **Commands**: [Browser](commands/browser/) (browse, screenshot, click, …) | [Node](commands/node/) (connect, tracepoint, logpoint, …)
- **Agents**: accessibility-auditor, design-qa, performance-analyzer, qa-tester, scraper
- **Config**: [CONFIG.md](./CONFIG.md) — Environment variables and platform selection
