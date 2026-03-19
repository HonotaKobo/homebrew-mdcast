cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.52"
  sha256 arm: "2427b5fe6ac370d4ba775efe58f9af89974492f990b0955c946198528efc89d7",
         intel: "01949198d3ef732bab9975397b4d37bdacddc4862693d5d754533ca401795d8c"

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
