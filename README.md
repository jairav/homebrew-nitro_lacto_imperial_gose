# One Beer to Rule Them All

This repository is a custom Homebrew tap that installs applications and their
configuration. The goal is to keep all workstation setup in a single tap. At
the moment only Warp is supported.

## Usage

```bash
brew tap username/nitro_lacto_imperial_gose https://github.com/username/nitro_lacto_imperial_gose
brew install --cask warp
```

Installing the cask will copy the configuration files from `config/warp` into
`~/Library/Application Support/Warp` after Warp is installed.

# Nitro Lacto Imperial Gose: Team Development Environment

## Purpose
This repository provides a fully self-contained, one-command setup for your team's macOS development environment. It installs CLI tools, GUI apps, and configures dotfiles automatically using Homebrew's Brewfile and a custom cask.

## What This Repo Does
- Installs all required CLI tools and GUI applications via Homebrew using a Brewfile.
- Installs and symlinks team-standard dotfiles and configuration files (like `.zshrc` and `lsd` config) to the user's home directory using a custom cask.
- Enables new team members to get a consistent, ready-to-use environment with a single command.

## How to Use
1. **Clone this repository:**
   ```sh
   git clone https://github.com/your-org/nitro_lacto_imperial_gose.git
   cd nitro_lacto_imperial_gose
   ```
2. **Tap this repo as a Homebrew tap:**
   ```sh
   brew tap your-org/nitro_lacto_imperial_gose
   ```
3. **Install all dependencies and configs:**
   ```sh
   brew bundle install
   ```
   This will install all CLI tools, GUI apps, and symlink dotfiles/configs in one go.

## ⚠️ Note on Homebrew Best Practices
This repository intentionally goes outside of recommended Homebrew cask/tap rules:
- The custom cask (`nitro-lacto-imperial-gose`) is used to symlink dotfiles and configs directly into the user's home directory, which is not standard or recommended for public Homebrew taps.
- The cask fetches the latest state of the `main` branch, not a tagged release, so users always get the most recent version.
- This approach is designed for internal/team use only, not for public Homebrew distribution.

## Why This Approach?
- **One-command setup:** New team members can get a fully configured environment with a single command.
- **Consistency:** Ensures everyone uses the same tools, apps, and configs.
- **Simplicity:** No manual copying or running of setup scripts required.

## Contributing
- Update the Brewfile, dotfiles, or configs as needed.
- Document any changes in this README.

---
This repository is for internal use. For public Homebrew taps, follow the official Homebrew guidelines.
