cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.5"
  sha256 arm: "134876d4619ab5bbc1eb9acae48c2519201a15e9dad096bceadc003905841a87",
         intel: "2b7957448a5ec451b117fac3317e61d4b184ea022b3c0e1f6ba1d684f36c6fcb"

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
