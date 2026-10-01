cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "ab4dec65537961cfcfc2eb596f160341fdc85e0f54e3698e64ad2d7985fb73ed",
         intel: "4b3ffc1bd386885569d6f46f1ca5f9c316f7bb9e38636c6618cb915f9dab80e4"

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
