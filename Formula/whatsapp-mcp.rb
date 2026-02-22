class WhatsappMcp < Formula
  desc "MCP server for WhatsApp — single Go binary, 55 tools, no Python required"
  homepage "https://github.com/ihiteshgupta/whatsapp-mcp"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihiteshgupta/whatsapp-mcp/releases/download/v1.0.2/whatsapp-mcp_darwin_arm64.tar.gz"
      sha256 "4d73d996552de998e4318dde1d0d692652e79a88a439989352d39a2a8a281ae3"
    else
      url "https://github.com/ihiteshgupta/whatsapp-mcp/releases/download/v1.0.2/whatsapp-mcp_darwin_amd64.tar.gz"
      sha256 "92cdaeca2e988df180d97392fdf2dafcc8fd2edcf4955ccd88a534f3584ef3fb"
    end
  end

  def install
    bin.install "whatsapp-mcp"
  end

  test do
    system "#{bin}/whatsapp-mcp", "--help"
  end
end
