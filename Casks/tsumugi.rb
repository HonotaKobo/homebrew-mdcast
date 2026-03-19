cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.44"
  sha256 arm: "51a08e0f2396135fb8f46d7fefad47dfc057e8b153681aa494e5780bae7d84f8",
         intel: "5835301f9e51f56aa90c287ab327659f79f3ac2919b84e4932f609de47dee225"

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
