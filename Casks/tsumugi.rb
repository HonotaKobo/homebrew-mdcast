cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.45"
  sha256 arm: "7a705d3559f70dcdecf2809296d5b905020c99754bb3d5ce4c8c6b771ff7db47",
         intel: "dc4aa8c5c3523f822d16d1321172b699daaf196f68870d7a11d00ded79e47b3b"

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
