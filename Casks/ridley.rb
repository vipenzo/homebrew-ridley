cask "ridley" do
  version "3.5.0"
  sha256 "42aa0648b6fc52cf252914d1aeff3e74651eee1cbdd1d7a1c86c33b0e01c5774"

  url "https://github.com/vipenzo/ridley/releases/download/v#{version}/Ridley-v#{version}-macOS.dmg"
  name "Ridley"
  desc "3D modeling with turtle graphics and SDF"
  homepage "https://github.com/vipenzo/ridley"

  depends_on arch:  :arm64
  depends_on macos: :big_sur

  app "Ridley.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Ridley.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.ridley.desktop",
    "~/Library/Caches/com.ridley.desktop",
    "~/Library/Preferences/com.ridley.desktop.plist",
    "~/Library/WebKit/com.ridley.desktop",
  ]
end
