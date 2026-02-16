# browser-devtools-claude

Claude Plugin for [Browser DevTools MCP](https://www.npmjs.com/package/browser-devtools-mcp) — Playwright browser automation and non-blocking Node.js backend debugging.

## Installation

Add the plugin via Claude Code settings or use the plugin from the Claude marketplace.

## Contents

- **Skills**: web-debugging, node-debugging, browser-testing, observability, performance-audit, visual-testing
- **Commands**: Slash commands for browse, screenshot, click, fill, and more
- **Agents**: accessibility-auditor, design-qa, performance-analyzer, qa-tester, scraper
- **Config**: [CONFIG.md](./CONFIG.md) — Environment variables and platform selection (browser/node)

## MCP Server

This plugin configures the `browser-devtools-mcp` npm package. Set `PLATFORM=browser` for web automation or `PLATFORM=node` for Node.js backend debugging.
