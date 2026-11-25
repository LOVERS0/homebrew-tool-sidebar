cask "tool-sidebar" do
  version "1.11.0"
  sha256 "76a0ec1b3737a3ee9a00b2ba0cea84623af51b4ccbbad42a127ac962f076551a"

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
