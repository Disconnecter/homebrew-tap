cask "micstatusai" do
  version "0.0.1"
  sha256 "854a0f3ab3006536306d90409accb859a28c81f6f7439427814bab5a3a819262"

  url "https://github.com/Disconnecter/MicStatusAI/releases/"       "download/v#{version}/MicStatusAI-#{version}.zip"
  name "MicStatusAI"
  desc "Menu bar microphone input volume monitor and control"
  homepage "https://github.com/Disconnecter/MicStatusAI"

  depends_on macos: :sequoia

  app "MicStatusAI.app"

  caveats <<~EOS
    This release is unsigned. macOS Gatekeeper may block it.
    If you trust this repository, remove quarantine with:
      xattr -dr com.apple.quarantine "/Applications/MicStatusAI.app"
  EOS

  zap trash: [
    "~/Library/Preferences/com.disconnecter.MicStatusAI.plist",
  ]
end
