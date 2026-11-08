cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.1"
  sha256 arm:   "b96ca6117a54ed4fcf3affc8be30afd75542e3007c7f00c6854753ce57fc13d1",
         intel: "85725aca9cb9da73af0f8722a89c22d170534bfcf22ac6a1bab0ad3585cbb54d"

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
