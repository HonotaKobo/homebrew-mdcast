cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.1"
  sha256 arm: "2920db6f42ff05d6a7c3c26f8e7973579eecd014c1485b77499408e7be4dd584",
         intel: "13d606c99e397988caad470ef7e4c84dc4b8729b77d96fc54f4b1db368639936"

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
