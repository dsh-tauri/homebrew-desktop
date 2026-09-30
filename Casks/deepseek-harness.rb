cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.15.7"
  sha256 arm:   "9ad0c787baba026daf5bd7933269507ceb21584891b959ea0c7f38665048d966",
         intel: "5499d9d626757545b4e75c7715c8259303b547e1a2129a32660a4c9371fe4b61"

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
