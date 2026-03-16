cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.4"
  sha256 arm: "a0e73924f3d14450d725bd7952f7561da17901efdb03b273166961d30c7854e2",
         intel: "b52800bb28717eaeffc919a3aed2fc4de44377c84a6953bf56f1d76a943f12e9"

  url "https://github.com/HonotaKobo/tsumugi/releases/download/v#{version}/tsumugi_#{version}_#{arch}.dmg"
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
