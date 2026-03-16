cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.11"
  sha256 arm: "b9f9113cb4bafabe3aad891c0805acf0672df894822d4e63d8700f9670a858fc",
         intel: "3f34fa101bf4ab6a00968f40c88893db66d2738ee5b1f96378cefa9577a99cfb"

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
