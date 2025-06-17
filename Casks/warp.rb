cask "warp" do
  version :latest
  sha256 :no_check

  url "https://releases.warp.dev/stable/Warp.dmg"
  name "Warp"
  desc "Rust-based terminal with modern features"
  homepage "https://www.warp.dev/"

  auto_updates true

  app "Warp.app"

  postflight do
    require "fileutils"
    config_source = File.expand_path("../config/warp", __dir__)
    config_target = File.expand_path(File.join(Dir.home, "Library", "Application Support", "Warp"))
    FileUtils.mkdir_p(config_target)
    FileUtils.cp_r Dir[File.join(config_source, "*")], config_target, verbose: true
  end

  zap trash: [
    "~/Library/Application Support/Warp",
    "~/Library/Preferences/dev.warp.Warp.plist",
    "~/Library/Saved Application State/dev.warp.Warp.savedState"
  ]
end
