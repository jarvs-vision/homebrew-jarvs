cask "jarvs" do
  version "0.27"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "3342dc4b739775d7652420a1dfe69400e2e850b1b339520239b0f42a5855405a"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "216ac6c4a8a7b400ce396f6bc0298e32aa46dc8f0a102982dcd130b726debaa3"
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
