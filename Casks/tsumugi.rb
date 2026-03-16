cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.6"
  sha256 arm: "01260dfc2a0267ae69b46ff2660dc03f0512cbfe9b6ff8f650b98b3a89f86cb0",
         intel: "9e48ca86cc5ac45093fa3e2225b68885ad642e8ad918a76082fd9d480ad84ee8"

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
