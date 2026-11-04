cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.3"
  sha256 arm:   "6d38e1c79f763f9b5c46cfa7b943e913e2ccd81ce4de1eb267e85d2bfd30cb72",
         intel: "4bdbe6be9527a4873c7fb25e4ef8fe1bc5ee70d5c663ac939b3e20c468589015"

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
