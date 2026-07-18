cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "74edaa97e924d488a9bec62e02e1b964efe59813e60d9c0b552ea36e04e87401",
         intel: "1629f25d5a559a35f689c734aeaceddbfdfc6998af38e0736c3ec8e022acc422"

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
