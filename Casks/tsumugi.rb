cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm: "1752a4143c46ceba423d87ba059bbae07d41f61fd8650b72e03606cb6dc2ac4f",
         intel: "7fe92a4e81691944e5af3bd2ebfb5ca5f310ef233d11a016f969d59a301e7152"

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
