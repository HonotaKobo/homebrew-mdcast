cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.32"
  sha256 arm: "9f0378111fb22e8d54eac1498f5edd41707ef8c255805e1c056a7884d1205ca4",
         intel: "441e67fdd6a45ed1aaa2274ab5c6a6ee5f7b5b8d1b744ad58b2760d59b36b334"

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
