cask "extrabar" do
  version "1.7.5"
  sha256 "4a3fa8d64c456b784920a7721b9d559068d91f8cd856c0c37e7b5906a19ddc59"

  url "https://github.com/AppitStudio/extra-bar-updates/releases/download/v#{version}/ExtraBar.dmg"
  name "ExtraBar"
  desc "Customisable menu bar with shortcuts, quick actions and deep links"
  homepage "https://extrabar.app/"

  livecheck do
    url "https://raw.githubusercontent.com/AppitStudio/extra-bar-updates/refs/heads/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "ExtraBar.app"

  uninstall quit: "com.appit.ExtraBar"

  zap trash: [
    "~/Library/Application Support/ExtraBar",
    "~/Library/Caches/com.appit.ExtraBar",
    "~/Library/HTTPStorages/com.appit.ExtraBar",
    "~/Library/Preferences/com.appit.ExtraBar.plist",
  ]
end
