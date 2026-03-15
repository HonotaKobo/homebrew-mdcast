cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.5"
  sha256 arm: "3285eac32e2b0d22628fff49cfed95561a3bc492c8c5c3cf9ff340793a003802",
         intel: "462947a9a58ce57b891e56bae9b2b6e6f61028778049dd95f578aa3e3b247f90"

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
