# Nexar Homebrew Tap

Official Homebrew tap for Nexar tools and utilities.

## Installation

```bash
brew tap getnexar/tap
```

## Available Formulae

| Formula | Description | Install |
|---------|-------------|---------|
| `nap` | CLI for deploying apps to Nexar AI Platform | `brew install getnexar/tap/nap` |

## Quick Install

Install any formula directly (automatically taps if needed):

```bash
brew install getnexar/tap/nap
```

> ⚠️ **Important**: Homebrew-core has a different `nap` package (a code snippets tool). Always use the full path `getnexar/tap/nap` to install Nexar's CLI.

## Migrating from `nexar` to `nap`

As of v3.0.0, the CLI was renamed from `nexar` to `nap`:

```bash
# Uninstall old CLI
brew uninstall nexar

# Install new CLI
brew install getnexar/tap/nap

# Verify
nap version
```

Your existing `nexar.yaml` config files and `NEXAR_ENV` environment variable still work!

## Updating

```bash
brew update
brew upgrade getnexar/tap/nap
```

## Uninstalling

```bash
brew uninstall nap
brew untap getnexar/tap  # Remove the tap entirely
```

## Issues

Report issues at [github.com/getnexar/homebrew-tap/issues](https://github.com/getnexar/homebrew-tap/issues)
