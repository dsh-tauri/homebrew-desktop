cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.31.6"
  sha256 arm:   "03c2d1f4053fdea3762650923d6ae6eea7386cfb72caccd58639b9b95513838e",
         intel: "59093dca003f254b13596294de8041b9a622fbadf1b554840470e058fdef55d3"

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
