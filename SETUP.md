# Homebrew Tap Setup Instructions

## Overview

For `brew install getnexar/tap/nexar` to work, we need:

1. A GitHub repository named `getnexar/homebrew-tap`
2. CLI binaries hosted somewhere (GitHub releases)
3. A Formula file in the tap repo

## Setup Steps

### Option A: Separate Tap Repository (Recommended)

1. Create a new repo at `https://github.com/getnexar/homebrew-tap`

2. Copy the contents of this `homebrew-tap/` directory to that repo:
   ```bash
   cd /path/to/homebrew-tap
   git init
   git add .
   git commit -m "Initial formula for nexar CLI"
   git remote add origin https://github.com/getnexar/homebrew-tap.git
   git push -u origin main
   ```

3. Create a GitHub release in `corp-load-balancer` repo:
   ```bash
   # Run the release script
   ./scripts/release-cli.sh 1.0.0

   # Create release on GitHub
   gh release create v1.0.0 \
     cli/dist/nexar-darwin-amd64 \
     cli/dist/nexar-darwin-arm64 \
     cli/dist/nexar-linux-amd64 \
     cli/dist/nexar-linux-arm64 \
     --title "Nexar CLI v1.0.0" \
     --notes "Initial release of Nexar CLI"
   ```

4. Update the tap formula with correct download URLs and SHA256 hashes

### Option B: Use GitHub Releases from This Repo

The formula is already configured to download from:
`https://github.com/getnexar/corp-load-balancer/releases/download/v{VERSION}/nexar-{platform}`

Just create releases here and maintain the tap repo separately.

## Testing

Once set up, test with:
```bash
brew tap getnexar/tap
brew install nexar
```

Or in one command:
```bash
brew install getnexar/tap/nexar
```

## Updating the Formula

When releasing a new version:

1. Build new binaries:
   ```bash
   ./scripts/release-cli.sh 1.0.1
   ```

2. Create GitHub release with binaries

3. Commit and push the updated formula in homebrew-tap repo

## CI/CD Automation (Future)

Consider using GitHub Actions to automate:
- Building binaries on tag push
- Creating GitHub releases
- Updating the formula automatically

See `.github/workflows/release.yml` for an example workflow.
