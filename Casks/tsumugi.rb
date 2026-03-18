cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.37"
  sha256 arm: "d6edec06b8542a71e0e3e95a7f99b3761155e1ab1ed2e30d469ebba938d076a4",
         intel: "a883e03fa4243856aee6de7cfe17618150b3ec9b76ad2f5e5dd0e20726d9e712"

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
