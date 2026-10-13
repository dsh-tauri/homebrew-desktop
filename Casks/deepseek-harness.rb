cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.2"
  sha256 arm:   "1ed86ee7165658eede1af44fff84cf782c6f41a9634cc218b0527f9c6f200c28",
         intel: "8e6db801a5de0907a94faabf482a5883758079f1cb965b960a134100bbd80ecb"

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
