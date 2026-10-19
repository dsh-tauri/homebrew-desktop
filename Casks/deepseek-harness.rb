cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.5"
  sha256 arm:   "c9926e0bcfa01535b5c83fb9f31ca2ec6ce8244bf94cdfb308841674f1e79195",
         intel: "5de2aa6eab3ce36fa39250f2271e2d54039a6b5ec989592358d25089617ae261"

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
