cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.9"
  sha256 arm: "b3006d43c5e68473e23506254b3f0690ff44cc59dd9b9d98c78fcec67869b5a5",
         intel: "7a175e02671ddccd1a2fe16705fc2cb4f627d78f31b17455b330555bf331b8fb"

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
