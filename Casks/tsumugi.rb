cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.0"
  sha256 arm: "22f662f8e7eb03e1ef614835c8b44b5f7e107d6754d0ab317f372f5a77b0d539",
         intel: "ab5054a5aef79987deb5b9b5438099be214514554fc66cf3e2493d26e4d5baa7"

  url "https://github.com/HonotaKobo/tsumugi/releases/download/v#{version}/tsumugi_#{version}_#{arch}.dmg"
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
