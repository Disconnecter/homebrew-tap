cask "micstatusai" do
  version "0.0.10"
  sha256 "b49d00b14b892ff3d7b7863ff100e55ebc2ec9fd3aa2bd0c84fdc3ffeac45c56"

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
