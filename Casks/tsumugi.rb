cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.16"
  sha256 arm: "328854e5eb6533aefd81d64d5099ce4d02550e499b49ea677503abdd99682104",
         intel: "7c7d84ff2d81bfdae9813bbda5367bb49e7663751670d0596e29c02e9712c322"

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
