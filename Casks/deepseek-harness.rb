cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.21.2"
  sha256 arm:   "9a16879d9a4e66197f81580892ebd20e352b26011332773f134d75aa0f743524",
         intel: "41feff3c3062f2fce689c6ca17be82113705505173acebc6a1daa780f6bee761"

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
