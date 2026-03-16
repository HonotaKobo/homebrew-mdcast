cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.8"
  sha256 arm: "63ce0b9fe93401884e8f3223fbf109253554c6735a6bfa2e45676d894febda4c",
         intel: "13662a0f4695f0a5b2b809dffb5b82b099efd1e580378b9ffe9373b1310548a7"

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
