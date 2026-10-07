cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.22.3"
  sha256 arm:   "6bef82ea780fcf6c1cd72d07f67d1abd7f1e8431825ede7b2d9e4d8c40d47fe1",
         intel: "2ab96ca525d69ea517540cb1bbc1d44303727168e26f012d00f30ca3a33090c5"

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
