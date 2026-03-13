cask "mdview" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm: "113bf3d7671286c04f2afb2f23203af8d4dc25d77d30c069479c6d9412bf24c7",
         intel: "8c6ef94007bd7d765d8f508444d775898258df460c8756b109e5ecca78c08141"

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
