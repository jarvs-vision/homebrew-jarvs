cask "jarvs" do
  version "0.19"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "d3459705dd2c60facbbd86aad717f4ed2a8d6d16bb6d34b520ba0c67b5ef332c"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "7b4d524e54b2dab09dffc738bdb7b1f31e6eeb3248fab108be49b095546092b1"
  end

  name "JarVS"
  desc "Menu bar companion app for JarVS Vision Pro"
  homepage "https://jarvs-vision.pro"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "JarVS.app"

  uninstall quit: "pro.jarvs-vision.host",
            login_item: "JarVS"

  zap trash: [
    "~/.jarvs",
    "~/Library/Preferences/pro.jarvs-vision.host.plist",
    "~/Library/Caches/pro.jarvs-vision.host",
    "~/Library/HTTPStorages/pro.jarvs-vision.host",
  ]
end
