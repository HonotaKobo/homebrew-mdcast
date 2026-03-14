cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.4"
  sha256 arm: "81a53d0b613f2bd2ec83c16cc3303ea295814f79ad48e5ed4fac2e1a24170eab",
         intel: "06a8672a0e5b8bed1c349b895b824a780947bcdbdbf2829b9ea30a2eabf92fbb"

  url "https://github.com/HonotaKobo/mdcast/releases/download/v#{version}/mdcast_#{version}_#{arch}.dmg"
  name "mdcast"
  desc "Markdown viewer for the AI age"
  homepage "https://github.com/HonotaKobo/mdcast"

  app "mdcast.app"
  binary "#{appdir}/mdcast.app/Contents/MacOS/mdcast"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/mdcast.app"]
  end
end
