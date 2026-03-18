cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.2"
  sha256 arm: "75814cd18bcf41b62c61462c99ee72f59189989aeaf062059b187af7648f9043",
         intel: "f099b604931ff67a00b1fc180aeb0c95d98349a96121ae20bbb1d249d0718290"

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
