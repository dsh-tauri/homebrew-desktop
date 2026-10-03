cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "cdfa831043b9bd0f3596cfdb8fbd05c8041d7fbbf3695c569a140d80efaafc7a",
         intel: "14e7b499cae36b49e976f8dff1679ab349ada512b720e7f10b1347c0770ef2f3"

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
