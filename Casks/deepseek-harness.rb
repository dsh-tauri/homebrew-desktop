cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.5"
  sha256 arm:   "0925cc73e85ba2a6fe1ee8bda4ebb6557cbd4c1ddfb95841fdf1b4d5a42a85f1",
         intel: "7d6d97912cece5e13fc3bbbb017254d790bb39fe379e05c41861edeaf935e76c"

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
