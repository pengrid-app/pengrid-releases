cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "c730e67585764e96a3c45907a90a8b43506fe01b5df7af651f5eaf98317dd8ed",
         intel: "a1eed6ae5e8ea2438b2c85f078a3f64386c8b5dae4a1d6dcf0c4b50a50dfd31e"

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
