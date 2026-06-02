# Pi MCP Adapter Reference

## File layout

| File | Purpose |
|---|---|
| `~/.config/mcp/mcp.json` | User-global shared MCP config |
| `.mcp.json` | Project-local shared MCP config |
| `<Pi agent dir>/mcp.json` | Pi global override and compatibility imports |
| `.pi/mcp.json` | Pi project override |

Precedence, low to high: `~/.config/mcp/mcp.json`, `<Pi agent dir>/mcp.json`, `.mcp.json`, `.pi/mcp.json`.

## Server fields

- `command`: executable for stdio transport
- `args`: command arguments
- `env`: environment variables
- `cwd`: working directory
- `url`: HTTP endpoint, Streamable HTTP with SSE fallback
- `headers`: HTTP headers
- `auth`: `"bearer"` or `"oauth"`
- `oauth.grantType`: `"authorization_code"` default or `"client_credentials"`
- `oauth.clientId`, `oauth.clientSecret`, `oauth.scope`, `oauth.redirectUri`, `oauth.clientName`, `oauth.clientUri`
- `bearerToken` / `bearerTokenEnv`: bearer auth secret or env var name
- `lifecycle`: `"lazy"` default, `"eager"`, or `"keep-alive"`
- `idleTimeout`: minutes before idle disconnect
- `exposeResources`: expose MCP resources as tools, default true
- `directTools`: `true`, `false`, or list of original MCP tool names
- `excludeTools`: hide tools by original or prefixed name
- `debug`: show server stderr

String interpolation works in `env`, `cwd`, `headers`, and `bearerToken` values:

- `${VAR}` reads environment variable `VAR`
- `$env:VAR` also reads environment variable `VAR`
- `cwd` also expands `~`

## Direct tools

By default, all MCP tools are accessed through the single compact `mcp` proxy tool. This keeps context small and lets the agent discover tools on demand.

Use `directTools` when specific tools should appear beside Pi tools like `read`, `bash`, and `edit`.

```json
{
  "mcpServers": {
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "directTools": ["search_repositories", "get_file_contents"]
    },
    "small-server": {
      "command": "node",
      "args": ["./server.js"],
      "directTools": true
    },
    "huge-server": {
      "command": "node",
      "args": ["./huge.js"],
      "directTools": false
    }
  }
}
```

Each direct tool costs prompt tokens. For large servers, keep proxy-only or list a small set of specific tools. `excludeTools` filters direct tools, proxy search/list/describe, and the `/mcp` panel.

Global default:

```json
{
  "settings": {
    "directTools": true,
    "disableProxyTool": false
  },
  "mcpServers": {
    "huge-server": { "directTools": false }
  }
}
```

## Lifecycle modes

- `lazy` default: do not connect at startup; connect on first call; disconnect after idle timeout.
- `eager`: connect at startup but do not auto-reconnect if connection drops.
- `keep-alive`: connect at startup, health check, and auto-reconnect.

Global settings:

```json
{
  "settings": {
    "toolPrefix": "server",
    "idleTimeout": 10,
    "autoAuth": false,
    "sampling": true,
    "samplingAutoApprove": false
  },
  "mcpServers": {}
}
```

`toolPrefix` can be `"server"`, `"short"`, or `"none"`.

## Imports

Use `imports` only for host-specific config formats that are not already in `.mcp.json` or `~/.config/mcp/mcp.json`.

```json
{
  "imports": ["cursor", "claude-code", "claude-desktop", "vscode", "windsurf", "codex"],
  "mcpServers": {}
}
```

## OAuth and bearer auth

Bearer auth:

```json
{
  "mcpServers": {
    "api": {
      "url": "https://example.com/mcp",
      "auth": "bearer",
      "bearerTokenEnv": "EXAMPLE_MCP_TOKEN"
    }
  }
}
```

Browser OAuth with pre-registered callback:

```json
{
  "mcpServers": {
    "service": {
      "url": "https://example.com/mcp",
      "auth": "oauth",
      "oauth": {
        "clientId": "client-id",
        "redirectUri": "http://localhost:3118/callback",
        "scope": "read write"
      }
    }
  }
}
```

Dynamic clients usually omit `oauth.redirectUri`. Use `/mcp-auth <server>` or `/mcp` to authenticate. If `settings.autoAuth` is true, connect/tool calls can run OAuth and retry once.

## Example with env interpolation

```json
{
  "mcpServers": {
    "repo-api": {
      "command": "npx",
      "args": ["-y", "repo-api-mcp"],
      "cwd": "${PROJECT_ROOT}",
      "env": { "API_TOKEN": "${REPO_API_TOKEN}" },
      "headers": { "X-Team": "$env:TEAM_NAME" }
    }
  }
}
```
