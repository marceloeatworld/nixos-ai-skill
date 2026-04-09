# NixOS AI Skill

Auto-updated [NixOS](https://nixos.org/) and [Nix](https://nix.dev/) documentation for AI coding assistants.

Uses the open [Agent Skills](https://agentskills.io) standard (SKILL.md). Works with **33+ AI coding assistants** including Claude Code, Cursor, Windsurf, GitHub Copilot, OpenAI Codex, Gemini CLI, Amp, OpenCode, Cline, Aider, Goose, Roo Code, and [many more](https://agentskills.io/clients).

References are **auto-generated** daily from four official NixOS repositories via GitHub Actions.

## Sources

| Repository | What it provides |
|-----------|-----------------|
| [NixOS/nix.dev](https://github.com/NixOS/nix.dev) | Tutorials, guides, best practices, glossary |
| [NixOS/nixpkgs](https://github.com/NixOS/nixpkgs) `nixos/doc/manual/` | NixOS manual (installation, configuration, administration, modules) |
| [NixOS/nix-pills](https://github.com/NixOS/nix-pills) | Progressive Nix learning series (20 lessons) |
| [NixOS/release-wiki](https://github.com/NixOS/release-wiki) | NixOS release process documentation |

## Install

### Quick start

Clone into whichever directory your AI tool reads context from:

```bash
# Cursor
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .cursor/skills/nixos

# Windsurf
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .windsurf/skills/nixos

# GitHub Copilot
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .github/copilot-instructions.d/nixos

# Cline
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .cline/skills/nixos

# Claude Code (global, all projects)
git clone https://github.com/marceloeatworld/nixos-ai-skill.git ~/.claude/skills/nixos

# Claude Code (project-local)
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .claude/skills/nixos

# OpenCode
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .opencode/skills/nixos

# Aider
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .aider/skills/nixos

# Amp
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .amp/skills/nixos

# ForgeCode
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .forgecode/skills/nixos

# Gemini CLI
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .gemini/skills/nixos

# OpenAI Codex
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .agents/skills/nixos

# Cross-agent standard (works with any Agent Skills compatible tool)
git clone https://github.com/marceloeatworld/nixos-ai-skill.git .agents/skills/nixos
```

### With the install script

```bash
curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash -s -- --claude
curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash -s -- --cursor
curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash -s -- --windsurf
curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash -s -- --copilot
curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash -s -- --opencode
curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash -s -- --amp
curl -fsSL https://raw.githubusercontent.com/marceloeatworld/nixos-ai-skill/main/install.sh | bash -s -- --custom /path/you/want
```

Run `./install.sh --help` for all options.

## Update

```bash
git -C <install-path> pull
```

The references are updated daily by GitHub Actions, so `git pull` always gives you the latest documentation.

## What it covers

| Category | Topics |
|----------|--------|
| **Getting Started** | Installing Nix, NixOS installation, first steps, upgrading, FAQ, glossary |
| **Nix Language** | Language tutorial, flakes, callPackage, module system, pinning nixpkgs |
| **NixOS Configuration** | Syntax, packages, users, networking, filesystems, display server, kernel, profiles |
| **Administration** | Service management, logging, rollback, containers, troubleshooting |
| **Development** | Writing modules, NixOS tests, building images |
| **Packaging** | Packaging tutorial, cross-compilation |
| **Tutorials** | VM setup, Docker images, ISO building, Terraform, distributed builds, Raspberry Pi |
| **Guides** | Best practices, recipes (direnv, CI, Python, binary cache), troubleshooting |
| **Nix Pills** | 20-lesson progressive learning series (derivations, stdenv, callPackage, etc.) |
| **Release Process** | Roles, branch-off, beta phase, feature freeze, release steps |

## How it works

```
User asks about NixOS / Nix
        |
        v
AI reads matching reference file from references/
        |
        v
If more detail needed -> fetch latest from raw.githubusercontent.com
        |
        v
Answer with correct Nix syntax and configuration.nix / flake.nix examples
```

The `SKILL.md` file acts as a routing table: it maps topics to reference files and provides fallback URLs for live fetching.

The `references/` directory contains **full unmodified documentation** from four official NixOS repos — not summaries.

## How references stay up to date

A [GitHub Actions workflow](.github/workflows/update-references.yml) runs daily:

1. Clones `NixOS/nix.dev`, `NixOS/nix-pills`, `NixOS/release-wiki` (shallow)
2. Sparse-checkouts `NixOS/nixpkgs` for `nixos/doc/manual/` only
3. Runs `scripts/generate-references.sh` to regenerate all reference files
4. If anything changed, commits and pushes

You can also regenerate manually:

```bash
bash scripts/generate-references.sh
```

## Structure

```
nixos-ai-skill/
├── SKILL.md                              # Main instruction file (topic -> reference map)
├── install.sh                            # Multi-tool install script
├── scripts/
│   └── generate-references.sh            # Fetches docs and generates references
├── .github/workflows/
│   └── update-references.yml             # Daily auto-update from official repos
└── references/                           # Auto-generated (~40 files)
    ├── .wiki-version                     # Source commit tracker (all 4 repos)
    ├── nix-language.md                   # Nix language tutorial
    ├── flakes.md                         # Flakes concept
    ├── first-steps.md                    # Getting started with Nix
    ├── nixos-installation.md             # NixOS installation guide
    ├── nixos-networking.md               # Networking configuration
    ├── nixos-writing-modules.md          # Module development
    ├── nix-pills.md                      # All 20 Nix Pills
    └── ...
```

## Compatibility

Built on the open [Agent Skills](https://agentskills.io) standard (SKILL.md). Compatible with [33+ AI coding tools](https://agentskills.io/clients):

| Tool | Install path |
|------|-------------|
| **Cross-agent standard** | `.agents/skills/nixos` |
| Claude Code (global) | `~/.claude/skills/nixos` |
| Claude Code (project) | `.claude/skills/nixos` |
| Cursor | `.cursor/skills/nixos` |
| Windsurf | `.windsurf/skills/nixos` |
| GitHub Copilot / VS Code | `.github/skills/nixos` |
| OpenAI Codex | `.agents/skills/nixos` |
| Gemini CLI | `.gemini/skills/nixos` |
| Amp | `.amp/skills/nixos` |
| OpenCode | `.opencode/skills/nixos` |
| Cline | `.cline/skills/nixos` |
| Aider | `.aider/skills/nixos` |
| Goose | `.goose/skills/nixos` |
| Roo Code | `.roo/skills/nixos` |

For tools not listed, clone into whichever directory your tool reads context/rules from.

## Examples

```
> How do I set up a NixOS configuration with flakes?
> What's the difference between nix-shell and nix develop?
> How do I add a custom package to my NixOS system?
> Configure Nginx with HTTPS on NixOS
> How do I write a NixOS module with custom options?
> What is callPackage and how does it work?
> How do I set up full disk encryption with LUKS on NixOS?
> Run NixOS tests for my module
```

## Credits

- [NixOS](https://nixos.org/) and the Nix community
- [nix.dev](https://nix.dev/) documentation team
- [Nix Pills](https://nixos.org/guides/nix-pills/) by Luca Bruno
