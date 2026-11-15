cask "boxbox" do
  version "1.0.1"
  sha256 "ad96db6f6e88005cd2071b218787df8ee4dde9e0253c3ca1e05b2ccd48484819"

  url "https://github.com/Txtus/boxbox-releases/releases/download/v#{version}/Boxbox-#{version}.dmg",
      verified: "github.com/Txtus/boxbox-releases/"
  name "Boxbox"
  desc "Bar that shows every coding agent session and its status"
  homepage "https://txtus.github.io/boxbox-site/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Boxbox.app"

  uninstall quit: "de.titusnachtwey.Boxbox"

  zap trash: [
    "~/Library/Application Support/Boxbox",
    "~/Library/Caches/Boxbox",
    "~/Library/Caches/de.titusnachtwey.Boxbox",
    "~/Library/HTTPStorages/de.titusnachtwey.Boxbox",
    "~/Library/Preferences/de.titusnachtwey.Boxbox.plist",
  ]
end
