cask "boxbox" do
  version "1.1.0"
  sha256 "eaacf6cb4fc9e6bd169cf9ed9b683d15f0368d44f6da978d731ae1d3bfc0d5e9"

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
