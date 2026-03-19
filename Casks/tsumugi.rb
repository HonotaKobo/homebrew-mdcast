cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.48"
  sha256 arm: "453b1e06037fc614993c947d3ff5c144400a752713be7fa3e5aa883b67191248",
         intel: "550fb4203b7e3cf260b91686b116d44fab3c175ae6c1a1b101379f80e9e04b8f"

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
