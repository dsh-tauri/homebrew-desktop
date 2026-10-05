cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.22.1"
  sha256 arm:   "51982845f2c61afaa01d0d06e762b84bce67f0eb8a02817da8ac1481bd545ba0",
         intel: "bd2dfea027815f2d7fb6b278631908c09b545b582653fc141acfd225fe496a0d"

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
