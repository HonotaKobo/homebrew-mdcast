cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.27"
  sha256 arm: "83fd0e7864c26a3ab63f467a089b9f8b80994a7a9b4b0190a8d6252daddd04f1",
         intel: "ee47ce98cf1e66f7b40df6b23e80b1c1cf79df02bf01656623a7f6d20e273ce8"

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
