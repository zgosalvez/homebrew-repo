cask "zgosalvez-silicon" do
  version "1.0.2"
  sha256 "4d710aa7b35a8da9bcc71434d53d5931ce5da523bd9e78e54579a1c4c45736a6"

  url "https://github.com/DigiDNA/Silicon/releases/download/#{version}/Silicon.app.zip"
  appcast "https://github.com/DigiDNA/Silicon/releases.atom"
  name "Silicon"
  desc "Identify Intel-only apps"
  homepage "https://github.com/DigiDNA/Silicon"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Silicon.app"

  zap trash: "~/Library/Caches/com.DigiDNA.Silicon"
end
