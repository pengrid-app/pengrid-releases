cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "3d3b9d7a918b153dcee6f1814bbf55170ec740d40150e5f551e9b02d5b157cc3",
         intel: "7ff98c4bde18c2fa3c9f8247180ae37da486caf01e55591b70ad1dc72ec2cec4"

  url "https://github.com/karvidsson/pengrid-releases/releases/download/v#{version}/Pengrid-#{version}-#{arch}.dmg"
  name "Pengrid"
  desc "Editor for writing, designing and merging white papers"
  homepage "https://pengrid.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Pengrid.app"

  zap trash: [
    "~/Library/Application Support/Pengrid",
    "~/Library/Caches/app.pengrid.desktop",
    "~/Library/Caches/app.pengrid.desktop.ShipIt",
    "~/Library/Logs/Pengrid",
    "~/Library/Preferences/app.pengrid.desktop.plist",
    "~/Library/Saved Application State/app.pengrid.desktop.savedState",
  ]
end
