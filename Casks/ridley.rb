cask "ridley" do
  version "3.5.1"
  sha256 "4f1b321f39824b302aef4d0d20368e5fb64ba6be71f0fa1ed78fea02fac02d6c"

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
