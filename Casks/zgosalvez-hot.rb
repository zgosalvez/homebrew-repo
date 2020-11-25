cask "zgosalvez-hot" do
  version "1.2.2"
  sha256 "aad042633a54b3f8c10d44b67db71d5674316ac12c530e2031e67d4779500502"

  url "https://github.com/macmade/Hot/releases/download/#{version}/Hot.app.zip"
  appcast "https://github.com/macmade/Hot/releases.atom"
  name "Hot"
  desc "A menu bar application that displays the CPU speed limit due to thermal issues"
  homepage "https://github.com/macmade/Hot"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Hot.app"

  zap trash: [
    "~/Library/Caches/com.xs-labs.Hot",
    "~/Library/Preferences/com.xs-labs.Hot.plist",
  ]
end
