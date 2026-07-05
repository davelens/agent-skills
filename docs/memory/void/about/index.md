---
url: https://docs.voidlinux.org/about/index.html
title: About - The Void Linux Handbook
words: 247
---
About

Welcome to the Void Handbook! Please be sure to read the "About This Handbook" section to learn how to use this documentation effectively. A local copy of this handbook, in several formats, can be installed via the void-docs package and accessed with the void-docs(1) utility.

Void is an independent, rolling release Linux distribution, developed from scratch rather than as a fork, with a focus on stability over bleeding-edge. In addition, there are several features that make Void unique:

- The XBPS package manager, which is extremely fast, developed in-house, and performs checks when installing updates to ensure that libraries are not changed to incompatible versions which can break dependencies.
- The musl libc, which focuses on standards compliance and correctness, has first class support. This allows us to build certain components for musl systems statically, which would not be practical on glibc systems.
- runit is used for init(8) and service supervision. This allows Void to support musl as a second libc choice, which would not be possible with systemd. A side effect of this decision is a core system with clean and efficient operation, and a small code base.

Void is developed in the spare time of a handful of developers, and is generally considered stable enough for daily use. We do this for fun and hope that our work will be useful to others.

The name "Void" comes from the C literal void. It was chosen rather randomly, and is void of any meaning.
