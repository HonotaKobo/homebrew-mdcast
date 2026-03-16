cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.1"
  sha256 arm: "228f7593ae5a046913c74335b7a4ed5342da22945283bae59fcf42acc3b522a4",
         intel: "d6cba0a8b7850995778eae906deadfec9389665809b94755f70ba5b475a0d5e2"

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
