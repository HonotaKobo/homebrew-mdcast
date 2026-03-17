cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.26"
  sha256 arm: "368a21ffd411fd0ccf067360a62f9b858af38c78b7a73318777da3fc8b973929",
         intel: "4c39bcac695cc187a2d6aeae3b06a0f0f1dbea71390be174f496910c3b526e15"

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
