cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.35"
  sha256 arm: "5fda56ebef5f5132b87871571e5ac46fde61b012ae4809d10280c4b7984be0aa",
         intel: "3736ef98e17f7e8a510ca1ea89b27af74d7b45f19eb5e78e3f81ab8033d73139"

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
