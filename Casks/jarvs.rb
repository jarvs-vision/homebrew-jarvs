cask "jarvs" do
  version "0.21"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "397246153a82c2333ddb640980b9b86e252703b438928fbf4d16568babfa5eed"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "151aed4d820f72fac85b403b352938f5c4fa82d3abc425b4172d2fbea3bc53af"
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
