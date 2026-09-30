cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "8a5e24a9d624d76a08149ea0896616426bee8ac0e575438afafea71010be10f4",
         intel: "029ad61480902edd136796dc3dcd8ae514827af5e18cc9c017ee3e8182901820"

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
