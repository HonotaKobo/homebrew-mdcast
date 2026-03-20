cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.60"
  sha256 arm: "1a9760df2e6960d5f241737f5d5e6ae743f460a2c2882e7afc42f50b5b28c327",
         intel: "5ba38539dd4156421a74104740a2259dd772892d6b0b3b18716aa6a2c75ce7f3"

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
