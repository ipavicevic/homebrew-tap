cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "f81fff7081377be819c7b6e29e07a5e8e2155bc077988efdb5297905e714755d",
         intel: "34d11127aca853764ab84c59dc46a1db6e10cde5c097e6bd6ee86e14ed25b3d9"

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
