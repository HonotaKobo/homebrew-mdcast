cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.20"
  sha256 arm: "3ca0b716887718aa87731a83e9867998a095e1a347166d0c2ee8a0d41f9f9a5d",
         intel: "6050a60e12cde6fb2e8ca49d6285294ed15a0dca3155f615e000f4770258686e"

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
