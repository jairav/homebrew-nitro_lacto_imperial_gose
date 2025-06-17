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
    begin
      FileUtils.copy_entry(config_source, config_target, preserve: true, remove_destination: false)
    rescue => e
      onoe "Error copying configuration files from #{config_source} to #{config_target}: #{e.message}"
      raise
    end
  end

  zap trash: [
    "~/Library/Application Support/Warp",
    "~/Library/Preferences/dev.warp.Warp.plist",
    "~/Library/Saved Application State/dev.warp.Warp.savedState"
  ]
end
