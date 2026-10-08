cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.22.4"
  sha256 arm:   "d367586376fc3a52a52f84c16f432de15bc6128d66ff7943311451ad41e3c8ac",
         intel: "7ec02c2ace7fa127986a23090ed5e09d513dbe1cd8dc71519eb1d44a9c765e0c"

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
