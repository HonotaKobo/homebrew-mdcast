cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.24"
  sha256 arm: "ba26970b22fe7fcc6951247f882762bc9d2a54d9094f40b753a97d82196f63a3",
         intel: "7e9c7e2df308996a471c0eca428de46260900e4b5b4c8e2f05e851f57beacb6f"

  url "https://github.com/HonotaKobo/tsumugi/releases/download/v#{version}/tsumugi_#{version}_#{arch}.app.tar.gz"
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
