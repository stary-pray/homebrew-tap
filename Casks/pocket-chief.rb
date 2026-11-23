cask "pocket-chief" do
  version "2.1.0"
  sha256 "92b778751c824b29282fd6236b8ad35fdce1bb5b6e86e621e56d073147261ac6"

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
