cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.18"
  sha256 arm: "7f9f8380049f0770f0ad74cbea9d6679d46865d9c64b619d95673e45bc1088d0",
         intel: "818b1b637471ebf0a62d27125c6711cda0ad0991984902fc579f83f0094b3c18"

  url "https://github.com/HonotaKobo/mdcast/releases/download/v#{version}/mdcast_#{version}_#{arch}.dmg"
  name "mdcast"
  desc "Markdown viewer for the AI age"
  homepage "https://github.com/HonotaKobo/mdcast"

  app "mdcast.app"
  binary "#{appdir}/mdcast.app/Contents/MacOS/mdcast"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/mdcast.app"]
  end
end
