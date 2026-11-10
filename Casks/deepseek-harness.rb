cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.3"
  sha256 arm:   "f40e6c791d2e03d26d1c69832f314b080c6fb1a70ca4edce49b4bd9a5319b179",
         intel: "f69f603a0df177a5af563c668cca844f9a26c79232e833fde28aa16cb5e22972"

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
