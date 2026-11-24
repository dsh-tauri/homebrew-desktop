cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.34.0"
  sha256 arm:   "f663d2de84d21b2ead8cca52ee0873d5314139028c6b2dce40fe2168ec54e166",
         intel: "a385885fd0bcf4b3116ad366b1f937d19ebbafdbcab1fd16abb153cdce6690d4"

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
