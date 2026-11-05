cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "87bb6861db71773e7b6e1bf545500a81a02b3a74f4b820c2191e8ad83a0e6d61",
         intel: "fd5039591bb30c2147675bf066a1aa43b7ec6a423a5af1292f13424f7174f5f6"

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
