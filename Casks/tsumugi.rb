cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.54"
  sha256 arm: "9c852b8ddaa7dbed9c9feedaa87268620cb420d98e639b24b415c3379ed110b2",
         intel: "b39e0e7cc62f52dd6c220cdc54721905e24625026c92db5aac6bf10cf2eb093b"

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
