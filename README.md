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
