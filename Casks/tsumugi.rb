cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.56"
  sha256 arm: "5186489c7ab6e95cad603e69ded3790f41e4fb687d17b8d54c271ab57b7f208d",
         intel: "77a56cc42c0a7e33a7cdbdabba0edf0ada22e3ed1388e700b539bc31f00d29c3"

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
