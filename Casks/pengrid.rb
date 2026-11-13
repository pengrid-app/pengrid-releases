cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "1cda1e9d08f8ae6c79c8e3c0a4e6a9de3a35bdcf0d94a03e4a606c5127b8c22a",
         intel: "8922ffe1c5af747483feb6355135f4070d6e46b753aeb9a54563b853d1c52d53"

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
