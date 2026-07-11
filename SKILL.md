---
name: nixos
description: Use when the user asks about NixOS, Nix language, flakes, nixpkgs, configuration.nix, nixos-rebuild, modules, options, overlays, derivations, mkDerivation, callPackage, home-manager, nix-darwin, devenv, packaging, cross-compilation, binary caches, garbage collection, NixOS containers, networking, firewall, systemd services, filesystems, LUKS, Wayland, X11, kernel, profiles, NixOS testing or VM tests, ISO images, Docker images, Raspberry Pi, Terraform, distributed builds, remote machines, pinning nixpkgs, rollback, generations, Nix Pills, or any topic related to configuring, packaging, deploying, or troubleshooting NixOS and the Nix ecosystem.
version: 0.2.0
---

# NixOS Documentation

Complete reference for NixOS and the Nix ecosystem, auto-generated from official repositories:

- [nix.dev](https://nix.dev/) — tutorials, guides, best practices
- [NixOS Manual](https://nixos.org/manual/nixos/stable/) — from `NixOS/nixpkgs`
- [Nix Pills](https://nixos.org/guides/nix-pills/) — progressive learning series
- [Release Wiki](https://nixos.github.io/release-wiki/) — NixOS release process

The `references/` directory contains full, unmodified documentation from those sources, updated daily.

## How to Use

1. Identify the topic from the user's question and read the matching reference file from the tables below.
2. Base answers on those files. If more detail is needed, fetch the latest docs from the raw GitHub URLs in Live Fetching.
3. Distinguish between **NixOS module options** (`services.nginx.enable = true;`) and **Nix language expressions** (`pkgs.mkDerivation { ... }`).
4. Show examples using current syntax (`configuration.nix` or flake-based configs). When flakes are relevant, show both the classic (channels) and flakes approach.
5. For packaging, prefer the `callPackage` pattern over raw `import`.
6. Beginners: start with `references/first-steps.md` or `references/nix-pills.md`. Troubleshooting: check `references/troubleshooting.md` and `references/faq.md` first. System issues: `references/nixos-administration.md`.

## Reference Files

### Getting Started

| Topic | File |
|-------|------|
| Installing Nix package manager | **`references/install-nix.md`** |
| NixOS installation (USB, PXE, VirtualBox, proxy, other distro) | **`references/nixos-installation.md`** |
| First steps (ad-hoc shells, declarative shell, reproducible scripts) | **`references/first-steps.md`** |
| Upgrading NixOS | **`references/nixos-upgrading.md`** |
| Changing NixOS configuration | **`references/nixos-changing-config.md`** |
| Glossary and terminology | **`references/glossary.md`** |
| FAQ | **`references/faq.md`** |

### Nix Language & Concepts

| Topic | File |
|-------|------|
| Nix language tutorial | **`references/nix-language.md`** |
| Flakes (concept and usage) | **`references/flakes.md`** |
| callPackage design pattern | **`references/callpackage.md`** |
| Module system (basics and deep dive) | **`references/module-system.md`** |
| Working with local files in Nix | **`references/working-with-local-files.md`** |
| Pinning nixpkgs versions | **`references/pinning-nixpkgs.md`** |
| Nix Pills (progressive learning, 20 lessons) | **`references/nix-pills.md`** |

### NixOS Configuration

| Topic | File |
|-------|------|
| Configuration syntax, modularity, abstractions | **`references/nixos-config-syntax.md`** |
| Package management (declarative, ad-hoc, custom packages) | **`references/nixos-package-mgmt.md`** |
| User management | **`references/nixos-user-mgmt.md`** |
| Networking (firewall, SSH, IPv4/6, wireless, NetworkManager) | **`references/nixos-networking.md`** |
| Filesystems (LUKS, SSHFS, OverlayFS) | **`references/nixos-filesystems.md`** |
| Display server (X11, Wayland, Xfce, GPU acceleration) | **`references/nixos-display-server.md`** |
| Linux kernel configuration | **`references/nixos-linux-kernel.md`** |
| Kubernetes | **`references/nixos-kubernetes.md`** |
| Configuration profiles (minimal, graphical, headless, etc.) | **`references/nixos-profiles.md`** |

### NixOS Administration

| Topic | File |
|-------|------|
| Service management, logging, rollback, troubleshooting, boot problems | **`references/nixos-administration.md`** |
| Containers (declarative, imperative, networking) | **`references/nixos-containers.md`** |

### NixOS Development

| Topic | File |
|-------|------|
| Writing NixOS modules (options, types, assertions) | **`references/nixos-writing-modules.md`** |
| NixOS tests (writing, running, interactive) | **`references/nixos-testing.md`** |
| Building NixOS images (ISO, systemd-repart) | **`references/nixos-building-images.md`** |

### Packaging & Build

| Topic | File |
|-------|------|
| Packaging existing software for nixpkgs | **`references/packaging-tutorial.md`** |
| Cross-compilation | **`references/cross-compilation.md`** |

### Tutorials

| Topic | File |
|-------|------|
| NixOS configuration on a VM | **`references/nixos-vm-tutorial.md`** |
| Building and running Docker images | **`references/nixos-docker-tutorial.md`** |
| Building a bootable ISO image | **`references/nixos-iso-tutorial.md`** |
| Integration testing with VMs | **`references/nixos-testing-tutorial.md`** |
| Deploying NixOS with Terraform | **`references/nixos-terraform-tutorial.md`** |
| Distributed builds setup | **`references/nixos-distributed-builds.md`** |
| NixOS on Raspberry Pi | **`references/nixos-raspberry-pi.md`** |
| Provisioning remote machines | **`references/nixos-remote-machines.md`** |
| Binary cache setup | **`references/nixos-binary-cache.md`** |

### Guides & Recipes

| Topic | File |
|-------|------|
| Best practices | **`references/best-practices.md`** |
| Troubleshooting | **`references/troubleshooting.md`** |
| Recipes (direnv, CI, dependencies, Python env, binary cache, sharing deps) | **`references/recipes.md`** |

### Release Process

| Topic | File |
|-------|------|
| NixOS release process, roles, branch-off, beta, freeze | **`references/release-process.md`** |

## Live Fetching

When reference files are insufficient, fetch the latest docs from raw GitHub:

### nix.dev
```
https://raw.githubusercontent.com/NixOS/nix.dev/master/source/<path>.md
```

### NixOS Manual (nixpkgs)
```
https://raw.githubusercontent.com/NixOS/nixpkgs/master/nixos/doc/manual/<section>/<file>.md
```

### Nix Pills
```
https://raw.githubusercontent.com/NixOS/nix-pills/master/pills/<NN>-<slug>.md
```
