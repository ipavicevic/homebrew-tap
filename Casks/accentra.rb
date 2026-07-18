cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "4670f0d06580cefe819f0ee320636df2b7796674275ea02610c42aa9f5d75632",
         intel: "7bcbcc6d9cf3b988d00bfa10487f4661e1520a9c1fc6fa8d82f2488d230d7238"

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
