cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "d957a9afa5548057f55c7b066f806c6948a4812af5cb7bb702c370dbad63acac",
         intel: "d8d8d856f4aa9331bb6e6a29e9c01bb64ddb1c0925de91e1a72235aa1ad0fdd6"

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
