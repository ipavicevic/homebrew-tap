cask "accentra" do
  arch arm: "arm64", intel: "x64"

  version "1.0.7"
  sha256 arm:   "6af61cfd07b87c4c4347adb45b937ff4a35649fd8cbf39bf7760500b5ca253bb",
         intel: "b2f85be1ffdc5da7aa21b6d011d45161fb17c8ab7227a8fe0e4b40b8f553983a"

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
