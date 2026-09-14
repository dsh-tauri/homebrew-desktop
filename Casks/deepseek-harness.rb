cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.1"
  sha256 arm:   "603f986e30a5be02eb6fd03d96ab50c8c34a6742d80863c45b945569f99282ff",
         intel: "4f878b8bd0aaf0cd21c31c31f78b0d7b7e9dfabff33fa7f0f405bb0e2ac02674"

  url "https://github.com/dsh-tauri-desk/deepseek-harness-desktop/releases/download/v#{version}/Deepseek.Harness.Desktop_#{version}_#{arch}.dmg"
  name "Deepseek Harness Desktop"
  desc "Desktop application for DeepSeek Harness"
  homepage "https://github.com/dsh-tauri-desk/deepseek-harness-desktop"

  app "Deepseek Harness Desktop.app"

  zap trash: [
    "~/Library/Application Support/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Caches/io.github.hairyf.deepseek-harness-desktop",
    "~/Library/Preferences/io.github.hairyf.deepseek-harness-desktop.plist",
    "~/.dsh",
  ]
end
