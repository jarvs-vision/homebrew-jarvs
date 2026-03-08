cask "jarvs" do
  version "0.24"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "112a166f3c5812170f9d001e378258b3944d62e90ffae868d025b1a5ae2699dd"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "773eeab6fb8e445bc659ae43e9b090ea16c02a4b88d65510a1dd6d661f16dd43"
  end

  name "JarVS"
  desc "Menu bar companion app for JarVS Apple Vision Pro app"
  homepage "https://jarvs.space"

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
