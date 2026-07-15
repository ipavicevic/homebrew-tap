cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "a9d0475fad7c455789ea04a7659644d08b9a2ffa3f3ceea0dd52c1a5519148b0",
         intel: "59fade4acd762b91a8edb0ef4d33a5516d82712485e85264bf5e4715ea1c79c9"

  url "https://github.com/ipavicevic/Accentra/releases/download/mac-v#{version}/Accentra-#{version}-#{arch}.zip"
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
