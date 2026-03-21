cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.61"
  sha256 arm: "79ad41d1c318df1548e0a10a47248a368e8732ed473982eeadb129fdacdda52f",
         intel: "8b0f98de6a77b537f74f432d4fb084e0166dbaa7bf462b5be71a892df61bc1ec"

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
