cask "deepseek-harness" do
  arch arm: "aarch64", intel: "x64"

  version "0.23.1"
  sha256 arm:   "36249d754d03605a819641a755f491d6d9e69d30dee35c95ce0fffcd33d406a5",
         intel: "4f85b50cf5dda69fdce04c514398822a928242563e1ab852d803700a945be852"

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
