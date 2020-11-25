cask "zgosalvez-jpg-to-heif-converter" do
  version "1.05"
  sha256 "b4881177735ce95fd9e20667888916acc98a8fca4dbfbbbb9e959264c5f45619"

  url "https://github.com/makoni/jpg-to-heif-converter/releases/download/#{version}/JPG.to.HEIF.Converter.#{version}.dmg"
  appcast "https://github.com/makoni/jpg-to-heif-converter/releases.atom"
  name "JPG to HEIF Converter"
  desc "Convert from JPG, JPEG and PNG to HEIF (HEIC)"
  homepage "https://github.com/makoni/jpg-to-heif-converter"

  depends_on macos: ">= :high_sierra"

  app "JPG to HEIF Converter.app"

  zap trash: [
    "~/Library/Preferences/me.spaceinbox.JPG-to-HEIF-Converter.plist",
  ]
end
