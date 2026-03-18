cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.28"
  sha256 arm: "fc7936e211e5995b34fd4888d6d23614392303062f52b83d1f5ca9c051f264b7",
         intel: "248457398037c5fad6ced7172b46b23a179653eaadf17f42bc7ee412a3e82294"

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
