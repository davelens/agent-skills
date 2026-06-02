---
name: pi-mcp-adapter-config
description: Configure MCP servers for Pi agent using the already-installed pi-mcp-adapter extension. Use when the user asks to add, configure, debug, or explain project MCP servers for Pi, mentions .mcp.json, .pi/mcp.json, /mcp, directTools, MCP OAuth, or wants Pi to use a project's own MCP server.
---

# Pi MCP Adapter Config

`pi-mcp-adapter` already installed. Skip research unless debugging adapter bug.

## Process

1. Default to `.mcp.json` in project root (shared with other MCP hosts). Use `.pi/mcp.json` only for Pi-specific overrides (e.g. `directTools`).
2. Transport: stdio → `command` + `args`; HTTP → `url` (Streamable HTTP, SSE fallback).
3. Auth: prefer env-var references over literal secrets.
4. After config/env changes: tell user to run `/reload` or `/mcp reconnect <server>`.

## Examples

stdio:

```json
{ "mcpServers": { "my-server": { "command": "node", "args": ["./dist/mcp-server.js"] } } }
```

HTTP + bearer (env-var name form):

```json
{
  "mcpServers": {
    "my-server": {
      "url": "http://localhost:3000/mcp",
      "auth": "bearer",
      "bearerTokenEnv": "MY_SERVER_MCP_TOKEN"
    }
  }
}
```

Header form with `${VAR}` interpolation (use when token sits inside a larger string):

```json
"headers": { "Authorization": "Bearer ${MY_SERVER_MCP_TOKEN}" }
```

## Bearer-token checklist

1. Mint token from server's auth model; store in dedicated env var (e.g. `MY_SERVER_MCP_TOKEN`).
2. If using `.env`: ensure gitignored, never committed. Verify file contains exactly `KEY=value` (suppress CLI debug logs that pollute it).
3. `.env` does NOT auto-export to Pi process. `${VAR}` reads Pi's process env at connect time. Check without printing: `printenv MY_SERVER_MCP_TOKEN >/dev/null && echo present`.
4. If missing: stop, ask user to export it in Pi's environment, then reconnect.

## `${VAR}` interpolation

Works in `env`, `cwd`, `headers`, `bearerToken`. Forms: `${VAR}`, `$env:VAR`. `cwd` also expands `~`. Use `bearerTokenEnv` for plain env-var name; use `${VAR}` for embedded strings.

## Rules

- Shared MCP files preferred so other hosts reuse setup.
- Project files override user-global. Full precedence in [REFERENCE.md](REFERENCE.md).
- Servers lazy by default. Set `lifecycle` only for `eager` / `keep-alive`.
- Default: one compact `mcp` proxy tool. Keep for large servers.
- `directTools` only when select MCP tools must appear as first-class Pi tools (costs prompt tokens each).

## Slash commands

`/mcp`, `/mcp setup`, `/mcp tools`, `/mcp reconnect [server]`, `/mcp logout <server>`, `/mcp-auth [server]`.

## More

[REFERENCE.md](REFERENCE.md): full field list, precedence, direct tools, lifecycle, imports, OAuth, env-interpolation example.
