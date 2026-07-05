---
name: docs-void
description: Look up and apply Void Linux setup — installation, XBPS package management, runit services, network/graphics/audio configuration, and musl vs glibc differences — from a local offline mirror of the official Void Linux Handbook. Use when installing, configuring, or troubleshooting a Void system, when the user says "on Void, how do I X", or when a Void command, service name, or config path needs to be looked up or verified.
---

# Void Linux Handbook

Configure and troubleshoot Void Linux against a **local offline mirror** of the
official handbook (`docs.voidlinux.org`). Void is an independent, rolling-release
distribution that uses **runit** (not systemd) for service supervision and
**XBPS** for packaging, and ships in **glibc** and **musl** variants. Always
ground commands, service names, and config paths in the mirror — Void diverges
from mainstream distros, so do not guess from systemd/apt/pacman habits.

## Mirror location

The mirror lives in **one** canonical place and is read from there **regardless
of which project you are working in** — projects never keep their own copy. Do
not hardcode its path; the helper script owns the location and resolves it
through its own symlinks, so it stays correct even if the repo moves.

The script is in **this skill's own `bin/` directory** — resolve
`bin/sync-void-docs` against this skill's location (shown in the skill header),
e.g. `"$SKILL_DIR/bin/sync-void-docs"`.

1. **Locate the mirror** (no network):
   ```
   MIRROR="$("$SKILL_DIR/bin/sync-void-docs" --path)"
   ```
   Prints the mirror dir (`.../docs/memory/void`), or exits non-zero if nothing
   is mirrored yet.
2. **If that failed** (docs absent) **or you want a refresh**, run it with no
   args to sync — it discovers the current page list and section hierarchy live
   from the handbook's sidebar table of contents, scrapes each page into the
   canonical repo, and regenerates `INDEX.md` (idempotent; skips pages already
   present). Use `--force` to re-scrape everything. Then re-run `--path` to get
   `$MIRROR`.

One markdown file per handbook page, mirroring the site's directory tree
(`config/network/iwd.md`, `xbps/repositories/mirrors/changing.md`). Each file
keeps the source `url`/`title` in frontmatter.

**Start here:** read `$MIRROR/INDEX.md` — a navigation index reproducing the
handbook's full numbered table of contents, each page with its one-line
purpose. Use it to route a request to the one file to read, instead of guessing
a path. All file paths below are relative to `$MIRROR`.

## Workflow

1. **Map the request to a page**, then read that one file.
   - "install a package / update the system" → `xbps/index.md`, `xbps/advanced-usage.md`
   - "enable / start a service" → `config/services/index.md` (runit `sv`, `/var/service`)
   - "per-user services" → `config/services/user-services.md`
   - "add a repo / nonfree / change mirror" → `xbps/repositories/*.md`
   - "network: NetworkManager / iwd / wpa_supplicant" → `config/network/*.md`
   - "graphics drivers: AMD / Intel / NVIDIA" → `config/graphical-session/graphics-drivers/*.md`
   - "Wayland / Xorg / fonts / portals" → `config/graphical-session/*.md`
   - "audio: PipeWire / ALSA / PulseAudio" → `config/media/*.md`
   - "installation (live / chroot / FDE / ZFS / ARM)" → `installation/**`
   - "glibc vs musl" → `installation/musl.md`
   - "locales, users, cron, kernel, power, bluetooth" → the matching `config/*.md`
2. **Copy the real command** from the page. Match exact package names, service
   directory paths, `xbps-*` invocations, config file locations, and code
   blocks — Void's tooling (`xbps-install`, `sv`, `vsv`, `/etc/rc.conf`) is
   distinct.
3. **Verify** anything uncertain against the file before answering — never
   invent a package name, an `xbps-*` flag, or a service name. If a page is
   missing from the mirror, re-sync; the handbook is a rolling document and may
   have added it.

## Notes

- Void uses runit: services are directories under `/etc/sv/`, enabled by
  symlinking into `/var/service/`, and controlled with `sv up|down|status`.
  There is no `systemctl`. See `config/services/index.md`.
- Packages are managed with XBPS: `xbps-install`, `xbps-remove`,
  `xbps-query`, `xbps-pkgdb`, `xbps-reconfigure`. There is no `apt`/`pacman`.
- The **nonfree** and **multilib** repositories are separate packages
  (`void-repo-nonfree`, `void-repo-multilib`) — see `xbps/repositories/index.md`.
- musl builds lack glibc-only features (e.g. glibc locales, some proprietary
  binaries); check `installation/musl.md` before assuming compatibility.
- A page not in the mirror, or to confirm against the live site: fall back to
  `ketch scrape https://docs.voidlinux.org/<path>.html --select main --trim`.
- The page list and hierarchy are discovered from the sidebar TOC on each sync,
  so a plain re-run picks up newly added pages; no need to edit the script.
