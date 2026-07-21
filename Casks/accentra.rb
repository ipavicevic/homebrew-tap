cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "b5df46b5d58141c364abc2aa8a36fd32891da2f27972e2f4e04b255200f8f872",
         intel: "4b370ed32337e5e1163d30f41be4221dda95ec5ab212f2e4a96fe2280c516950"

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
