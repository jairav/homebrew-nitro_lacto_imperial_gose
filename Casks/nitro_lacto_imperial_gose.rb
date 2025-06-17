cask "nitro_lacto_imperial_gose" do
  version :latest
  sha256 :no_check

  url "https://github.com/your-org/nitro_lacto_imperial_gose/archive/refs/heads/main.zip"
  name "Team Dotfiles and Configs"
  desc "Symlinks .zshrc and lsd config to the user's home directory"
  homepage "https://github.com/your-org/nitro_lacto_imperial_gose"

  artifact "nitro_lacto_imperial_gose-main/zsh/zshrc", target: File.expand_path("~/.zshrc")
  artifact "nitro_lacto_imperial_gose-main/config/lsd/config.yaml", target: File.expand_path("~/.config/lsd/config.yaml")
end
