# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Personal Homebrew tap (`marmos91/homebrew-tap`) for distributing custom formulae and casks via `brew tap marmos91/tap`.

## Structure

- `Formula/` — Ruby formula files (`.rb`) for building from source
- `Casks/` — Ruby cask files (`.rb`) for installing macOS `.app`/`.dmg`/`.pkg`

Homebrew auto-discovers formulae and casks from these directories by convention.

## Commands

```bash
# Add this tap
brew tap marmos91/tap

# Install a formula
brew install marmos91/tap/<formula>

# Audit a formula for issues
brew audit --new-formula Formula/<name>.rb

# Test a formula installs correctly
brew install --build-from-source Formula/<name>.rb
brew test Formula/<name>.rb

# Lint Ruby style
brew style Formula/<name>.rb

# Audit a cask
brew audit --new-cask Casks/<name>.rb

# Create a new formula from a URL
brew create <source-tarball-url> --tap marmos91/tap
```

## Writing Formulae

- Formulae are Ruby classes inheriting from `Formula`
- Use `sha256` checksums for all downloads (generate with `shasum -a 256 <file>`)
- Include a `test` block that verifies the installed binary works
- Use Homebrew DSL (`bin.install`, `lib.install`, etc.) rather than raw shell commands in `install`

## Commit Guidelines

- Don't mention Claude Code in commits or PRs
- Keep commit messages concise
