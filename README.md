# homebrew-tap

Homebrew formulae by [Hitesh Gupta](https://github.com/ihiteshgupta).

## Install

```bash
brew tap ihiteshgupta/tap
```

## Formulae

### whatsapp-mcp

MCP server for WhatsApp — single Go binary, 55 tools, no Python required.

```bash
brew install ihiteshgupta/tap/whatsapp-mcp
```

**Claude Code config (`~/.claude.json`):**
```json
{
  "mcpServers": {
    "whatsapp": {
      "command": "/opt/homebrew/bin/whatsapp-mcp",
      "args": []
    }
  }
}
```

**Tools (55 total):** messaging, chats, contacts, groups, media, presence, status, bridge.

Source: [ihiteshgupta/whatsapp-mcp](https://github.com/ihiteshgupta/whatsapp-mcp)
