#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(dirname "$SCRIPT_DIR")"
PLUGIN_JSON="$REPO_ROOT/.claude-plugin/plugin.json"
MARKETPLACE_JSON="$REPO_ROOT/.claude-plugin/marketplace.json"

bump_version() {
  local version=$1
  local bump=$2

  local major minor patch
  major=$(echo "$version" | cut -d. -f1)
  minor=$(echo "$version" | cut -d. -f2)
  patch=$(echo "$version" | cut -d. -f3)

  case $bump in
    patch) echo "$major.$minor.$((patch + 1))" ;;
    minor) echo "$major.$((minor + 1)).0" ;;
    major) echo "$((major + 1)).0.0" ;;
    *) echo "$version" ;;
  esac
}

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <version|patch|minor|major>"
  echo ""
  echo "  version  Explicit version (e.g. 0.2.4)"
  echo "  patch    Bump patch (0.2.3 -> 0.2.4)"
  echo "  minor    Bump minor (0.2.3 -> 0.3.0)"
  echo "  major    Bump major (0.2.3 -> 1.0.0)"
  exit 1
fi

INPUT=$1

if [[ "$INPUT" == "patch" || "$INPUT" == "minor" || "$INPUT" == "major" ]]; then
  if [[ ! -f "$PLUGIN_JSON" ]]; then
    echo "❌ Error: $PLUGIN_JSON not found"
    exit 1
  fi
  CURRENT=$(jq -r '.version' "$PLUGIN_JSON")
  if [[ -z "$CURRENT" || "$CURRENT" == "null" ]]; then
    echo "❌ Error: Could not read version from $PLUGIN_JSON"
    exit 1
  fi
  VERSION=$(bump_version "$CURRENT" "$INPUT")
  echo "📦 Bumping $INPUT: $CURRENT -> $VERSION"
else
  VERSION=$INPUT
  if [[ ! "$VERSION" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo "❌ Error: Invalid version format. Use semantic version (e.g. 0.2.4)"
    exit 1
  fi
  echo "📦 Setting version to $VERSION"
fi

# Update plugin.json
if [[ -f "$PLUGIN_JSON" ]]; then
  jq --arg v "$VERSION" '.version = $v' "$PLUGIN_JSON" > "$PLUGIN_JSON.tmp" && mv "$PLUGIN_JSON.tmp" "$PLUGIN_JSON"
  echo "  ✅ .claude-plugin/plugin.json"
fi

# Update marketplace.json
if [[ -f "$MARKETPLACE_JSON" ]]; then
  jq --arg v "$VERSION" '.metadata.version = $v | .plugins[].version = $v' "$MARKETPLACE_JSON" > "$MARKETPLACE_JSON.tmp" && mv "$MARKETPLACE_JSON.tmp" "$MARKETPLACE_JSON"
  echo "  ✅ .claude-plugin/marketplace.json"
fi

echo ""
echo "✅ Done: All files updated to version $VERSION"
