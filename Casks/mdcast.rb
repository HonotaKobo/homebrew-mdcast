cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.13"
  sha256 arm: "a0d636de7b97ab6f0514c52905f7fe109526067b9033534e1ee5754bade41c0e",
         intel: "8fc7baf35a503f77665b6cac64f8d57dde94fe761e9609016516531f14e8145a"

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
