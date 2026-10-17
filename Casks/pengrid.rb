cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "84a1990752a416451735e4c672c9622234b1783cfa5f9e94105346356dfebe9b",
         intel: "f7698e7c115cee303a5c2ea642dda78c636e825df74dff9ade9b6840e3297e16"

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
