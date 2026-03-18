cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.38"
  sha256 arm: "ac06ee78a9ea1a489a094bbfedd897f4573e16d283ac60ef6bbd71faf261c059",
         intel: "48cd1a8e19ad7c8cf6f3186fb028419bfb49f9212a13db4c094b8759791b9bad"

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
