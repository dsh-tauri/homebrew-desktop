cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.14.2"
  sha256 arm:   "c668621c90caadb58e74802c1da89d9a25c5f0503f1a95211d2857ada4b2581f",
         intel: "e077117e5a33d3fec48335080040f72543af8f2f0aaa06b258e475909685d002"

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
