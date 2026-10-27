cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.1"
  sha256 arm:   "b653601df3d16c680ebf0c898cfc07e5a0b6dcf60525335f2ce399a9032a88ed",
         intel: "27b617b2b52067777398bf0b5817ab62a3dd90f0d305bd5f10f351a0ca4c505b"

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
