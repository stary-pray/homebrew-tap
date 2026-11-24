cask "pocket-chief" do
  version "2.1.3"
  sha256 "a003b44534f7bcd5909d4c708a71cd36796c49f2e113f567a9c6c29d4c377a8b"

  url "https://updates.starwish.co.nz/direct/production/native/arm64/#{version}/Pocket-Chief-#{version}-mac-arm64.dmg"
  name "Pocket Chief"
  desc "Desktop companion that keeps track of what you are working on"
  homepage "https://starwish.co.nz/pocket-chief/"

  livecheck do
    url "https://updates.starwish.co.nz/direct/production/native/arm64/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Pocket Chief.app"

  zap trash: [
    "~/Library/Application Support/Pocket Chief Client",
    "~/Library/Caches/nz.co.starwish.pocket-chief",
    "~/Library/HTTPStorages/nz.co.starwish.pocket-chief",
    "~/Library/Preferences/nz.co.starwish.pocket-chief.plist",
    "~/Library/Saved Application State/nz.co.starwish.pocket-chief.savedState",
  ]
end
