cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.49"
  sha256 arm: "56a55810b60c44620531c794cfbd92331ab924186aa80dff512cb5d14c9ea896",
         intel: "074909c6de1d83c11d61ce7025241e5db8842d8b8ce65d16080ec1678cbf2333"

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
