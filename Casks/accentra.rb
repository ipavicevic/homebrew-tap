cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "0b2a98aee5e5e19e9b528eacb95faeeaf3d4fc52c7c8cd1d59877cffcaea4807",
         intel: "207f48e1d18bc7b15662375f1ee838177cef2a38ee30293ff33ff22b752a8a94"

  url "https://github.com/ipavicevic/Accentra/releases/download/mac-v#{version}/Accentra-#{version}-#{arch}.dmg"
  name "Accentra"
  desc "Type accented characters by holding a key and cycling through variants"
  homepage "https://ipavicevic.github.io/Accentra/mac.html"

  depends_on macos: :ventura

  app "Accentra.app"

  caveats <<~CAVEATS
    Accentra needs Accessibility permission to intercept keystrokes.
    On first launch, enable Accentra in:
      System Settings → Privacy & Security → Accessibility
    Accentra activates itself the moment you flip the switch — no relaunch needed.
  CAVEATS

  zap trash: [
    "~/Library/Application Support/Accentra",
    "~/Library/LaunchAgents/com.accentra.Accentra.plist",
  ]
end
