cask "tool-sidebar" do
  version "1.2.1"
  sha256 "c0b4e5297119de38f259c663aae570dad627cebaeab9d43c66e2f04d40c0e263"

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
