cask "jarvs" do
  version "0.10"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "65ad1d0ff7d410fbbd4f478e259956482ca1efc0f7d8b537597abde4af1c9829"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "67f04e624ca55d47fdf232b79fb09c2fb7099a2bb4ee16150354c77dee9d5b92"
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
