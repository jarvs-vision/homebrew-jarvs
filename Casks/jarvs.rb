cask "jarvs" do
  version "0.33"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "f7f3aa6a13c6cbe6a72872d57372f10c65a208e1866f5e0edcee3f69910f0d62"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "9f36c2df22bbe7181fc700a3b59956a2cb53469b351260b516797faf6a57254a"
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
