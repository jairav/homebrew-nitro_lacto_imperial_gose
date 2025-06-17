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

## Quick Start

1. **Clone this repository:**
   ```sh
   git clone https://github.com/your-org/nitro_lacto_imperial_gose.git
   cd nitro_lacto_imperial_gose
   ```

2. **Tap this repo as a Homebrew tap:**
   ```sh
   brew tap your-org/nitro_lacto_imperial_gose
   ```

3. **Install all CLI and GUI dependencies:**
   ```sh
   brew bundle install
   ```

4. **Install dotfiles and configs:**
   ```sh
   brew install --cask dotfiles
   ```

---

- All dependencies and configs are contained in this repository.
- Update the Brewfile and config/ directory as your team’s needs grow.
- No meta-formula is needed; everything is managed by Brewfile and the dotfiles cask.

## Managed Applications

- Warp
  - Settings
  - Fonts
  - ZSH other links
- ZSH
  - .zshrc
  - [lsd](https://github.com/lsd-rs/lsd) + config file
  - [bat](https://github.com/sharkdp/bat)
  - zsh package management (none as yet)
- R + Packages
- Python + Packages
- Quarto + Extensions
- VS Code settings.json

### Eventually
- RStudio
- VS Code
- Positron
