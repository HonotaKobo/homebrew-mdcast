cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.5"
  sha256 arm: "50de96d7fbaab446c2de656ef0b490f838c07597640835e0a3f895e95fefe4f0",
         intel: "fb548b7ee698b092a41687ae61bb9b9399d58372872ebfa5f8fa3ac6340f9535"

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
