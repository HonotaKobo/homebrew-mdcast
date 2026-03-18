cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.3"
  sha256 arm: "417d884b321e188ac77e64d05861936fd3bdfc02ae1a04ae77339968dfb2fb8e",
         intel: "7eccc7d281d327411f3bff74e6d88ea2c3cf977c0dd9433c8fad52ae43a8c750"

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
