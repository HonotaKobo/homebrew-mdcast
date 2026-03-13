cask "mdview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm: "af067c37542b5feaa4cdd0c59146695baa0d534b2b02aef9d5775426932e6705",
         intel: "0ddd3653c0ecbbe02b4f7488966a9e12f9423c3f4e23f7b0570a4ed5b0104c2f"

  url "https://github.com/HonotaKobo/mdview/releases/download/v#{version}/mdview_#{version}_#{arch}.dmg"
  name "mdview"
  desc "Markdown viewer for the AI age"
  homepage "https://github.com/HonotaKobo/mdview"

  app "mdview.app"
  binary "#{appdir}/mdview.app/Contents/MacOS/mdview"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/mdview.app"]
  end
end
