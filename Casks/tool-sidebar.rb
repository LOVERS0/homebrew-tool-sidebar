cask "tool-sidebar" do
  version "1.8.5"
  sha256 "4d9dccd5196608fdbc980fb6fcd4f1b1c5e6ba8e811c304fc7e3925cdc28b512"

  url "https://github.com/LOVERS0/tool-sidebar/releases/download/v#{version}/ToolSidebar.zip",
      verified: "github.com/LOVERS0/tool-sidebar/"
  name "小工具侧边栏"
  desc "macOS 悬浮小工具侧边栏 + GitHub 安装 agent"
  homepage "https://github.com/LOVERS0/tool-sidebar"

  depends_on macos: ">= :ventura"

  app "小工具侧边栏.app"

  caveats <<~EOS
    小工具侧边栏没有做 Apple 公证（ad-hoc 签名）。
    首次打开若被 Gatekeeper 拦截：右键 App → 打开；或执行：
      xattr -dr com.apple.quarantine "$(brew --prefix)/Caskroom/tool-sidebar/#{version}/小工具侧边栏.app"
  EOS
end
