cask "jarvs" do
  version "0.6"

  on_arm do
    url "https://github.com/julienfouilhe/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "9a6599e92e8721622c98b985787b1659704d8495fbced5cd6e51ff87ac92fcf6"
  end
  on_intel do
    url "https://github.com/julienfouilhe/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "06172f884deca25ae2ed54b7b7880b43c17c666c81165e138106d555d5e34a7e"
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
