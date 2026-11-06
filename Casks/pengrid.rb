cask "pengrid" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "77c4e3f769b7909e60db1f84dbcb8a9b3f94c7628e69c80cfd365de2b63148b8",
         intel: "1157c9974f6c1bb4ef0b016851ecbd8c56bcd9ad1c08ba9f5fa4f9d3b002c2fb"

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
