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

## Releasing

### Version script

```bash
./scripts/sync-versions.sh <version|patch|minor|major>
```

- **patch** (0.2.3 → 0.2.4), **minor** (0.2.3 → 0.3.0), **major** (0.2.3 → 1.0.0)
- Or pass explicit version: `./scripts/sync-versions.sh 0.2.4`

### GitHub release

1. Add `GH_ACCESS_TOKEN` (PAT with `repo` scope) to repository secrets
2. Go to **Actions** → **Release** → **Run workflow**
3. Select version scale (patch/minor/major)
4. Workflow bumps version, commits, creates tag (e.g. `v0.2.4`), and publishes GitHub release
