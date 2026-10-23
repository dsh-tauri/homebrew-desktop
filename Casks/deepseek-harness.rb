cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "468794c41ea10703a66b7194aa6064b78fe4f9d709af07a0acc6e2b0b292cd6e",
         intel: "f4de8d12887b92b2e1ea2e93765826f813dfab7b55f7d6c4a0da025f00726e2c"

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
