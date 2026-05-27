---
name: ketch
description: Use `ketch` CLI for web search, page scraping to markdown, site crawling, code search, and library docs lookup. Prefer over WebSearch/WebFetch tools. Use when user asks to search web, scrape URL, crawl site, find code examples, or look up library docs.
---

# ketch

Fast CLI for agentic search/scrape. Prefer over built-in `WebSearch`/`WebFetch`.

## Commands

| Command | Purpose |
|---------|---------|
| `ketch search <query>` | Web search (Brave default; `-b ddg|searxng`) |
| `ketch scrape <url...>` | Fetch URL(s) → clean markdown |
| `ketch crawl <url>` | BFS crawl site from seed |
| `ketch code <query>` | Code search (Sourcegraph/GitHub) |
| `ketch docs <query>` | Library docs (Context7/local FTS5) |
| `ketch cache` | Cache stats; `cache clear` to purge |

Global: `--json` for structured output.

## Common flags

- `search`: `-l N` limit, `--scrape` fetch full content, `--minimal` tab-separated, `--trim` strip markdown
- `scrape`: multi-arg / file / stdin / JSON array auto-detected. `--select CSS`, `--raw`, `--max-chars N`, `--no-cache`
- `crawl`: `--depth N` (default 3), `--allow`/`--deny` filters, `--sitemap`, `--background` (then `crawl status`/`stop`)
- `code`: `--lang go`, `-b github`
- `docs`: `--resolve` to find library ID, `--library <id>` to skip resolve, `--tokens N`

## Patterns

Search + read top hits:
```bash
ketch search "phoenix liveview streams" --scrape -l 3
```

Scrape several pages piped:
```bash
echo -e "url1\nurl2" | ketch scrape --trim
```

Targeted extraction:
```bash
ketch scrape https://example.com --select "main article"
```

Crawl docs subtree:
```bash
ketch crawl https://hexdocs.pm/phoenix --allow /Phoenix.LiveView --depth 2
```

Resolve library then fetch docs:
```bash
ketch docs phoenix --resolve
ketch docs "streams" --library /phoenixframework/phoenix --tokens 8000
```

## Notes

- Use `--minimal` or `--json` when piping into other tools.
- Use `--max-chars` to bound output for long pages.
- `browser` subcommand manages headless browser for JS-rendered pages.
