# FugCraft - Vanilla+ Multiplayer Experience

<div align="center">
  <img src="https://raw.githubusercontent.com/FugLong/FugCraft-Server/main/demo_Images/MakeUpUltraFastShaders_NightMansion.png" alt="FugCraft Night Mansion" width="600">
</div>

---

## 🎮 Welcome to FugCraft!

**FugCraft** is a carefully curated **Vanilla+** modpack designed for multiplayer. This modpack enhances your Minecraft experience with performance optimizations, visual improvements, quality-of-life features, and unique gameplay mechanics — all while staying true to the vanilla feel.

Whether you're building massive structures with **Distant Horizons**, chatting with friends via **proximity voice chat**, or transforming into mobs you've unlocked with **ReMorphed**, FugCraft offers an enhanced Minecraft experience without straying too far from vanilla gameplay.

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
- **Beryl shader support** included as an experimental option
- **Ashen 16x** resource pack for clean, vanilla+ textures
- Enhanced particles, weather effects, and atmospheric ambience from additional mods and resource packs
- Dynamic lighting, visual effects, and immersive improvements

### 🔊 **Immersive Audio**
- **Atmosfera** - Dynamic ambient sounds that enhance atmosphere
- **Presence Footsteps** - Realistic footstep sounds that vary by block
- **Sound Physics Remastered** - Realistic sound propagation and reverb

### 🗺️ **Navigation & Information**
- **Xaero's Minimap & World Map** for easy navigation
- **Jade** for detailed block and entity information
- **Roughly Enough Items** for quick recipe and item lookups
- **Zoomify** for smooth zooming when planning megabuilds
- Integrated waypoint system

### 🎮 **Gameplay Enhancements**
- **Enhanced World Generation** - Overhauled villages and new vanilla-friendly structures throughout the world
- **Real-World Synced Seasons** - Experience dynamic seasons powered by Serene Seasons, BetterDays, and Real Serene Seasons
- **ReMorphed** - Transform into mobs after killing them!
- **Open Parties and Claims** - Protect your builds and team up
- **Universal Shops** - Create and run player-to-player shops ([Wiki](https://github.com/Patbox/UniversalShops/blob/main/README.md))
- **Universal Graves** - Never lose your items on death
- **Traveler's Backpack** - Portable storage solution with customizable backpacks for extended adventures ([Wiki](https://github.com/Tiviacz1337/Travelers-Backpack/wiki))
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
- **LambDynamicLights** - Hold torches to light your way, even without shaders enabled!
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
- Gameplay features (ReMorphed, Claims, Shops, Voice Chat)
- Quality of life improvements (Inventory Sorter, Backpacks, Dynamic Lights)
- Full mod list available in the [client resources README](https://github.com/FugLong/FugCraft-Server/blob/main/client-resources/README.md)

> **💡 Customization Tip:** You can disable any mod you don't want by removing it from your mods folder or renaming it with a `.disabled` extension!

### Resource Packs (Pre-configured!)
- **Ashen 16x** - Clean, vanilla+ texture pack that enhances the look while maintaining the original feel
- **Enhanced animations** - Smoother mob and player movements from additional resource packs
- **Improved particles** - Custom weather effects, better fire/smoke, splash particles from particle packs
- **Atmospheric ambience** - Immersive environmental sounds and audio enhancements
- All pre-configured and optimized for performance

### Shader Support (Experimental)
- **Beryl** is included for optional shader experimentation
- Shaders are **not** the default intended experience
- FugCraft is tuned first for high render distance + high FPS without shaders
- You can enable/disable shaders based on your hardware and preferences

---

## ⚙️ Optimization Guide

### Default Settings
The modpack now uses **performance-first defaults** tuned around VulkanMod + Distant Horizons:
- **Distant Horizons render distance:** `256`
- **Normal render distance:** `16`
- **Simulation distance:** conservative by default for stability

### 🎨 Want Better Visuals?
1. **Increase Distant Horizons render distance** (default is 256)
   - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
   - Increase further if your system can handle it
2. **Increase Distant Horizons quality preset**
   - Higher quality gives cleaner distant terrain (with higher GPU cost)
3. **Try Beryl shaders (experimental)**
   - Enable in video settings and tune to preference
4. **If you have a beast PC, increase simulation distance**
   - Raise in steps and test for stability

### ⚡ Need Better Performance?
1. **Turn down Distant Horizons quality preset first**
2. **Decrease Distant Horizons render distance** (default is 256)
   - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
3. **Turn Distant Horizons off entirely** if needed
4. **Lower normal render distance**
5. **Lower simulation distance**
6. **Disable Beryl shaders** when chasing max FPS

**macOS Users:** It is **highly recommended** to install **MetalRender** mod for better performance
- MetalRender provides significant performance improvements on macOS systems with Apple Silicon chips (M1, M2, M3, M4)
- Download from: [MetalRender on Modrinth](https://modrinth.com/mod/metalrender)

---

## ⌨️ Essential Keybinds

> **Note:** All keybinds can be rebound in settings

- **`B`** - Open ReMorphed menu (transform into mobs)
- **`X`** - Use ReMorphed mob ability
- **`M`** - Open minimap/world map
- **`'`** (apostrophe) - Open claims settings
- **`V`** - Voice chat settings
- **`R`** - Push to talk (voice chat)

---

## 🎮 Server Commands

Essential commands for the FugCraft server:

| Command | Description |
|---------|-------------|
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
- Voice chat has proximity - walk closer to hear players better
- Use the claims system to protect your builds from griefing
- Notice the enhanced particles and ambience - look for improved rain, fire, and environmental effects!
- Beryl shaders are optional and experimental
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

