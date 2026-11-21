cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "5b64362f95eb5919779b98896d098e6000a86b9f3f45654489aee385dd8da538",
         intel: "f7980efdf390e5f8df918646ee2f19492c1f6706d3f1bd280585298c6bbd05b7"

  url "https://github.com/dsh-tauri/deepseek-harness-desktop/releases/download/v#{version}/Deepseek.Harness.Desktop_#{version}_#{arch}.dmg"
  name "Deepseek Harness Desktop"
  desc "Desktop application for DeepSeek Harness"
  homepage "https://github.com/dsh-tauri/deepseek-harness-desktop"

  depends_on :macos

  app "DSH Tauri.app"

  zap trash: [
    "~/Library/Application Support/dsh-tauri",
    "~/Library/Caches/dsh-tauri",
    "~/Library/Preferences/dsh-tauri.plist",
    "~/.dsh",
  ]
end
