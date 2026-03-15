cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.6"
  sha256 arm: "daf2937362bbe306559f9e74e62bea2fb5b5910104e6b8e82afc851fe0f513a7",
         intel: "9167ba4dfbe63ff964049c43551759c6189395ba230f75464126e342f9ec0063"

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
