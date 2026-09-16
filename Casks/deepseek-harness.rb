cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.3"
  sha256 arm:   "d62e0375fdab5d3c0fff66d97fd61aa4337756d24dfb210bbb7a978159054fae",
         intel: "49a9f8a10ff6e06a2020979e007c8e29fe8966d2ec567c66ad5d4e9e700acd0b"

  url "https://github.com/dsh-tauri-desk/deepseek-harness-desktop/releases/download/v#{version}/Deepseek.Harness.Desktop_#{version}_#{arch}.dmg"
  name "Deepseek Harness Desktop"
  desc "Desktop application for DeepSeek Harness"
  homepage "https://github.com/dsh-tauri-desk/deepseek-harness-desktop"

  app "Deepseek Harness Desktop.app"

  zap trash: [
    "~/Library/Application Support/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Caches/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Preferences/io.github.hairyf.deepseek-harness-desktop.plist",
    "~/.dsh",
  ]
end
