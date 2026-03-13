cask "mdview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm: "e62c2d6e9f4280a3bbbf4cf13c0e86fa0abcafbfe591e56289d07387048438d4",
         intel: "aee2bc2781fc7bddcdfbb57c17642bc63c1f259351a21d931ee1a46bd4b5a7a6"

  url "https://github.com/HonotaKobo/mdview/releases/download/v#{version}/mdview_#{version}_#{arch}.dmg"
  name "mdview"
  desc "Markdown viewer for the AI age"
  homepage "https://github.com/HonotaKobo/mdview"

  app "mdview.app"
  binary "#{appdir}/mdview.app/Contents/MacOS/mdview"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/mdview.app"]
  end
end
