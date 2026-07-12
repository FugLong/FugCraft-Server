# FugCraft Client Resources

**Target Client Version:** Fabric 26.1.2

## What is FugCraft?

**Vanilla++ multiplayer** — giga vanilla, not a kitchen-sink modpack. FugCraft keeps the Minecraft you know and layers on performance, distance, exploration, and multiplayer essentials.

**What to expect:**

| | |
|---|---|
| 🌍 **See forever** | **Sodium** + **Voxy** — smooth rendering and massive LOD render distance (512 chunks by default) |
| 🗺️ **Explore more** | Biomes O' Plenty, Dungeons and Taverns overhauls, Moogs structure packs, Towns and Towers, Underground Worlds, real-world synced seasons |
| 🤝 **Play together** | Proximity voice chat, map-based land claims, player shops, death graves, parties |
| 🍳 **Live off the land** | Farmer's Delight cooking and farming with addon content |
| ✨ **Feel the world** | **Iris** + **Complementary Unbound** shaders by default, sound physics, footsteps, dynamic lighting, and curated resource packs |

Still vanilla at heart — just faster, farther, and richer.

## 🔗 Quick Links

<div align="center">

[![Traveler's Backpack Wiki](https://img.shields.io/badge/🎒%20Traveler's%20Backpack%20Wiki-Learn%20More-blue?style=for-the-badge)](https://github.com/Tiviacz1337/Travelers-Backpack/wiki) 
[![Universal Shops Wiki](https://img.shields.io/badge/🏪%20Universal%20Shops%20Wiki-Learn%20More-green?style=for-the-badge)](https://github.com/Patbox/UniversalShops/blob/main/README.md)

</div>

## 📥 Get FugCraft Modpack

The **easiest way** to get all FugCraft mods, shaders, and resource packs is through the official Modrinth modpack:

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

> **✨ Why Modrinth?** Automatic updates, shaders and resource packs pre-configured, plus one-click installation.
>
> **Default Options** ships sensible first-launch settings for new players without overwriting your options on pack updates. **Resource Pack Overrides** makes resource packs easier to manage and fix if something looks off.

## ⚙️ **Graphics Settings & Optimization**

FugCraft's default look is **Sodium** + **Voxy** + **Iris** with **Complementary Unbound** shaders enabled. Distant terrain comes from Voxy; lighting, water, and atmosphere come from Complementary.

Current baseline defaults:
- **Voxy LOD stream radius:** `512`
- **Normal render distance:** `12`
- **Shaders:** Complementary Unbound (via Iris)
- **Simulation distance:** tuned for stability first (raise only on stronger systems)

You can adjust these based on your system:

### 🎨 **For Better Visuals**
- **Raise the Complementary quality preset** — Video Settings → Iris → Shader Settings → increase the preset
- **Increase Voxy LOD distance / quality** in Voxy settings (Video Options or Mod Menu)
  - Go higher if your system can handle it
- **Increase normal render distance** in Video Settings for sharper nearby terrain
- **If you have a beast PC, increase simulation distance**
  - Raise gradually and test FPS + server tick impact

### ⚡ **For Better Performance**
- **Increase Voxy subdivision size (pixels²)** — coarser LODs, less GPU work
- **Decrease Voxy render distance / LOD stream radius** — try `256` or lower if `512` is heavy
- **Lower the Complementary quality preset** — Video Settings → Iris → Shader Settings → pick a lower preset
- **Turn shaders off entirely** if you still need more FPS (same Iris menu)
- **Lower normal render distance** in Video Settings
- **Lower simulation distance** in Video Settings
- **Tune Sodium Extra** options if you need more headroom

> **💡 Tip:** Voxy generates LOD chunks gradually — be patient on first load. Subdivision size and shader preset are usually the biggest FPS levers after render distance. Experiment until it feels right!

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
- **Rendering stack:** Sodium + Sodium Extra + Voxy + Iris + Complementary Unbound
- **Client setup QoL:** Default Options (safe first-launch defaults) and Resource Pack Overrides (easier pack management)
- **World generation:** Biomes O' Plenty, Dungeons and Taverns (+ structure overhauls), Moogs structure packs, Towns and Towers, Underground Worlds
- **Seasons:** Serene Seasons synced to real-world calendar (BetterDays, Real Serene Seasons)
- **Food & farming:** Farmer's Delight with addon content (More Delight, Rustic Delight, Crate Delight, Display Delight)
- **Gameplay baseline:** Open Parties and Claims, Traveler's Backpack, Universal Shops, Universal Graves, Friends&Foes, Veinminer
- **Immersion:** Sound Physics, Presence Footsteps, Atmosfera, plus visual polish mods and bundled resource packs
- **Utility/QoL:** REI, Jade, JourneyMap, Inventory Sorter, Essential Commands, Voice Chat
- **Server links:** Check the pause menu **Server Links...** button for repo, modpack, and wiki links

</details>
