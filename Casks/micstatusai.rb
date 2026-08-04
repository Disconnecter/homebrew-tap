cask "micstatusai" do
  version "0.0.5"
  sha256 "23d948236905461698eafd1ae42e54736a545883a10f91e15986ad7e02ac7d18"

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
