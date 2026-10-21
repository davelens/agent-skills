---
url: https://modernuo.com/docs/getting-started/installation
title: Installation | ModernUO
words: 250
---
- [](/)
- Get Started
- Installation

# Installation

- Windows
- macOS
- Linux

### Prerequisites

1. Download and install the latest [.NET 10 SDK](https://dotnet.microsoft.com/download/dotnet/10.0)
2. Download and install [Git for Windows](https://git-scm.com/download/win)
3. Install [Visual C++ Redistributable](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist) (v14 or later)

tip

Use [Windows Terminal](https://learn.microsoft.com/en-us/windows/terminal/install) as your command prompt.

**Recommended IDEs:** [Visual Studio 2026+](https://visualstudio.microsoft.com/), [JetBrains Rider 2025.3+](https://www.jetbrains.com/rider/), or [VS Code](https://code.visualstudio.com/)

### Install ModernUO

1. Navigate to the folder where you want to install ModernUO.
2. Using *Windows Terminal*, run:

```bash
git clone https://github.com/modernuo/modernuo
cd modernuo
```

### Prerequisites

1. Download and install the latest [.NET 10 SDK](https://dotnet.microsoft.com/download/dotnet/10.0)
2. Using *terminal*, install [Homebrew](https://brew.sh) and dependencies:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git icu4c libdeflate argon2
```

**Recommended IDEs:** [JetBrains Rider 2025.3+](https://www.jetbrains.com/rider/) or [VS Code](https://code.visualstudio.com/)

### Install ModernUO

1. Using *terminal*, navigate to the folder where you want to install ModernUO and run:

```bash
git clone https://github.com/modernuo/modernuo
cd modernuo
```

### Prerequisites

1. Download and install the latest [.NET 10 SDK](https://docs.microsoft.com/en-us/dotnet/core/install/linux)
2. Using *bash*, install git and dependencies:

**Debian / Ubuntu:**

```bash
sudo apt update && sudo apt install git libicu-dev libdeflate-dev libargon2-dev
```

**Fedora:**

```bash
sudo dnf install git libicu libdeflate-devel libargon2-devel
```

note

The exact package names may vary by distribution. Consult your distribution's package manager documentation.

**Recommended IDEs:** [JetBrains Rider 2025.3+](https://www.jetbrains.com/rider/) or [VS Code](https://code.visualstudio.com/)

### Install ModernUO

1. Using *bash*, navigate to the folder where you want to install ModernUO and run:

```bash
git clone https://github.com/modernuo/modernuo
cd modernuo
```

[Edit this page](https://github.com/modernuo/ModernUO/tree/main/website/content/getting-started/installation.mdx)

[Next
\
Creating a Build](/docs/getting-started/building)
