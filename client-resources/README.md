# FugCraft Client Resources

**Target Client Version:** Fabric 26.1.2

## What is FugCraft?

**Vanilla++ multiplayer** — giga vanilla, not a kitchen-sink modpack. FugCraft keeps the Minecraft you know and layers on performance, distance, exploration, and multiplayer essentials.

**What to expect:**

| | |
|---|---|
| 🌍 **See forever** | VulkanMod + Distant Horizons — massive render distance without shader packs |
| 🗺️ **Explore more** | Biomes O' Plenty, Dungeons and Taverns overhauls, Moogs structure packs, Towns and Towers, Underground Worlds, real-world synced seasons |
| 🤝 **Play together** | Proximity voice chat, map-based land claims, player shops, death graves, parties |
| 🍳 **Live off the land** | Farmer's Delight cooking and farming with addon content |
| ✨ **Feel the world** | Sound physics, footsteps, dynamic lighting, Ashen 16x + Hyper Realistic Sky resource packs |

Still vanilla at heart — just faster, farther, and richer.

## 🔗 Quick Links

<div align="center">

[![Traveler's Backpack Wiki](https://img.shields.io/badge/🎒%20Traveler's%20Backpack%20Wiki-Learn%20More-blue?style=for-the-badge)](https://github.com/Tiviacz1337/Travelers-Backpack/wiki) 
[![Universal Shops Wiki](https://img.shields.io/badge/🏪%20Universal%20Shops%20Wiki-Learn%20More-green?style=for-the-badge)](https://github.com/Patbox/UniversalShops/blob/main/README.md)

</div>

## 📥 Get FugCraft Modpack

The **easiest way** to get all FugCraft mods and resource packs is through the official Modrinth modpack:

🔗 **[Download FugCraft Modpack on Modrinth](https://modrinth.com/modpack/fugcraft)**

#### Installation Options:

**Option 1: In-Launcher Search** (Easiest)
- Open your Modrinth-compatible launcher ([Prism Launcher](https://prismlauncher.org/), [ATLauncher](https://atlauncher.com/), [Modrinth App](https://modrinth.com/app), etc.)
- Search for **"FugCraft"** in the modpack browser
- Click install and launch!

**Option 2: Direct Download**
- Download the modpack from the Modrinth link above
- Import the `.mrpack` file into your launcher
- Launch and play!

> **✨ Why Modrinth?** Automatic updates, all mods and resource packs pre-configured, plus one-click installation.

## ⚙️ **Graphics Settings & Optimization**

FugCraft is built around **performance and render distance** — making Minecraft as fast and beautiful as possible without leaning on shader packs.

Current baseline defaults:
- **Distant Horizons render distance:** `256`
- **Normal render distance:** `12`
- **Simulation distance:** tuned for stability first (raise only on stronger systems)

You can adjust these based on your system:

### 🎨 **For Better Visuals**
- **Increase Distant Horizons render distance** (default is 256)
  - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
  - Go higher if your system can handle it
- **Increase Distant Horizons quality preset**
  - In DH settings, raise quality for cleaner distant terrain
- **If you have a beast PC, increase simulation distance**
  - Raise gradually and test FPS + server tick impact

> **On shaders:** This pack does not include or recommend shader mods. We think shaders are often overrated — they can tank FPS and clash with Distant Horizons. Our goal is great visuals through render distance, resource packs, and polish mods instead. A Vulkan-compatible shader option *might* be worth revisiting someday, but it's not a requirement for a beautiful game.

### ⚡ **For Better Performance:**
- **Turn down Distant Horizons quality preset**
  - This is often the fastest way to recover FPS
- **Decrease Distant Horizons render distance** (default is 256)
  - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
  - Lower this before touching lots of other settings
- **Turn Distant Horizons off entirely** if needed
- **Lower normal render distance** in Video Settings
- **Lower simulation distance** in Video Settings

> **💡 Tip:** Experiment with these settings to find your perfect balance between visuals and performance!

## ⌨️ **Essential Keybinds**

> **Note:** These are default keybinds and can be rebound in the game's controls settings.

These keybinds are essential for getting the most out of your FugCraft experience:

- **`J`** - Open full map
- **`M`** - Toggle minimap
- **`B`** - Add waypoint
- **`N`** - Manage waypoints
- **`G`** - Toggle fullbright
- **`'`** (apostrophe) - Open claims settings
- **On full map (`J`): hold `U` + drag** - Claim an area
- **On full map (`J`): hold `I` + drag** - Unclaim an area
- **`V`** - Voice chat settings
- **`R`** - Push to talk (voice chat)

> **💡 Pro Tip:** Right-click an anvil while holding iron ingots to repair it automatically!

> **🔗 Server Links:** Open the pause menu and click **Server Links...** for quick access to the repo, client guide, modpack, and wiki.

## 🎮 Basic Commands

Here are the essential commands you'll use most often:

| Command | Description |
|---------|-------------|
| `/book` | Get the in-game FugCraft guide book |
| `/home set <name>` | Set a personal home location |
| `/home tp <name>` | Teleport to your home |
| `/tpa <player>` | Request to teleport to a player |
| `/tpaccept` | Accept someone's teleport request |
| `/warp tp <name>` | Teleport to a server warp |
| `/spawn` | Teleport to server spawn |
| `/rtp` | Teleport to a random location far from spawn |
| `/openpac-claims` | Everything claim-related |
| `/openpac-parties` | Everything party-related |
| `/htm <command>` | Manage chest protections and other Hey That's Mine! features |

> **📚 Full Command List:** See all available commands at the [Essential Commands Wiki](https://github.com/John-Paul-R/Essential-Commands/wiki/List-of-Commands-&-Permissions)
> **🎒 Traveler's Backpack:** Learn how to use all backpack features at the [Traveler's Backpack Wiki](https://github.com/Tiviacz1337/Travelers-Backpack/wiki)
> **🏪 Universal Shops:** Learn how to create and use player shops at the [Universal Shops Wiki](https://github.com/Patbox/UniversalShops/blob/main/README.md)

---

## 📋 Full Mod List

<details>
<summary><strong>Click to expand complete mod list</strong></summary>

The canonical client mod list is maintained in:

- **`client-resources/FugCraft-mod-list.json`**

That JSON file is the source of truth for Modrinth/client packaging and is updated before markdown docs when the pack changes.

### Highlights of the current direction
- **Performance-first rendering stack:** VulkanMod + Distant Horizons
- **World generation:** Biomes O' Plenty, Dungeons and Taverns (+ structure overhauls), Moogs structure packs, Towns and Towers, Underground Worlds
- **Seasons:** Serene Seasons synced to real-world calendar (BetterDays, Real Serene Seasons)
- **Food & farming:** Farmer's Delight with addon content (More Delight, Rustic Delight, Crate Delight, Display Delight)
- **Gameplay baseline:** Open Parties and Claims, Traveler's Backpack, Universal Shops, Universal Graves, Friends&Foes, Veinminer
- **Immersion:** Sound Physics, Presence Footsteps, Atmosfera, plus visual polish mods and bundled resource packs
- **Utility/QoL:** REI, Jade, JourneyMap, Inventory Sorter, Essential Commands, Voice Chat
- **Server links:** Check the pause menu **Server Links...** button for repo, modpack, and wiki links

</details>
