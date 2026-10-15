cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "499418c999b89aa4b98c55488d43b386bfe619ef7e80cf27e74ba1c990a64be7",
         intel: "eb2784315cd77b32ffc8965435a37e9df8b7fcd8cf4d6d96663591612507c6c0"

  url "https://github.com/dsh-tauri/deepseek-harness-desktop/releases/download/v#{version}/Deepseek.Harness.Desktop_#{version}_#{arch}.dmg"
  name "Deepseek Harness Desktop"
  desc "Desktop application for DeepSeek Harness"
  homepage "https://github.com/dsh-tauri/deepseek-harness-desktop"

  depends_on :macos

  app "Deepseek Harness Desktop.app"

  zap trash: [
    "~/Library/Application Support/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Caches/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Preferences/io.github.hairyf.deepseek-harness-desktop.plist",
    "~/.dsh",
  ]
end
