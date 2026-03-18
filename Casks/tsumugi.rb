cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.39"
  sha256 arm: "9af3f9e1aad506e42a6b21f61c9971ac60106fded84d0b36693a9c80b9fa0553",
         intel: "84335f39a829028c71d27f2330e7b31dfd01453dc37b377bf542069abd58e6d9"

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
