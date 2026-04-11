cask "cubbit-ds3-drive" do
  version "1.8.0"
  sha256 "2720c73f39828a6d2f4d382da2c2e9185283b5af0e7d014010d9f0781ffb266a"

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
