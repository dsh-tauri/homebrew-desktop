cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.2"
  sha256 arm:   "9b2ede2538fb99401cc96dbef53ff229d8b17c68edd8f3395fdbeb0dacee4af5",
         intel: "349d89c7c32fa4649cd8382f6a4cd48d7ee35e76a1928f5272948267b4c5096f"

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
