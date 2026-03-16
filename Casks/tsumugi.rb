cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.10"
  sha256 arm: "61edfa1bc85fe7c29d736ca6963c2bdbb24e602174ea73f43839604552ff78b3",
         intel: "42f469ed26b5b03443c5c46e5c046ef6f6141b78445c5edbee6bcf3894d53263"

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
