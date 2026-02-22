class WhatsappMcp < Formula
  desc "MCP server for WhatsApp — single Go binary, 55 tools, no Python required"
  homepage "https://github.com/ihiteshgupta/whatsapp-mcp"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ihiteshgupta/whatsapp-mcp/releases/download/v1.0.1/whatsapp-mcp_darwin_arm64.tar.gz"
      sha256 "b9cf7a61502a07b8996b35db69ae93e308864680e05ae6f9aa5fe9e6f9d5638f"
    else
      url "https://github.com/ihiteshgupta/whatsapp-mcp/releases/download/v1.0.1/whatsapp-mcp_darwin_amd64.tar.gz"
      sha256 "35dbf9476c921f79b4d0eb4670916d54446d4e2022d140b034d352d8cdebb554"
    end
  end

  def install
    bin.install "whatsapp-mcp"
  end

  test do
    system "#{bin}/whatsapp-mcp", "--help"
  end
end
