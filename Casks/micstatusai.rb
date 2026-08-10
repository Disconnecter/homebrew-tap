cask "micstatusai" do
  version "0.0.7"
  sha256 "2c4479c397f9d31ca77dbbe9b1be5ce73e8d90bef43d397f252ab0992d58e39e"

  url "https://github.com/Disconnecter/MicStatusAI/releases/download/v#{version}/MicStatusAI-#{version}.zip"
  name "MicStatusAI"
  desc "Menu bar microphone input volume monitor and control"
  homepage "https://github.com/Disconnecter/MicStatusAI"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "MicStatusAI.app"

  zap trash: "\176/Library/Preferences/com.disconnecter.MicStatusAI.plist"

  caveats <<~EOS
    This release is unsigned. macOS Gatekeeper may block it.
    If you trust this repository, remove quarantine with:
      xattr -dr com.apple.quarantine "/Applications/MicStatusAI.app"
  EOS
end
