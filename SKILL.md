---
name: nixos
description: Use when the user asks about NixOS, Nix language, flakes, nixpkgs, configuration.nix, nixos-rebuild, modules, options, overlays, derivations, mkDerivation, callPackage, home-manager, nix-darwin, devenv, packaging, cross-compilation, binary caches, garbage collection, NixOS containers, networking, firewall, systemd services, filesystems, LUKS, Wayland, X11, kernel, profiles, NixOS testing or VM tests, ISO images, Docker images, Raspberry Pi, Terraform, distributed builds, remote machines, pinning nixpkgs, rollback, generations, Nix Pills, or any topic related to configuring, packaging, deploying, or troubleshooting NixOS and the Nix ecosystem.
version: 0.1.0
---

# NixOS Documentation

Complete reference for NixOS and the Nix ecosystem, auto-generated from official repositories:

- [nix.dev](https://nix.dev/) — tutorials, guides, best practices
- [NixOS Manual](https://nixos.org/manual/nixos/stable/) — from `NixOS/nixpkgs`
- [Nix Pills](https://nixos.org/guides/nix-pills/) — progressive learning series
- [Release Wiki](https://nixos.github.io/release-wiki/) — NixOS release process

The `references/` directory contains full, unmodified documentation from those sources, updated daily.

## Directives

- Base all answers on the official NixOS documentation in the reference files below.
- Use correct Nix language syntax (attribute sets, let-in, with, inherit, etc.).
- Distinguish between **NixOS module options** (`services.nginx.enable = true;`) and **Nix language expressions** (`pkgs.mkDerivation { ... }`).
- Show configuration examples using current NixOS syntax (`configuration.nix` or flake-based configs).
- When flakes are relevant, show both the classic (channels) and flakes approach if applicable.
- For packaging, prefer the `callPackage` pattern over raw `import`.

## Reference Files

Identify the topic from the user's question, then read the matching reference file:

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

## Strategy

1. Identify the topic from the user's question.
2. Read the matching reference file from the tables above.
3. Answer with correct Nix syntax and `configuration.nix` / `flake.nix` examples.
4. If more detail is needed, fetch from the corresponding raw GitHub URL.
5. For beginners, recommend starting with `references/first-steps.md` or `references/nix-pills.md`.
6. For troubleshooting, check `references/troubleshooting.md` and `references/faq.md` first.
7. For NixOS system issues, check `references/nixos-administration.md`.

## Quick Reference

### Config file location
`/etc/nixos/configuration.nix` (classic) or `flake.nix` (flakes)

### Rebuild system
```bash
sudo nixos-rebuild switch          # apply config
sudo nixos-rebuild test            # apply without adding to bootloader
sudo nixos-rebuild build           # build only
sudo nixos-rebuild boot            # apply on next boot
```

### Nix shell (ad-hoc packages)
```bash
nix-shell -p python3 git vim       # classic
nix shell nixpkgs#python3 nixpkgs#git  # flakes
```

### Nix develop (dev environment)
```bash
nix develop                        # from flake.nix devShell
nix-shell                          # from shell.nix
```

### Search packages
```bash
nix search nixpkgs firefox
# or https://search.nixos.org/packages
```

### Garbage collection
```bash
nix-collect-garbage -d             # delete all old generations
nix store gc                       # flakes equivalent
sudo nix-collect-garbage -d        # also clean system profiles
```

### Flake basic structure
```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }: {
    nixosConfigurations.hostname = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
    };
  };
}
```

### NixOS module syntax
```nix
{ config, pkgs, ... }:
{
  services.nginx.enable = true;
  environment.systemPackages = with pkgs; [ vim git firefox ];
  networking.firewall.allowedTCPPorts = [ 80 443 ];
  users.users.myuser = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
```
