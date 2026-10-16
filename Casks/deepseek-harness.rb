cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.24.1"
  sha256 arm:   "498a9688940e152cd3f4d3991c082677337bbb44fb1d77b15179783021dddd3c",
         intel: "fecb4dbf473b29e25500414fa088171892751c6179af65b4c4a3de27981718dd"

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
