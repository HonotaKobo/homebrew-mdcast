cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.41"
  sha256 arm: "c3c9aaaa7620a776cc535623d74b02dd6e3d1fa492d5bdc43ad463fa016a1ed2",
         intel: "eb32d471c2e7c05652a7937a1ad75601162df0f2cc9133d9277ee347a3a1aded"

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
