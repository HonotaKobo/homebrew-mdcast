cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.50"
  sha256 arm: "d02f91fb618ebc3c87acaff16d93e486d5adc9a510b68bd765716ca2bdbd9411",
         intel: "dcb518561d835940377e692a39847c45b678073244a52aadce95f97f92d5da90"

  url "https://github.com/HonotaKobo/tsumugi/releases/download/v#{version}/tsumugi_#{arch}.app.tar.gz"
  name "tsumugi"
  desc "Markdown viewer for the AI age"
  homepage "https://github.com/HonotaKobo/tsumugi"

  app "tsumugi.app"
  binary "#{appdir}/tsumugi.app/Contents/MacOS/tsumugi"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/tsumugi.app"]
  end
end
