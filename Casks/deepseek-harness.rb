cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.3"
  sha256 arm:   "69f8a5ece43ab5ec3f0f12020c33838c51ad1f12427c167319ca5a46b4fc10d5",
         intel: "e2dbe58328a3bf3fd5629e3bc564e840e9be505c26d940627b26d233a8097dec"

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
