cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.2"
  sha256 arm:   "b7e189a29c2c8f979bc61f004937b3eebbb3af947861be5ea236f1e06a0b73c8",
         intel: "ae056a6811d0491ded7a748f2f1e9936e8ffd14225848eb37b2070bdf925b601"

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
