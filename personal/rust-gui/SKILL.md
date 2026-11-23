---
name: rust-gui
description: Architecture guidance for Rust GUIs. Use when choosing a Rust UI toolkit, designing or building a Rust UI toolkit or app UI, or deciding on immediate vs retained mode, text layout, accessibility, compositor layers, mobile UI, or UI performance in Rust.
---

# rust-gui

Distilled from Raph Levien, [Advice for the next 100 Rust GUIs](https://linebender.org/blog/next-100-guis/) (2026-11-21). Toolkit landscape: [2026 survey](https://blog.wybxc.cc/blog/rust-gui-survey-2026/). Verify crate state before you recommend one; this ecosystem moves fast.

## Platform strategy

- **Desktop**: full Rust UI is practical (Zed ships on GPUI). GPUI suits editor-style apps; its renderer lacks full gradients, blending and filters, so design and productivity apps want a Vello/Skia-class renderer.
- **Mobile**: highest fidelity = platform toolkit (UIKit/SwiftUI, Android views) for UI, Rust for shared logic (Shopify, 1Password, Discord mobile). Cross-platform toolkits miss platform details: Liquid Glass, gesture recognition, scroll dynamics, IME parity. Pure-Rust mobile is possible but not at parity ([android-view](https://github.com/rust-mobile/android-view) has IME, CJK composition, AccessKit).
- **"Native"** has no clear meaning (Windows has no coherent native toolkit; SwiftUI has performance problems). Judge toolkits on quality criteria, not on the label.

## Immediate vs retained mode

- Immediate mode: less code, simple, good for game dev tools and debug UIs. It is good at the first 90% and makes the second 90% harder.
- Production immediate mode needs: stable widget identities (for the accessibility tree), reliable caches for expensive artifacts (text layouts), and a way to use compositor layers instead of a full re-render each frame. egui with accessibility on builds and diffs a tree each frame.
- For productivity and design apps, prefer retained mode. Before you pick egui, read its [README trade-offs](https://github.com/emilk/egui?tab=readme-ov-file#advantages-of-immediate-mode). Mainline Iced has no accessibility yet.

## Solved infrastructure: reuse it

- **Text layout**: [Parley](https://github.com/linebender/parley) (default choice), Cosmic Text (alternative). Do not write a text layout engine.
- **Accessibility**: AccessKit. Make a real integration, not a box-ticking one. Open gaps: accessible rich text editing, and performance loss when accessibility is on.

## Unsolved: system compositor

- Put video in a hardware-accelerated layer when possible; on low-end devices it is the only path to smooth frame rates.
- Start from [subduction](https://github.com/forest-rs/subduction). Target shape: a high-level CALayer-like interface with per-platform polyfills (Android: SurfaceFlinger layers for simple overlays, GPU shaders for complex compositing).
- Prefer contributing to one shared community project over a private fork.

## Module structure

- Cut the toolkit into clearly scoped modules, each with a spec and clear objectives (performance, robustness against adverse input). Agents do well inside such a module.
- Separate **design** (look, defaults, design knowledge) from **execution**. The core of a toolkit is an **incremental computation engine**.
- Put a good spec at the design/execution interface. Adapt web standards; do not copy them exactly:
  - Reuse the specs and the [WPT tests](https://web-platform-tests.org/) for correctness.
  - Replace DOM with a lighter tree that has a bulk mutation interface.
  - Use a curated, efficient CSS subset. Selectors can be an incremental state machine if you drop features such as sibling selectors ([experiment](https://github.com/linebender/xilem/pull/75)).
  - Virtualized lists are mandatory, and the web has no spec for them: define the data model interface and keep it incremental.
- [Blitz](https://blitz.is/about) is a modular browser engine for hybrid web-spec approaches (start with Stylo, replace it with a leaner CSS engine later if practical).
- Reference split: Xilem (reactive layer, independent of the elements it controls; targets DOM and Masonry) / [Masonry](https://github.com/linebender/xilem/tree/main/masonry) (widgets, independent of the reactive layer and its language). Counter-example: SwiftUI mixes widgets, reactivity and the language runtime.

## Performance

- Straightforward optimized Rust already beats most shipping GUIs. Target: smooth UI on low-end Android.
- Separate the static parts of a design from the dynamic parts and precompute the static parts.
- Layers prevent re-renders of unchanged parts, but cost RAM and system allocation calls; too many layers make it slower. Decide with measurement or analysis, or expose explicit hints (like SwiftUI `.drawingGroup()`, Flutter `RepaintBoundary`).
- Further reading: [A Critique of GPUI](https://blog.zortax.de/posts/a-critique-of-gpui).

## Working with upstream

Build on solid foundations, use well-defined specs, and work with upstream projects. Send upstream only small, reviewed, intentional PRs.
