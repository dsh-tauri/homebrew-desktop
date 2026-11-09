cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.2"
  sha256 arm:   "774af2dfcef739bf8148813e18bf5e364abb9e114dc055af7526931027addfc1",
         intel: "3cba153ae9eb010eae1a03bd70ffcf7a6356d990c0bde5bbbdce28e2f2eca72e"

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
