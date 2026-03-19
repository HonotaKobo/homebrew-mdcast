cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.42"
  sha256 arm: "eca0ce8af77697a7f60feb30e7ad4cb183fd16c7cda666a46db79cf19ddb4388",
         intel: "c7653ddd9701c326ce4b567ba3fb1786e71cf7ebdf0ab8a243f87ed3607230f1"

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
