cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.62"
  sha256 arm: "d40226999851204c2c89fb24376518fac167d99d1f591e3f54c0416b1d1d8177",
         intel: "ccab336de3e7ee33924d4eb535f21d3c2b7abc24675ecaea8c26a4e50dd10418"

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
