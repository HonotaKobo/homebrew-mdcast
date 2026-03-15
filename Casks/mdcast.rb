cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.8"
  sha256 arm: "ce7237c3dfaae1861207b7b1cc4a239c4392077f5f2137f45a1d334fb2b39ef9",
         intel: "ebd589e89eaac159fd2ea6a9033d0b34e1419f5852807ccbc4bc77cc92c7d48e"

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
