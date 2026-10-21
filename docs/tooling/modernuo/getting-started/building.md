---
url: https://modernuo.com/docs/getting-started/building
title: Creating a Build | ModernUO
words: 315
---
- [](/)
- Get Started
- Creating a Build

On this page

# Creating a Build

ModernUO includes a build tool that handles prerequisite checks, platform detection, and compilation. Run it through the publish script for your platform.

## Interactive Mode *(recommended)*[​](#interactive-mode-recommended "Direct link to interactive-mode-recommended")

Run the publish script with no arguments to launch the guided setup wizard. It will check your environment, detect your platform, and walk you through the build process.

- Windows
- macOS
- Linux

```bash
./publish.cmd
```

```bash
./publish.sh
```

```bash
./publish.sh
```

The interactive mode will:

- Verify your .NET SDK version and offer to install it if missing
- Check for required native libraries on your platform
- Let you choose between Debug and Release builds
- Select your target OS and architecture
- Run the full publish pipeline

tip

Interactive mode is the best way to get started. It catches missing dependencies before they become build errors.

## Command Line Mode[​](#command-line-mode "Direct link to Command Line Mode")

For scripting or CI environments, pass arguments directly to skip the wizard.

- Windows
- macOS
- Linux

```bash
./publish.cmd release win x64
```

```bash
./publish.sh release osx x64
```

```bash
./publish.sh release linux x64
```

The general format is:

```text
publish <release|debug> [os] [arch]
```

### Build Mode[​](#build-mode "Direct link to Build Mode")

|Value|Description|
|---|---|
|`release`|Optimized for production|
|`debug`|Includes debug symbols for development|

### Target OS *(optional)*[​](#target-os-optional "Direct link to target-os-optional")

Defaults to the current operating system if omitted.

|Value|Platform|
|---|---|
|`win`|Windows|
|`osx`|macOS|
|`linux`|Linux|

### Target Architecture *(optional)*[​](#target-architecture-optional "Direct link to target-architecture-optional")

Defaults to `x64` if omitted.

|Value|Architecture|
|---|---|
|`x64`|64-bit x86|
|`arm64`|ARM 64-bit|

tip

Cross-compilation is supported — you can build for any OS/architecture combination from any platform.

[Edit this page](https://github.com/modernuo/ModernUO/tree/main/website/content/getting-started/building.mdx)

[Previous
\
Installation](/docs/getting-started/installation)

[Next
\
Starting the Server](/docs/getting-started/starting)

- [Interactive Mode *(recommended)*](#interactive-mode-recommended)
- [Command Line Mode](#command-line-mode)

  - [Build Mode](#build-mode)
  - [Target OS *(optional)*](#target-os-optional)
  - [Target Architecture *(optional)*](#target-architecture-optional)
