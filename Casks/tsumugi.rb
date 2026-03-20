cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.57"
  sha256 arm: "75233a27ec5bed5e3687497d3702821f4ef82f96e5d95e619b04c540ac6fc2df",
         intel: "47d987cb7d1d24d931bf6648e14e84ac85c45f39c52f4641bf57368ed2e240cf"

  url "https://github.com/HonotaKobo/tsumugi/releases/download/v#{version}/tsumugi_#{arch}.app.tar.gz"
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
