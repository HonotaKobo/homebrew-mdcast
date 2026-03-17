cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.12"
  sha256 arm: "91938e150542d10139ada88a937b62293f437024db4fd0488ac407af5f1cf8b4",
         intel: "7e4d632e9a6f42e2707a4569570c5378b286b655ad3c2decc8830875388822d1"

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
