# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Emacs configuration (dotfiles) repository. The main entry point is `ravioli.el`, which is symlinked from `~/.emacs`.

## Installation

Symlink the main config file:
```
.emacs -> Projects/emacs-dotfiles/ravioli.el
```

## Architecture

**Entry Point:** `ravioli.el` - Loads all configuration modules in order:
1. `defaults.el` - Core settings (backup, encoding, indentation, macOS key mappings)
2. `keybindings.el` - Global key bindings
3. `visuals.el` - UI settings (line numbers, themes, whitespace display, window sizing)
4. `custom.el` - Custom utility functions (rename/delete file, open commits)
5. `auto-mode-list.el` - File extension to major mode associations
6. `packages.el` - Package management via use-package (MELPA/GNU ELPA)
7. `tsx-setup.el` - TypeScript/TSX development setup (tide, flycheck, company, prettier)

**Alternative Entry Point:** `lite.el` - Minimal configuration with just defaults and basic visuals

**External Packages:**
- `copilot.el` and `copilot-balancer.el` - GitHub Copilot integration (vendored from copilot-emacs/copilot.el)
- `casey.el` - Casey Muratori's C++ development configuration (reference/unused)
- `ravioli-theme.el` - Custom theme file

## Key Configuration Details

- Uses `use-package` for package management
- Configured for macOS: Command key is Meta, Option is passthrough
- 2-space indentation for JS/TS/CSS/web modes
- NVM integration for Node.js path resolution (tsx-setup.el:95-110)
- Catppuccin theme (can switch to night-owl)
- Global whitespace mode with visible newlines and tabs
- IDO mode for file/buffer completion

## NVM and Node.js Integration

The config integrates with NVM to use the correct Node.js version for tools like tide, copilot, and magit git hooks.

**How it works (tsx-setup.el:95-110):**
- `get-current-nvm-node-path` and `get-current-nvm-bin-path` detect the current NVM version at Emacs startup
- The NVM bin path is **prepended** to `PATH` so it takes priority over system Node installations

**Important:** The NVM path must be prepended (not appended) to `PATH`. If `/usr/local/bin/node` exists with a different Node version, appending would cause magit/git hooks to use the wrong version, breaking pre-commit hooks that enforce specific Node versions.

## Important Key Bindings

- `M-t` - find-file-in-project
- `C-x g` - magit-status
- `M-S-f` - rgrep
- `M-S-d` - deadgrep
- `C-S-c` - comment/uncomment region
- `Shift+arrows` - window navigation
- `C-M-RET` - copilot-accept-completion
- `C-c r` - rename current file
- `C-c k` - delete current file
