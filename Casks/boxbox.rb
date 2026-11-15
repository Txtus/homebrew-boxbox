cask "boxbox" do
  version "1.0.0"
  sha256 "88eb8532535c2edbf91e89152c0b261cc124a7dcea5c065c10cb811537c95ea1"

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
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Boxbox.app"

  uninstall quit: "de.titusnachtwey.Boxbox"

  zap trash: [
    "~/Library/Application Support/Boxbox",
    "~/Library/Caches/de.titusnachtwey.Boxbox",
    "~/Library/Caches/Boxbox",
    "~/Library/HTTPStorages/de.titusnachtwey.Boxbox",
    "~/Library/Preferences/de.titusnachtwey.Boxbox.plist",
  ]
end
