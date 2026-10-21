cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "fc0c3730a6d97adc26363d72437053cc0ddc65e385bf31fa5d8e070d07f68018",
         intel: "2142db89f9b2c238bad13edecc3dbfce198b4d31963ea117d90e0891ba0d6eeb"

  url "https://github.com/pengrid-app/pengrid-releases/releases/download/v#{version}/Pengrid-#{version}-#{arch}.dmg"
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
