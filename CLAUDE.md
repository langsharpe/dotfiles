# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository that manages shell configuration, Git settings, and development tool configurations through symlinked files. The repository uses a modular shell configuration approach where `.zshrc` sources individual configuration files from `.zshrc_d/`.

## Key Architecture

- **Installation System**: `install.sh` runs `bin/install-config`, which symlinks all files from `config/` to the user's home directory
- **Modular Shell Config**: `.zshrc` sources individual `.zsh` files from `.zshrc_d/` for different tools
- **Git Configuration**: Comprehensive `.gitconfig` with diff-so-fancy pager, SSH signing via 1Password, and useful aliases
- **Development Tools**: Configurations for WezTerm terminal, Vim, Starship prompt, and various development tools

## Common Commands

## Important Files to Understand

- `config/.zshrc`: Main shell configuration that sources modular configs
- `config/.zshrc_d/`: Directory containing tool-specific shell configurations
- `config/.gitconfig`: Git configuration with signing, aliases, and diff-so-fancy
- `bin/install-config`: Core installation script that creates symlinks

## Development Notes

- All configuration files in `config/` are intended to be symlinked to home directory
- Shell configuration is modular - add new tool configs as `.zsh` files in `.zshrc_d/`
- The installation script will not overwrite existing files (only creates symlinks if destination doesn't exist)
