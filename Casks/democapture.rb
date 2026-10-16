cask "democapture" do
  version "1.1.0"
  sha256 "697b23cdb0f289b0f409c4b759cb90b83042aef20c26019fe116717e784028c5"

  url "https://github.com/tadashi0713/democapture-release/releases/download/v#{version}/DemoCapture-#{version}.zip"
  name "DemoCapture"
  desc "Record screen, camera, and mic into a single demo video"
  homepage "https://github.com/tadashi0713/democapture-release"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "DemoCapture.app"

  zap trash: [
    "~/Library/Preferences/com.tadashi0713.DemoCapture.plist",
    "~/Library/Saved Application State/com.tadashi0713.DemoCapture.savedState",
  ]
end
