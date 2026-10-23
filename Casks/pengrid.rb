cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "fd22c6b8b45ee464e322f30beff40e36550f52ea0edbf91fbf321ab451fea0dd",
         intel: "a4036ebd64f1f6be336c6cae423e7694a6fc1086e71f949e7d85b4098826d974"

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
