cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "71ae8d11757cde1f908a63220546425c41871917fa7c8fb76ff3b61a93ed486e",
         intel: "40db7aa04534e6fd7a90f6273343ec3240cd590196876a409a25022851a78d70"

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
