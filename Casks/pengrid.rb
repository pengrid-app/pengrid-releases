cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "1f857abc618169d61ae4a2867abdb8242e906b169cebaaec3a14b2dfa4f8d1f8",
         intel: "2ef9fe339721e95222bb64b10046b99259b1c501891717c255feb6c85a339a90"

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
