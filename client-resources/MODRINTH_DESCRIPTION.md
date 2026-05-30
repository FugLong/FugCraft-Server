# FugCraft - Vanilla+ Multiplayer Experience

<div align="center">
  <img src="https://raw.githubusercontent.com/FugLong/FugCraft-Server/main/demo_Images/MakeUpUltraFastShaders_NightMansion.png" alt="FugCraft Night Mansion" width="600">
</div>

---

## 🎮 Welcome to FugCraft!

**FugCraft** is a carefully curated **Vanilla+** modpack designed for multiplayer and powered by Vulkan. This modpack enhances your Minecraft experience with performance optimizations, visual improvements, quality-of-life features, and unique gameplay mechanics — all while staying true to the vanilla feel.

Whether you're building massive structures with **Distant Horizons**, chatting with friends via **proximity voice chat**, or exploring with **JourneyMap**, FugCraft offers an enhanced Minecraft experience without straying too far from vanilla gameplay.

> **🖥️ Want to host your own server?** The complete open-source server setup is available on [GitHub](https://github.com/FugLong/FugCraft-Server) - pre-configured and ready to deploy locally or remotely!

---

## ✨ Key Features

### 🚀 **Performance Optimized**
- **VulkanMod** + **Distant Horizons** as the core rendering direction
- Additional client and server-side optimization mods for smooth gameplay
- Optimized default settings for most systems
- Compatible with low-end to high-end hardware
- **+ More!** Additional performance tweaks and optimizations

### 🎨 **Beautiful Visuals**
- **Distant Horizons** - Render way beyond normal distances (thousands of chunks on beefy systems!)
- **Ashen 16x** resource pack for clean, vanilla+ textures
- **Hyper Realistic Sky** resource pack for improved clouds, sun, moon, and atmosphere
- Enhanced particles, weather effects, and atmospheric ambience from additional mods and resource packs
- Dynamic lighting, visual effects, and immersive improvements

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
- **Expanded World Generation** - Biomes O' Plenty biomes plus Dungeons and Taverns structure overhauls, Towns and Towers, Underground Worlds, and Explorify
- **Real-World Synced Seasons** - Experience dynamic seasons powered by Serene Seasons, BetterDays, and Real Serene Seasons
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
- Core performance mods centered around VulkanMod + Distant Horizons
- Visual enhancements (Distant Horizons, dynamic lighting, particle effects)
- Audio improvements (Ambient sounds, realistic footsteps, sound physics)
- Expanded world gen (Biomes O' Plenty, Dungeons and Taverns, Towns and Towers, Underground Worlds)
- Food and farming (Farmer's Delight and addons)
- Gameplay features (Claims, Shops, Voice Chat, Friends&Foes, Veinminer)
- Quality of life improvements (Inventory Sorter, Backpacks, Dynamic Lights, JourneyMap)
- Full mod list available in the [client resources README](https://github.com/FugLong/FugCraft-Server/blob/main/client-resources/README.md)

> **💡 Customization Tip:** You can disable any mod you don't want by removing it from your mods folder or renaming it with a `.disabled` extension!

### Resource Packs (Pre-configured!)
- **Ashen 16x** - Clean, vanilla+ texture pack that enhances the look while maintaining the original feel
- **Enhanced animations** - Smoother mob and player movements from additional resource packs
- **Improved particles** - Custom weather effects, better fire/smoke, splash particles from particle packs
- **Atmospheric ambience** - Immersive environmental sounds and audio enhancements
- All pre-configured and optimized for performance

---

## ⚙️ Optimization Guide

### Default Settings
The modpack uses **performance-first defaults** tuned around VulkanMod + Distant Horizons:
- **Distant Horizons render distance:** `256`
- **Normal render distance:** `12`
- **Simulation distance:** conservative by default for stability

### 🎨 Want Better Visuals?
1. **Increase Distant Horizons render distance** (default is 256)
   - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
   - Increase further if your system can handle it
2. **Increase Distant Horizons quality preset**
   - Higher quality gives cleaner distant terrain (with higher GPU cost)
3. **If you have a beast PC, increase simulation distance**
   - Raise in steps and test for stability

> **On shaders:** FugCraft does not include shader mods. We think shaders are often overrated — they can hurt FPS and fight with Distant Horizons. Beauty here comes from render distance, resource packs, and polish mods. A Vulkan-based shader option *might* be worth revisiting in the future, but it's not part of the plan today.

### ⚡ Need Better Performance?
1. **Turn down Distant Horizons quality preset first**
2. **Decrease Distant Horizons render distance** (default is 256)
   - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
3. **Turn Distant Horizons off entirely** if needed
4. **Lower normal render distance**
5. **Lower simulation distance**

---

## ⌨️ Essential Keybinds

> **Note:** All keybinds can be rebound in settings

- **`J`** - Open full map
- **`M`** - Toggle minimap
- **`B`** - Add waypoint
- **`N`** - Manage waypoints
- **`G`** - Toggle fullbright
- **`'`** (apostrophe) - Open claims settings
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
- Use the claims system to protect your builds from griefing
- Notice the enhanced particles and ambience - look for improved rain, fire, and environmental effects!
- Distant Horizons generates LOD chunks gradually - be patient for best results!
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

