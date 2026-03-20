cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.59"
  sha256 arm: "a135159d2c6b2fd462f63b1ab00d2d451d90313dd10dea458fcac7841b1851b7",
         intel: "97794cea2bd40c6ba00946dd0970c35b524c2d06620334910f98bf659c700034"

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
