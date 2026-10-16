cask "bento" do
  version "1.2.0"
  sha256 "62af58e3559fa4e1114d4c0296a41521c7b02f96218c8751f45b8f05f7ecde0b"

  url "https://github.com/tadashi0713/bento-release/releases/download/v#{version}/Bento-#{version}.zip"
  name "Bento"
  desc "Sidebar browser for web apps"
  homepage "https://github.com/tadashi0713/bento-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Bento.app"

  zap trash: [
    "~/Library/Application Support/Bento",
    "~/Library/Preferences/dev.tadashi0713.bento.plist",
    "~/Library/Saved Application State/dev.tadashi0713.bento.savedState",
  ]
end
