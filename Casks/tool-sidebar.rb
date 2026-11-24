cask "tool-sidebar" do
  version "1.10.0"
  sha256 "778cbb3f68c6a4c507297ab88fbab31e25a28549c4a291dfdd21d2ddcec3e201"

  url "https://github.com/LOVERS0/tool-sidebar/releases/download/v#{version}/ToolSidebar.zip",
      verified: "github.com/LOVERS0/tool-sidebar/"
  name "小工具侧边栏"
  desc "macOS 悬浮工具侧边栏与 GitHub 安装助手"
  homepage "https://github.com/LOVERS0/tool-sidebar"

  depends_on macos: ">= :ventura"

  app "小工具侧边栏.app"

  caveats <<~EOS
    小工具侧边栏尚未经过 Apple 公证（ad-hoc 签名）。
    首次打开若被 macOS 拦截，请确认下载来源，并按
    「系统设置 → 隐私与安全」中的提示处理。
  EOS
end
