cask "mdcast" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm: "041f22d079537b32299c52c8a2a65b311199ef1eeeec7737253b268c2ccdf5a7",
         intel: "7f607a78cc7ebd52f8519be87e9741ccf826d21b760ff8742fd9f41bef6a8187"

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
