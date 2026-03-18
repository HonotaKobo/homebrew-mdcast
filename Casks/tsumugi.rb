cask "tsumugi" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.29"
  sha256 arm: "8716b3024f85db74db6152d3a0adc5d49e7398600707bf14a8f3a2ba443fbbab",
         intel: "20614deeb3b7d809ef03940bc1aa7d161164264e74a85e4beb3ecb4573f5498a"

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
