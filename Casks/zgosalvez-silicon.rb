cask "zgosalvez-silicon" do
  version "1.0.1"
  sha256 "44a2489e3e3b0c11470f1bb83c6bb53676040326f5f688aa9cb27161c9869055"

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
