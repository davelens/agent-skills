---
url: https://modernuo.com/docs/getting-started/starting
title: Starting the Server | ModernUO
words: 1491
---
- [](/)
- Get Started
- Starting the Server

On this page

# Starting the Server

Now that the server has been built, everything is run from the **Distribution** folder.

- Windows
- macOS
- Linux

Using *Windows Terminal*, *Git Bash*, or *PowerShell*, run:

```bash
cd Distribution
ModernUO.exe
```

Using *terminal*, run:

```bash
cd Distribution
dotnet ModernUO.dll
```

Using *terminal*, run:

```bash
cd Distribution
dotnet ModernUO.dll
```

## First Launch[​](#first-launch "Direct link to First Launch")

When you start ModernUO for the very first time, there is no `Configuration/modernuo.json` file yet. The server will walk you through an interactive setup to create one.

### Step 1: Game Data Directory[​](#step-1-game-data-directory "Direct link to Step 1: Game Data Directory")

The server prompts you for the absolute path to your Ultima Online game files (or ClassicUO installation directory):

```text
Please enter the absolute path to your ClassicUO or Ultima Online data:
 > C:\Program Files\Ultima Online
Added C:\Program Files\Ultima Online.
[enter to finish]>
```

You can enter multiple directories if your files are split across locations. Press **Enter** on a blank line to finish.

### Step 2: Listener Address[​](#step-2-listener-address "Direct link to Step 2: Listener Address")

Next, the server asks which IP address and port to listen on:

```text
Please enter the IP and ports to listen:
 - Only enter IP addresses directly bound to this machine
 - To listen to all IP addresses enter 0.0.0.0
[0.0.0.0:2593]>
Added 0.0.0.0:2593.
```

Press **Enter** to accept the default (`0.0.0.0:2593`), which listens on all network interfaces on port 2593. This is the correct choice for most setups.

### Step 3: Server Name[​](#step-3-server-name "Direct link to Step 3: Server Name")

The server asks for your shard name, which is displayed in the server list:

```text
Please enter the name of your shard:
[ModernUO]> My Shard
Server name set to My Shard.
```

Press **Enter** to accept the default name "ModernUO".

### Step 4: Expansion and Maps[​](#step-4-expansion-and-maps "Direct link to Step 4: Expansion and Maps")

Finally, the server prompts you to select the target expansion (e.g., T2A, UOR, AOS, ML, SA, etc.) and which maps to enable. Your selection is saved to `Configuration/expansion.json`.

### Step 5: Owner Account[​](#step-5-owner-account "Direct link to Step 5: Owner Account")

If the server has no accounts (first launch), it offers to create the owner account:

```text
[20:04:28 WRN] This server has no accounts.
[20:04:28 INF] Do you want to create the owner account now? (y/n):
y
[20:04:30 INF] Input Username:
admin
[20:04:32 INF] Input Password:
mypassword
[20:04:34 INF] Owner account created: admin
```

This account has full administrative access (`AccessLevel.Owner`) and is automatically added to the protected accounts list, meaning it cannot be banned or deleted through in-game commands. If you skip this step, you can create accounts later by connecting with auto-account creation enabled (the default).

### Configuration Saved[​](#configuration-saved "Direct link to Configuration Saved")

After answering these prompts, the server writes its configuration files:

- `Configuration/modernuo.json` -- main server settings
- `Configuration/expansion.json` -- expansion and map selection
- `Configuration/server-access.json` -- protected accounts

On every subsequent launch, the server reads these files and **skips the prompts entirely**. To re-run setup, delete these files and restart.

## Expected Console Output[​](#expected-console-output "Direct link to Expected Console Output")

A successful startup looks like this (abbreviated):

```text
ModernUO - [https://github.com/modernuo/modernuo] Version 0.15.6.6
Copyright 2019-2026 ModernUO Development Team

[20:04:29 INF] Reading server configuration from Configuration/modernuo.json...
[20:04:29 INF] Running on .NET 10.0.5
[20:04:32 INF] Loading Map Definitions
[20:04:32 INF] Loading map definitions done (7 maps, 0 failures)
[20:04:33 INF] Protected accounts registered: admin
[20:04:33 INF] Automatically detected client version 7.0.103.0
[20:04:33 INF] Encryption support enabled: Both
[20:04:35 INF] Loading regions done (385 regions)
[20:04:38 INF] Loading world done (230276 items, 43358 mobiles) (2.63 seconds)
[20:04:38 INF] Auto-detected public IP address (47.154.82.160)
[20:04:39 INF] Feature Flag system initialized with 10 flags
[20:04:39 INF] Listening: 192.168.1.100:2593
[20:04:39 INF] Listening: 127.0.0.1:2593
[20:04:39 INF] Listening: 192.168.1.100:12000 (Pings)
[20:04:39 INF] Listening: 127.0.0.1:12000 (Pings)
```

Once you see the **`Listening:`** lines, the server is running and ready to accept connections. Port `2593` is the game port; port `12000` is for ping/status queries.

## Game Files[​](#game-files "Direct link to Game Files")

note

Ultima Online game files are required to run the server. These include map data, art, and other client assets that the server uses for world simulation.

tip

Game files are not distributed with ModernUO. Download the latest client from the [UO client download page](https://uo.com/Client-Download/). After installing, point ModernUO to the directory containing the `.mul` and `.uop` files.

If you already have a ClassicUO installation, ModernUO can automatically detect the game files directory from ClassicUO's `settings.json`. You can also point the server directly at the ClassicUO data folder.

## Connecting to the Server[​](#connecting-to-the-server "Direct link to Connecting to the Server")

### Using ClassicUO[​](#using-classicuo "Direct link to Using ClassicUO")

1. Open ClassicUO and go to the server configuration screen.
2. Set the **Server IP** to the address of the machine running ModernUO.
3. Set the **Server Port** to `2593` (or whichever port you configured).
4. Enter any username and password. If auto-account creation is enabled (the default), a new account is created on first login.

### Local Testing[​](#local-testing "Direct link to Local Testing")

For testing on the same machine that runs the server, use `127.0.0.1` as the server address with port `2593`.

### Connecting from Another Machine[​](#connecting-from-another-machine "Direct link to Connecting from Another Machine")

If connecting from a different machine on your local network, use the server machine's LAN IP address (e.g., `192.168.1.100`). For connections over the internet, you need to forward port `2593` (TCP) on your router to the server machine.

## Basic Troubleshooting[​](#basic-troubleshooting "Direct link to Basic Troubleshooting")

### Port Already in Use[​](#port-already-in-use "Direct link to Port Already in Use")

```text
Error: Address already in use
```

Another process is using port 2593. Either stop the conflicting process or change the listener port in `Configuration/modernuo.json`:

```json
"listeners": ["0.0.0.0:2594"]
```

- Windows
- macOS
- Linux

Find what is using the port:

```bash
netstat -ano | findstr :2593
```

Find what is using the port:

```bash
lsof -i :2593
```

Find what is using the port:

```bash
ss -tlnp | grep 2593
```

### Missing Game Files or Wrong Data Directory[​](#missing-game-files-or-wrong-data-directory "Direct link to Missing Game Files or Wrong Data Directory")

If the server cannot find required `.mul` or `.uop` files, it will fail during world loading. Verify that:

1. The path in `Configuration/modernuo.json` under `"dataDirectories"` points to the correct location.
2. The directory contains files like `map0.mul`, `statics0.mul`, `tiledata.mul`, or their `.uop` equivalents.
3. The UO client has been fully installed (not just the launcher).

To fix the path, either edit `Configuration/modernuo.json` directly or delete it and re-run the server to go through the setup prompts again.

### .NET SDK Not Found[​](#net-sdk-not-found "Direct link to .NET SDK Not Found")

- Windows
- macOS
- Linux

If you see errors about the .NET runtime or SDK not being found, run the build tool in interactive mode. It will detect and offer to install the correct .NET SDK:

```bash
./publish.cmd
```

If you see errors about the .NET runtime or SDK not being found, run the build tool in interactive mode. It will detect and offer to install the correct .NET SDK:

```bash
./publish.sh
```

If you see errors about the .NET runtime or SDK not being found, run the build tool in interactive mode. It will detect and offer to install the correct .NET SDK:

```bash
./publish.sh
```

tip

The interactive build tool is the easiest way to resolve SDK issues. It checks your environment and offers to install missing dependencies automatically.

### Permission Denied on Linux[​](#permission-denied-on-linux "Direct link to Permission Denied on Linux")

Do not run ModernUO as the `root` user. Create a dedicated user account for the server:

```bash
sudo useradd -m modernuo
sudo su - modernuo
```

If you need to bind to a port below 1024 (not typical for UO), grant the binary the capability instead of running as root:

```bash
sudo setcap 'cap_net_bind_service=+ep' /path/to/Distribution/dotnet
```

### Server Starts but Clients Cannot Connect[​](#server-starts-but-clients-cannot-connect "Direct link to Server Starts but Clients Cannot Connect")

- Make sure you are connecting to the correct IP address and port.
- Check that no firewall is blocking port 2593 (TCP).
- If connecting over the internet, verify that port forwarding is configured on your router.
- On Linux, check `iptables` or `ufw` rules allow inbound traffic on port 2593.

[Edit this page](https://github.com/modernuo/ModernUO/tree/main/website/content/getting-started/starting.mdx)

[Previous
\
Creating a Build](/docs/getting-started/building)

[Next
\
Configuration](/docs/getting-started/configuration)

- [First Launch](#first-launch)

  - [Step 1: Game Data Directory](#step-1-game-data-directory)
  - [Step 2: Listener Address](#step-2-listener-address)
  - [Step 3: Server Name](#step-3-server-name)
  - [Step 4: Expansion and Maps](#step-4-expansion-and-maps)
  - [Step 5: Owner Account](#step-5-owner-account)
  - [Configuration Saved](#configuration-saved)
- [Expected Console Output](#expected-console-output)
- [Game Files](#game-files)
- [Connecting to the Server](#connecting-to-the-server)

  - [Using ClassicUO](#using-classicuo)
  - [Local Testing](#local-testing)
  - [Connecting from Another Machine](#connecting-from-another-machine)
- [Basic Troubleshooting](#basic-troubleshooting)

  - [Port Already in Use](#port-already-in-use)
  - [Missing Game Files or Wrong Data Directory](#missing-game-files-or-wrong-data-directory)
  - [.NET SDK Not Found](#net-sdk-not-found)
  - [Permission Denied on Linux](#permission-denied-on-linux)
  - [Server Starts but Clients Cannot Connect](#server-starts-but-clients-cannot-connect)
