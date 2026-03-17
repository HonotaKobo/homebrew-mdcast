cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.23"
  sha256 arm: "8ca4ed606660792571aa3324dccea39f11ef2cec3728a94f4273148574156dd4",
         intel: "5f62de3480120c3d2bfcce7a14d0ce2e903a8f19741f8406a46fa92ac92a7354"

  url "https://github.com/HonotaKobo/tsumugi/releases/download/v#{version}/tsumugi_#{version}_#{arch}.app.tar.gz"
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
