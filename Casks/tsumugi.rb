cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.55"
  sha256 arm: "ce12c946b2882c2ea7fd3783f605edae06ab265c3b0790fccc61340bce7ab643",
         intel: "ce1981ec159e5649fa6229c8c19bc4e4d54c1774e8de2f994829593b0f84cae2"

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
