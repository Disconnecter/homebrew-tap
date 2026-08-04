cask "micstatusai" do
  version "0.0.4"
  sha256 "1b6853c9d41c84b180cb79ced75f7f2f5e7b4737093ec43c74e4bda567f0c1f1"

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
