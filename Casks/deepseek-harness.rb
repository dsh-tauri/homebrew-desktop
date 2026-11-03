cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.30.2"
  sha256 arm:   "51017ac4fb169ad131c49ca02ae746bc5fc8d525a7f267de6482f9ed9786b7fb",
         intel: "e39067fae38d6086f7d0b8a79c2114c463e259574ff43807ca1077b3e0375f15"

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
