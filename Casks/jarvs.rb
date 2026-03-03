cask "jarvs" do
  version "0.23"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "97a348be03a40faffe1017dcfd67905db297290f4ba084d44009107849a7a511"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "6afeceba6ca5362b8672d2bddf9f3b9088b1092fd25111c1cf8e4b5dd41c0459"
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
