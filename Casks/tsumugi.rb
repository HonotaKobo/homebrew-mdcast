cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.7"
  sha256 arm: "e9c9b1db0b6e80bf247eb31dcd46604be558059d3dd0e166585ac2be8486949e",
         intel: "38d244acff6d6bcde596f240aaa30f9c1fdecbae10acd22dea28fcdc3b2fcab7"

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
