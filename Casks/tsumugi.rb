cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.3"
  sha256 arm: "c3e22d52defade6be17b66a6864cc2d6fd6cbd322ac3dc1eff78e591b82af9be",
         intel: "82f5b1f35a8206b2215747c4eae055bccc585782d041f0c6aa7c8ccdd0cf5061"

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
