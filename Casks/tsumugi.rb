cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.47"
  sha256 arm: "e92c20378974c81dc50e8666f963d71d9bb2174e6009773bc69d098f9d51b9c3",
         intel: "a356b4f6f815d11ff9dab5b92994c4e868e09f9ebcb776c97ffc92e79d406fa3"

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
