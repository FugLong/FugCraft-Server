# FugCraft Client Resources

**Target Client Version:** Fabric 1.21.8 (Currently updating to 1.21.10)

## 📥 Get FugCraft Modpack

The **easiest way** to get all FugCraft mods, resource packs, and shaders is through the official Modrinth modpack:

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

> **✨ Why Modrinth?** Automatic updates, all mods & resource packs pre-configured, shader packs included, and one-click installation!

## ⚙️ **Graphics Settings & Optimization**

The modpack comes with **VERY optimized default settings** that prioritize performance on weaker systems like a MacBook Air. Many, if not most, users with gaming PCs will want to increase the graphics settings. You can adjust these based on your needs:

- **macOS Users:** It is **highly recommended** to install **MetalRender** mod for better performance
  - MetalRender provides significant performance improvements on macOS systems with Apple Silicon chips (M1, M2, M3, M4)
  - Download from: [MetalRender on Modrinth](https://modrinth.com/mod/metalrender)

### 🎨 **For Better Visuals (most people on gaming PCs should do this):**
- **Increase shader quality preset** (default is "Potato")
  - Options → Video Settings → **Shader Packs** button (top right of screen)
  - Select your shader → Shader Pack Settings → Choose a higher quality preset (Medium → High → Ultra)
- **Increase Distant Horizons render distance** (default is 64 chunks)
  - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
  - Increase LOD Render Distance to **256 chunks** for great results, or **512+ chunks** if your system can handle it
- **Increase normal Minecraft render distance and simulation distance** (default is 6 render, 5 simulation)
  - Options → Video Settings → **Render Distance**: Increase to **8-24 chunks** 
  - Options → Video Settings → **Simulation Distance**: Increase to **6-10 chunks**
  - Don't make your normal render distance crazy high; Distant Horizons works best with smaller render distances on most PCs

### ⚡ **For Better Performance:**
- **Disable shaders entirely** if you need more FPS
  - Options → Video Settings → **Shader Packs** button (top right) → Select "OFF"
  - The modpack is still beautiful without shaders thanks to the included resource packs!
- **Optimize Particle Rain mod** if experiencing poor performance during rainstorms
  - **Option 1:** Go to **Mod Menu** → **Particle Rain** → Turn down the **particle limit** for better performance
  - **Option 2:** If you need even more performance, disable the mod entirely:
    - In your launcher, disable the Particle Rain mod before launching, OR
    - Navigate to your `.minecraft/mods` folder and rename `particle-rain-*.jar` to `particle-rain-*.jar.disabled`
  - This mod can be quite demanding during heavy rain, especially on weaker systems

> **💡 Tip:** Experiment with these settings to find your perfect balance between visuals and performance!

## ⌨️ **Essential Keybinds**

> **Note:** These are default keybinds and can be rebound in the game's controls settings.

These keybinds are essential for getting the most out of your FugCraft experience:

- **`B`** - Open ReMorphed menu (transform into mobs)
- **`M`** - Open minimap/world map
- **`'`** (apostrophe) - Open claims settings (land claiming)
- **`V`** - Voice chat settings
- **`R`** - Push to talk (voice chat)

> **💡 Pro Tip:** Right-click an anvil while holding iron ingots to repair it automatically!

## 🎮 Basic Commands

Here are the essential commands you'll use most often:

| Command | Description |
|---------|-------------|
| `/home set <name>` | Set a personal home location |
| `/home tp <name>` | Teleport to your home |
| `/tpa <player>` | Request to teleport to a player |
| `/tpaccept` | Accept someone's teleport request |
| `/warp tp <name>` | Teleport to a server warp |
| `/spawn` | Teleport to server spawn |
| `/rtp` | Teleport to a random location far from spawn |
| `/openpac-claims` | Everything claim-related |
| `/openpac-parties` | Everything party-related |

> **📚 Full Command List:** See all available commands at the [Essential Commands Wiki](https://github.com/John-Paul-R/Essential-Commands/wiki/List-of-Commands-&-Permissions)
> **🎒 Traveler's Backpack:** Learn how to use all backpack features at the [Traveler's Backpack Wiki](https://github.com/Tiviacz1337/Travelers-Backpack/wiki)

---

## 📋 Full Mod List

<details>
<summary><strong>Click to expand complete mod list</strong></summary>

The FugCraft modpack includes these mods (Fabric 1.21.8):

### 🔧 **Core & Performance**
- **Fabric API** - Core Fabric functionality
- **Sodium** - Client-side rendering optimizations
- **Sodium Extra** - Additional Sodium features
- **EntityCulling** - Optimizes entity rendering
- **Lithium** - Server-side optimization ported to client
- **Noisium** - Chunk generation performance improvements
- **Reese's Sodium Options** - Sodium configuration
- **ScalableLux** - Lighting optimization
- **Alternate Current** - Redstone optimization
- **Lithostitched** - Performance improvements

### 🎨 **Visual Enhancements**
- **Distant Horizons** - Extended render distance
- **Iris** - Shader support
- **NotEnoughAnimations** - Better player animations
- **Player Animator** - Advanced animation system
- **Entity Model Features** - Required for upgraded animations in resource packs
- **Entity Texture Features** - Required for upgraded animations in resource packs
- **Particle Rain** - Weather particle effects
- **Visuality** - Visual improvements
- **Perception** - More enhanced visual effects
- **Wakes** - Water wake effects
- **Subtle Effects** - Subtle visual enhancements
- **Explosive Enhancement** - Enhanced explosion visuals

### 🗺️ **Navigation & Information**
- **Xaero's Minimap** - Enhanced minimap
- **Xaero's World Map** - Full world map
- **Jade** - Block/entity information display

### 🎮 **Gameplay Features**
- **Inventory Sorter** - Automatic inventory sorting
- **Traveler's Backpack** - Portable storage solution with customizable backpacks ([Wiki](https://github.com/Tiviacz1337/Travelers-Backpack/wiki))
- **LambDynamicLights** - Dynamic lighting
- **Controlify** - Enhanced controller support for Java Minecraft
- **ReMorphed** - Transform into mobs/players after killing them
- **Open Parties and Claims** - Land claiming and party system
- **Universal Graves** - Graves system to protect items on death
- **Anvil Restoration** - Restore/repair anvils with iron ingots
- **Pet Protect** - Protect your pets from damage
- **Essential Commands** - Core server commands for teleportation and utilities (if you run singleplayer or LAN)
- **Sound Physics Remastered** - Realistic sound propagation and reverb
- **ChoiceTheorem's Overhauled Village** - Enhanced village generation and structures
- **Explorify** - Adds new vanilla-friendly structures to world generation

### 🎤 **Voice Chat**
- **Simple Voice Chat** - Proximity-based voice chat system
- **Voice Chat Interaction** - Voice chat interaction features

### 🛠️ **Utilities & Configuration**
- **Mod Menu** - In-game mod configuration
- **Cloth Config v19** - Configuration framework
- **Collective** - Shared library for multiple mods
- **Fzzy Config** - Configuration system
- **YetAnotherConfigLib** - Configuration library
- **Forge Config API Port** - Configuration compatibility
- **Placeholder API** - Plugin placeholder support
- **Polymer** - Server-side content framework for custom items and entities
- **CraftedCore** - Core functionality
- **Architectury** - Cross-platform compatibility
- **Walkers** - Dep for ReMorphed
- **SkinShifter** - Another dep for ReMorphed
- **Fabric Language Kotlin** - Kotlin support
- **OctoLib** - Library mod
- **SmoothGui** - Improved GUI
- **ChatAnimation** - Animated chat

</details>
