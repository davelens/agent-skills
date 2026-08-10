---
url: https://docs.voidlinux.org/contributing/index.html
title: Contributing - The Void Linux Handbook
words: 188
---
Contributing

There's more to running a distribution than just writing code.

To contribute to the Void packages repository, start by reading the CONTRIBUTING document in the void-packages GitHub repository.

To contribute to this Handbook, read CONTRIBUTING in the void-docs repository.

If you have any questions, feel free to ask them via IRC in #voidlinux on irc.libera.chat, or in the voidlinux subreddit.

Usage Statistics

If you would like to contribute usage reports, the PopCorn program reports installation statistics back to the Void project. These statistics are purely opt-in - PopCorn is not installed or enabled by default on any Void systems.

PopCorn only reports which packages are installed, their version, and the host CPU architecture (the output of xuname). This does not report which services are enabled, or any other personal information. Individual systems are tracked persistently by a random (client-generated) UUID, to ensure that each system is only counted once in each 24-hour sampling period.

The data collected by PopCorn is available to view at http://popcorn.voidlinux.org

Setting up PopCorn

First, install the PopCorn package. Then, enable the popcorn service, which will attempt to report statistics once per day.
