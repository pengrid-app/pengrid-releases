cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "e0f3d1271d06c14078f50633bfdf1e20f07b5e4de2ced45db289a7ddb2adf3c1",
         intel: "93438ffa977151e46996235a9cbbe0c939ca4d415bfe64e78d0a48b19f2ca200"

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
