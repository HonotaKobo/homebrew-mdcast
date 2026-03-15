cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.7"
  sha256 arm: "23709248ade8fa577976332372cd3c64fdc5b4e63038eb75941ecab37c1353d1",
         intel: "d6fcfeb066261d4f9e0f84b289d943a2e05505b78b01455b56c2f77e86fca6b6"

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
