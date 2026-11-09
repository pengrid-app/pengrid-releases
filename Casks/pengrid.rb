cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "6be4ec10b6ef3dde6915d62d6f4b7b675b4e468c54b81fccf30ee94ac453343e",
         intel: "3b7d4687c4f143b423eb599a947991e63ed68e76fa03a24129c576a6bb572ba9"

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
