cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.30"
  sha256 arm: "5e8bdc91b71ea3015e4c8cde2667907bdf765e3f74dbf15f9dd3982fd8c22e47",
         intel: "09c0b05d931d4b391f64756b3cf0c7588b1f380540b76fc1ffffceec6ea1367f"

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
