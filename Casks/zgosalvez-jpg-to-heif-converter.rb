cask "zgosalvez-jpg-to-heif-converter" do
  version "1.07"
  sha256 "0f4f0f5effefe33ab7553a3f18c86b38ada7cb475d5bbce269801dd5465ec878"

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
