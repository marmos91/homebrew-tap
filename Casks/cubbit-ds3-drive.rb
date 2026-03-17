cask "cubbit-ds3-drive" do
  version "1.5.0"
  sha256 "42fb8aa85a77874536c059b32b286d0a1d835f7d2da4923a480d05b1cbdd2c81"

  url "https://github.com/marmos91/cubbit-ds3-drive/releases/download/v#{version}/Cubbit-DS3-Drive-#{version}.dmg"
  name "Cubbit DS3 Drive"
  desc "Sync local files with Cubbit DS3 cloud storage"
  homepage "https://github.com/marmos91/cubbit-ds3-drive"

  depends_on macos: ">= :sequoia"

  app "Cubbit DS3 Drive.app"

  zap trash: [
    "~/Library/Group Containers/group.X889956QSM.io.cubbit.DS3Drive",
    "~/Library/Containers/io.cubbit.DS3Drive",
    "~/Library/Containers/io.cubbit.DS3Drive.provider",
    "~/Library/Caches/io.cubbit.DS3Drive",
    "~/Library/Preferences/io.cubbit.DS3Drive.plist",
  ]
end
