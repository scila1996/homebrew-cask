cask "centered" do
  version "5.9.5"
  sha256 "24c1c0b108fc35ce4017dfadabe48c25ec3e728877d0ca7d816846e1be037c60"

  url "https://d3ni5jxar6n4fz.cloudfront.net/Centered-#{version}-universal.dmg",
      verified: "d3ni5jxar6n4fz.cloudfront.net/"
  name "Centered"
  desc "Flow state app for productivity"
  homepage "https://www.centered.app/"

  livecheck do
    url "https://centered-desktop-release.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Centered.app"

  zap trash: [
    "~/Library/Application Support/Centered",
    "~/Library/Preferences/app.centered.mac.prod.plist",
    "~/Library/Saved Application State/app.centered.mac.prod.savedState",
  ]
end
