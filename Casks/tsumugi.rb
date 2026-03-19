cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.43"
  sha256 arm: "545d54110a92e4cadf3e788774e361be166534b7d441df6e3dbf84292eebd8f1",
         intel: "cedcf27f5d1fa6020e830aee1ff43c7fb1aef006735ae39bc918bec4c9d7ea1e"

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
