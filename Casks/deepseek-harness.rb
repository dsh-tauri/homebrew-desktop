cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.7"
  sha256 arm:   "5c87e5e5d27e4a833f779e92e7fa5fa570734f19371e476691471001028baff3",
         intel: "869d0febaaf9962e34d66a134baff490946e71d2884589c19f2d9e9f1ed99b8d"

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
