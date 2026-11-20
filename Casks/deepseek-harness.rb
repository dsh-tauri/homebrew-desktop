cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "c3cf40da6e60153d6f60baf891677473753093283dd688fd96649fe7af8d1356",
         intel: "47ce470081673c907176976f00ec876e929b491fc4e26e3fb789708072a900ef"

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
