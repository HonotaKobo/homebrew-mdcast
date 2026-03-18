cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.33"
  sha256 arm: "132889a00c7d6ad4d966d73d2ab7f4787032e96e3a753a1bb12a900309d9af8f",
         intel: "32a1fb18414e80214c0505f365ad0b4f9e035a591167afe36ec28c8f69541721"

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
