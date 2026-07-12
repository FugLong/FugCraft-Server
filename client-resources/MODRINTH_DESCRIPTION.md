# FugCraft - Vanilla++ Multiplayer

<div align="center">
  <img src="https://raw.githubusercontent.com/FugLong/FugCraft-Server/main/demo_Images/MakeUpUltraFastShaders_NightMansion.png" alt="FugCraft Night Mansion" width="600">
</div>

---

## What is FugCraft?

FugCraft is a curated **Vanilla++** modpack for multiplayer — still Minecraft at heart, just faster, farther, and richer.

| | |
|---|---|
| 🌍 **See forever** | **Sodium** + **Voxy** — smooth rendering and massive LOD render distance (512 chunks by default) |
| 🗺️ **Explore more** | **Biomes O' Plenty**, overhauled vanilla structures, **Moogs structure packs**, **Towns and Towers**, **Underground Worlds**, and **real-world synced seasons** |
| 🤝 **Play together** | Proximity **voice chat**, **parties**, **map-based land claims**, **player shops**, and **death graves** |
| 🍳 **Live off the land** | **Farmer's Delight** cooking and farming with addon content |
| ✨ **Feel the world** | **Iris** + **Complementary Unbound** shaders by default, sound physics, footsteps, dynamic lighting, and curated resource packs |

> **🖥️ Want to host your own server?** The complete open-source server setup is on [GitHub](https://github.com/FugLong/FugCraft-Server) — pre-configured and ready to deploy!

---

## ✨ Key Features

### 🚀 **Performance Optimized**
- **Sodium** + **Sodium Extra** for fast, modern rendering
- **Voxy** for distant LOD terrain
- **Iris** + **Complementary Unbound** with tunable quality presets
- Additional client and server-side optimization mods for smooth gameplay
- Safe first-launch defaults via **Default Options** (updates won't overwrite your existing settings)
- Compatible with low-end to high-end hardware

### 🎨 **Beautiful Visuals**
- **Complementary Unbound** shaders shipped by default through Iris
- **Voxy** — render way beyond normal distances with LOD terrain
- Enhanced particles, weather effects, and atmospheric ambience from visual polish mods
- Dynamic lighting and immersive improvements
- Curated resource packs with **Resource Pack Overrides** for easier management and fixes

### 🔊 **Immersive Audio**
- **Atmosfera** - Dynamic ambient sounds that enhance atmosphere
- **Presence Footsteps** - Realistic footstep sounds that vary by block
- **Sound Physics Remastered** - Realistic sound propagation and reverb

### 🗺️ **Navigation & Information**
- **JourneyMap** - Full-screen map, minimap, and waypoints
- **Jade** for detailed block and entity information
- **Roughly Enough Items** for quick recipe and item lookups
- **Zoomify** for smooth zooming when planning megabuilds
- Integrated waypoint system

### 🎮 **Gameplay Enhancements**
- **Expanded World Generation** - Biomes O' Plenty, Dungeons and Taverns structure overhauls, Moogs structure packs, Towns and Towers, and Underground Worlds
- **Real-World Synced Seasons** - Dynamic seasons powered by Serene Seasons, BetterDays, and Real Serene Seasons
- **Farmer's Delight** - Expanded cooking, farming, and food storage with addon content
- **Friends&Foes** - More vanilla-friendly mobs and structure variety
- **Open Parties and Claims** - Protect your builds and team up
- **Universal Shops** - Create and run player-to-player shops ([Wiki](https://github.com/Patbox/UniversalShops/blob/main/README.md))
- **Universal Graves** - Never lose your items on death
- **Traveler's Backpack** - Portable storage solution with customizable backpacks for extended adventures ([Wiki](https://github.com/Tiviacz1337/Travelers-Backpack/wiki))
- **Veinminer** - Mine connected ores quickly (with enchantment support)
- **Anvil Restoration** - Repair anvils with iron ingots
- **Inventory Sorter** - Keep your chests organized
- **Pet Protection** - Your pets are safe from harm
- **Mine Spawners** - Pick up and relocate mob spawners using silk touch

### 🎤 **Voice Chat Built-In**
- **Simple Voice Chat** - Proximity-based voice communication
- Talk to nearby players naturally in-game
- Customizable settings and push-to-talk

### 🎯 **Quality of Life**
- **Essential Commands** - Teleportation, homes, warps, and essential server utilities
- **LambDynamicLights** - Hold torches to light your way
- **Controller Support** via Controlify
- **Mod Menu** for easy configuration
- **HTM Chest Protection** - Lock down chests with Hey That's Mine! commands
- All keybinds customizable

---

## 📦 What's Included?

### Mods
**A carefully selected mod stack** including:
- Core performance mods centered around Sodium + Voxy
- Default look powered by Iris + Complementary Unbound
- Client setup helpers (Default Options, Resource Pack Overrides)
- Visual enhancements (Voxy LOD terrain, dynamic lighting, particle effects)
- Audio improvements (Ambient sounds, realistic footsteps, sound physics)
- Expanded world gen (Biomes O' Plenty, Dungeons and Taverns, Moogs structure packs, Towns and Towers, Underground Worlds, synced seasons)
- Food and farming (Farmer's Delight and addons)
- Gameplay features (Claims, Shops, Voice Chat, Friends&Foes, Veinminer)
- Quality of life improvements (Inventory Sorter, Backpacks, Dynamic Lights, JourneyMap)
- Full mod list available in the [client resources README](https://github.com/FugLong/FugCraft-Server/blob/main/client-resources/README.md)

> **💡 Customization Tip:** You can disable any mod you don't want by removing it from your mods folder or renaming it with a `.disabled` extension!

### Shaders & Resource Packs (Pre-configured!)
- **Complementary Unbound** - Default shader pack via Iris (quality presets you can raise or lower)
- **Curated resource packs** - Pre-configured for FugCraft; **Resource Pack Overrides** helps keep packs working and easier to fix
- **Enhanced animations & particles** - Smoother motion and richer weather/fire/splash effects from visual polish mods
- **Atmospheric ambience** - Immersive environmental sounds and audio enhancements

---

## ⚙️ Optimization Guide

### Default Settings
The modpack ships a strong default look tuned around Sodium + Voxy + Complementary Unbound:
- **Voxy LOD stream radius:** `512`
- **Normal render distance:** `10`
- **Shaders:** Complementary Unbound enabled
- **Simulation distance:** conservative by default for stability

### 🎨 Want Better Visuals?
1. **Raise the Complementary quality preset** — Video Settings → Iris → Shader Settings → increase the preset
2. **Increase Voxy LOD distance / quality** in Voxy settings
   - Raise gradually if your system can handle it
3. **Increase normal render distance** in Video Settings for sharper nearby terrain
4. **If you have a beast PC, increase simulation distance**
   - Raise in steps and test for stability

### ⚡ Need Better Performance?
1. **Increase Voxy subdivision size (pixels²)** — coarser LODs, less GPU work
2. **Decrease Voxy render distance / LOD stream radius** — try `256` or lower if `512` is heavy
3. **Lower the Complementary quality preset** — Video Settings → Iris → Shader Settings
4. **Turn shaders off entirely** in the same Iris menu if you still need FPS
5. **Lower normal render distance**
6. **Lower simulation distance**
7. **Tune Sodium Extra** options for more headroom

---

## ⌨️ Essential Keybinds

> **Note:** All keybinds can be rebound in settings

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

---

## 🎮 Server Commands

Essential commands for the FugCraft server:

| Command | Description |
|---------|-------------|
| `/book` | Get the in-game FugCraft guide book |
| `/home set <name>` | Set a personal home location |
| `/home tp <name>` | Teleport to your home |
| `/tpa <player>` | Request to teleport to a player |
| `/tpaccept` | Accept teleport request |
| `/warp tp <name>` | Teleport to server warps |
| `/spawn` | Teleport to spawn |
| `/rtp` | Random teleport far from spawn |
| `/openpac-claims` | Manage your claims |
| `/openpac-parties` | Manage parties |
| `/htm <command>` | Access Hey That's Mine! features for chest protection |

> **📚 Full command list:** [Essential Commands Wiki](https://github.com/John-Paul-R/Essential-Commands/wiki/List-of-Commands-&-Permissions)

---

## 🔗 Links & Resources

- **🌐 GitHub Repository:** [FugCraft-Server](https://github.com/FugLong/FugCraft-Server)
- **🖥️ Host Your Own Server:** Complete open-source server setup available in the repository - ready to host locally or remotely!
- **📥 Manual Downloads:** Available in the GitHub repo if you prefer manual installation
- **📋 Full Mod List:** Check the repository for detailed mod information

---

## 💡 Pro Tips

- Right-click an anvil while holding iron ingots to repair it automatically
- Open the pause menu **Server Links...** button for the repo, client guide, modpack, and wiki links
- Voice chat has proximity - walk closer to hear players better
- Use the claims system to protect your builds — open the map (`J`), hold **`U`** + drag to claim, **`I`** + drag to unclaim
- Shader preset and Voxy subdivision size are the fastest ways to trade looks for FPS
- Voxy generates LOD chunks gradually - be patient for best results on first load!
- Check out the [Traveler's Backpack Wiki](https://github.com/Tiviacz1337/Travelers-Backpack/wiki) to learn how to use all the backpack features!

---

## 🎯 Target Version

**Fabric 26.1.2**

---

## 📝 Credits

Created and maintained for the FugCraft community. Special thanks to all the mod developers whose incredible work makes this modpack possible!

---

<div align="center">
  <strong>Enjoy your enhanced Minecraft experience! 🎮✨</strong>
  
  Found a bug? Have suggestions? Visit the [GitHub repository](https://github.com/FugLong/FugCraft-Server)!
</div>
