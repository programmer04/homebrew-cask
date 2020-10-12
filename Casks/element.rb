cask "element" do
  version "1.7.9"
  sha256 "37170108ed8d731acdd6c5c3c4b3f79a19d69ed58c6635088640db17a36bc453"

  # packages.riot.im/desktop was verified as official when first introduced to the cask
  url "https://packages.riot.im/desktop/install/macos/Element-#{version}.dmg"
  appcast "https://github.com/vector-im/riot-desktop/releases.atom"
  name "Element (Riot)"
  desc "Matrix collaboration client"
  homepage "https://element.io/get-started"

  auto_updates true

  app "Element.app"

  zap trash: [
    "~/Library/Application Support/Element (Riot)",
    "~/Library/Application Support/Element",
    "~/Library/Application Support/Riot",
    "~/Library/Caches/im.riot.app",
    "~/Library/Caches/im.riot.app.ShipIt",
    "~/Library/Logs/Riot",
    "~/Library/Preferences/im.riot.app.helper.plist",
    "~/Library/Preferences/im.riot.app.plist",
    "~/Library/Saved Application State/im.riot.app.savedState",
  ]
end
