cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.4"
  sha256 arm: "d8cd7ab60c5a94d871b94bed05abeb92eda7f6af877d2b08f31c9dfd61d50836",
         intel: "0d3d08c7ad771905df7370783e798dc6af8f4b5f29b1a329a7eeac076a45d041"

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
