cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.6"
  sha256 arm: "042be1809ed60a76ce0de6026cc51576cf1fa291a3ac3e8dcff5c08fc69f26b5",
         intel: "274ac489d3d064aa6610664d25a7219dc6c720d2760a83fbe468bf2da8c1c92d"

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
