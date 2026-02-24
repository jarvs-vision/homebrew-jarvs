cask "jarvs" do
  version "0.15"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "8d1c86a79aafe52006f2631eb3055a8cfcd58382b38f76d071ca326f96f27073"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "fd570cb237b84492dd5d95b5d6fcb5cd05fd0683fc879fe0446c55e5a1a35e08"
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
