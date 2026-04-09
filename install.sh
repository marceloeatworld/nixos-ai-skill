#!/usr/bin/env bash
set -euo pipefail

# Install/update the NixOS documentation skill for AI coding assistants
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash
#   # or
#   ./install.sh [--claude|--cursor|--windsurf|--copilot|--codex|--gemini|--opencode|--cline|--aider|--amp|--goose|--roo|--agents|--custom PATH]

REPO_URL="https://github.com/marceloeatworld/nixos-ai-skill.git"
SKILL_NAME="nixos"
TARGET=""

print_help() {
    cat <<'EOF'
NixOS AI Skill Installer

Usage: install.sh [OPTIONS]

Options:
  --agents        Cross-agent standard (.agents/skills/nixos)
  --claude        Claude Code (~/.claude/skills/nixos)
  --cursor        Cursor (.cursor/skills/nixos)
  --windsurf      Windsurf (.windsurf/skills/nixos)
  --copilot       GitHub Copilot (.github/skills/nixos)
  --codex         OpenAI Codex (.agents/skills/nixos)
  --gemini        Gemini CLI (.gemini/skills/nixos)
  --opencode      OpenCode (.opencode/skills/nixos)
  --cline         Cline (.cline/skills/nixos)
  --aider         Aider (.aider/skills/nixos)
  --amp           Amp (.amp/skills/nixos)
  --goose         Goose (.goose/skills/nixos)
  --roo           Roo Code (.roo/skills/nixos)
  --custom PATH   Custom path
  -h, --help      Show this help

Without options, installs to .agents/skills/nixos (cross-agent standard).

To update, just run the install script again (or git pull).
EOF
    exit 0
}

for arg in "$@"; do
    case "$arg" in
        --agents)    TARGET=".agents/skills/$SKILL_NAME" ;;
        --claude)    TARGET="$HOME/.claude/skills/$SKILL_NAME" ;;
        --cursor)    TARGET=".cursor/skills/$SKILL_NAME" ;;
        --windsurf)  TARGET=".windsurf/skills/$SKILL_NAME" ;;
        --copilot)   TARGET=".github/skills/$SKILL_NAME" ;;
        --codex)     TARGET=".agents/skills/$SKILL_NAME" ;;
        --gemini)    TARGET=".gemini/skills/$SKILL_NAME" ;;
        --opencode)  TARGET=".opencode/skills/$SKILL_NAME" ;;
        --cline)     TARGET=".cline/skills/$SKILL_NAME" ;;
        --aider)     TARGET=".aider/skills/$SKILL_NAME" ;;
        --amp)       TARGET=".amp/skills/$SKILL_NAME" ;;
        --goose)     TARGET=".goose/skills/$SKILL_NAME" ;;
        --roo)       TARGET=".roo/skills/$SKILL_NAME" ;;
        --custom)    ;; # next arg will be the path
        --help|-h)   print_help ;;
        *)
            if [[ -z "$TARGET" ]]; then
                TARGET="$arg"
            else
                echo "Unknown option: $arg"
                exit 1
            fi
            ;;
    esac
done

# Default: cross-agent standard
if [[ -z "$TARGET" ]]; then
    TARGET=".agents/skills/$SKILL_NAME"
fi

echo "==> Installing NixOS documentation skill"
echo "    Target: $TARGET"

if [[ -d "$TARGET/.git" ]]; then
    echo "==> Updating existing installation..."
    git -C "$TARGET" pull --quiet
else
    echo "==> Cloning repository..."
    mkdir -p "$(dirname "$TARGET")"
    rm -rf "$TARGET"
    git clone --quiet "$REPO_URL" "$TARGET"
fi

echo "==> Verifying..."
if [[ -f "$TARGET/SKILL.md" ]]; then
    REFS=$(find "$TARGET/references" -name '*.md' 2>/dev/null | wc -l)
    echo "    SKILL.md: OK"
    echo "    References: $REFS files"

    if [[ -f "$TARGET/references/.wiki-version" ]]; then
        source "$TARGET/references/.wiki-version"
        echo "    nix.dev:      $nixdev_commit ($nixdev_date)"
        echo "    nixpkgs:      $nixpkgs_commit ($nixpkgs_date)"
        echo "    nix-pills:    $pills_commit ($pills_date)"
        echo "    release-wiki: $release_commit ($release_date)"
    fi
else
    echo "    ERROR: SKILL.md not found!"
    exit 1
fi

echo ""
echo "==> Done!"
echo ""
echo "Update later:  git -C $TARGET pull"
echo "Regenerate:    bash $TARGET/scripts/generate-references.sh"
