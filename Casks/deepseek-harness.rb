cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.22.2"
  sha256 arm:   "d9b613d209fef1a2170d1f0bd70dc84d113a0256ec53f3bf6debe93667b7a74d",
         intel: "d0a6ecab73acaf5b90c168a217e859dc7a507416b84c853afe34dcf381439d6d"

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
