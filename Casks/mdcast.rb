cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.17"
  sha256 arm: "1f132b1f1d59d5c244b5ec49dacf9fce4954606be73b48c3677f5b73bda362ff",
         intel: "9094e5c4e247130af645797bf42c501107e63ad9a3e0c3acafb68c9acea9f569"

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
