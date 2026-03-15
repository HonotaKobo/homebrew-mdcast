cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.19"
  sha256 arm: "eb0ac4f215f4c6258414c42ed44a8fcfbc1fd63cff49eca2aef86598b8a4de07",
         intel: "f2e27660fc2679f5d5ffa838e11a47803822117baa66f082d48109abea3d9b47"

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
