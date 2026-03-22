cask "cubbit-ds3-drive" do
  version "1.5.3"
  sha256 "9f23a3d868bbb6d6c0b6ad71cae4795b73ed075a661773f794710d216b700020"

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
