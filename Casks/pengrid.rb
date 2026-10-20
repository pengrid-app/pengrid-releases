cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "326765dc9f1c420c6ac8890782be895925ca6dabfb725a92156a74e99e5f9188",
         intel: "5dbf92931285bce0117876357be39818be3d01862e10cfdc98aefebd7d209b41"

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
