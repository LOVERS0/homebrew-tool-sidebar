cask "tool-sidebar" do
  version "1.8.1"
  sha256 "609d615a1b5156c41d7a2377a81ded102c7a64355d845747d698354d6223e6ac"

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
