cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.4"
  sha256 arm:   "70b18c9c8da3520e1d8d70f69d736941bb323fc77afad9c686ea28b6d8e14256",
         intel: "77394c64bec4c3151c6b5269e2bfca23eeb449f7a8ffbe6f5f06b73e689b6916"

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
