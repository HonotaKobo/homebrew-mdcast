cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.58"
  sha256 arm: "fae979d4a714a1568e3bed2f89c765eeeab81eff7b591dc29f37274ae10e5deb",
         intel: "1980bd0d2f34d1614a0f9c179f47c63c8fb9851a6078b45d5fa3f28207dff0d3"

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
