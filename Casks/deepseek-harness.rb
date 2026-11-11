cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.4"
  sha256 arm:   "45a3a00cd47a0ccff4e6110d2b5ff8d5ad378568d3f185cbc5053e3ff75435dc",
         intel: "f83c69f9af8affc75285eaa9724739053d61d0d25fb89a200ecf2b1cfc417465"

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
