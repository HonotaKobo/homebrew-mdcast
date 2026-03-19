cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.40"
  sha256 arm: "4ede1d0a750ee18fb4778f422c1d6f2c64fd58471c12b309d7868049f2c3cde9",
         intel: "86487c7b8a690a4c0abf74ef40a2cd5bc7e6bc89952ac92e47f8c58ce97c24d5"

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
