cask "micstatusai" do
  version "0.0.3"
  sha256 "e8143a002ab1aeef84dba1b8473364452b37f2e708446fdcdb24fa8690726086"

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
