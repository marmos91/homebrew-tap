# DittoFS Pro - Virtual filesystem management platform with web dashboard
cask "dfs-pro" do
  version "0.9.8"

  on_macos do
    on_intel do
      url "https://s3.cubbit.eu/dittofs-pro-binaries/v#{version}/dfs_#{version}_darwin_amd64.tar.gz"
      sha256 "6e386c7969e20a013cd83f084bff9c60df55314c920773a8839200907965be89"
    end
    on_arm do
      url "https://s3.cubbit.eu/dittofs-pro-binaries/v#{version}/dfs_#{version}_darwin_arm64.tar.gz"
      sha256 "5d971ad2fca69dd79202162b7ce08f559b3ef765f0a6fed047463814b88d09e3"
    end
  end

  on_linux do
    on_intel do
      url "https://s3.cubbit.eu/dittofs-pro-binaries/v#{version}/dfs_#{version}_linux_amd64.tar.gz"
      sha256 "22eae91d2e6f335bfa5388389675ba1d57a1042ffcfcd732e6bbcc81947bfdf9"
    end
    on_arm do
      url "https://s3.cubbit.eu/dittofs-pro-binaries/v#{version}/dfs_#{version}_linux_arm64.tar.gz"
      sha256 "93f03941ebc8637322017e682699570658e0730695aff69cb1898db5897bc215"
    end
  end

  name "dfs-pro"
  desc "DittoFS Pro - Virtual filesystem management platform with web dashboard"
  homepage "https://github.com/marmos91/dittofs-pro"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "dfs", target: "dfs-pro"

  postflight do
    system_command "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "#{staged_path}/dfs"]
  end

  caveats <<~EOS
    DittoFS Pro is now installed.

    To start the server:
      dfs-pro

    Default port: 8080
    Dashboard URL: http://localhost:8080
  EOS
end
