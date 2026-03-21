cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.63"
  sha256 arm: "6e75e4f6ea913456ef98c457cc9c51da4c778a16990a7c389d15e61ebb710e0f",
         intel: "d6f3eb6e586c87de765e30f61a7eabb4945b5e617b3263755db65a5f0505134f"

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
