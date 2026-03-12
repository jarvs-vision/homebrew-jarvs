cask "jarvs" do
  version "0.29"

  on_arm do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-arm64.dmg"
    sha256 "7a1bd8e4e3ead6d3b5dc509f3e5a8e1646e0d22373c6a211b9863a1ddcb68543"
  end
  on_intel do
    url "https://github.com/jarvs-vision/jarvs-releases/releases/download/v#{version}/JarVS-x86_64.dmg"
    sha256 "475e5e2434b11f527442c459384fc76bac13823b90c56e5dbbcaa3a7de9bb748"
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
