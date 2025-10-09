# FugCraft Client Resources

**Target Client Version:** Fabric 1.21.8 (Currently updating to 1.21.9)

## 📥 Get FugCraft Modpack

### ⭐ **Recommended: Install via Modrinth** (Easiest!)

The **easiest way** to get all FugCraft mods, resource packs, and shaders is through our official Modrinth modpack:

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

---

<details>
<summary><strong>📦 Manual Downloads (Alternative Method)</strong></summary>

### Manual Installation

If you prefer to manually install or your launcher doesn't support Modrinth modpacks, you can download individual components:

**Prerequisites:** You need **Fabric 1.21.8** installed. You can get this by:
- **[Prism Launcher](https://prismlauncher.org/)** (recommended) - Add instance → Choose Fabric 1.21.8
- **Manual Fabric installation** - Download MC 1.21.8 from official launcher, then use [Fabric installer](https://fabricmc.net/use/installer/)

#### Mods (Required)
- **`FugCraft-mods.zip`** - All required client mods for server compatibility
  - [📥 Download FugCraft-mods.zip](https://github.com/FugLong/FugCraft-Server/raw/main/client-resources/FugCraft-mods.zip)
  - Extract to your `.minecraft/mods` folder

#### Resource Packs (Highly Recommended)
- **`FugCraft-resourcepacks.zip`** - Server resource packs that enhance gameplay
  - [📥 Download FugCraft-resourcepacks.zip](https://github.com/FugLong/FugCraft-Server/raw/main/client-resources/FugCraft-resourcepacks.zip)
  - Extract to your `.minecraft/resourcepacks` folder
  - Enable in-game with highest priority first

#### Shader Packs (Optional)
- **`FugCraft-shaderpacks.zip`** - Curated collection of optimized shaders
  - [📥 Download FugCraft-shaderpacks.zip](https://github.com/FugLong/FugCraft-Server/raw/main/client-resources/FugCraft-shaderpacks.zip)
  - Extract to your `.minecraft/shaderpacks` folder
  - Includes: **Make-Up Ultra Fast**, **Complementary Re-imagined**, and more!

#### Mod List Reference
- **`FugCraft-mod-list.json`** - JSON list of all client mods if you prefer to download individually
  - [📥 Download FugCraft-mod-list.json](https://github.com/FugLong/FugCraft-Server/raw/main/client-resources/FugCraft-mod-list.json)

</details>

## ⚙️ **Graphics Settings & Optimization**

The modpack comes with **optimized default settings** that balance performance and visuals for most systems. However, you can adjust these based on your needs:

### 🎨 **For Better Visuals:**
- **Increase Distant Horizons render distance** (default is 64 chunks)
  - Options → Click the **Distant Horizons button** (small button to the left of FOV slider with DH logo)
  - Increase LOD Render Distance to **256 chunks** for great results, or **512+ chunks** if your system can handle it
- **Increase shader quality preset** for improved lighting and shadows
  - Options → Video Settings → **Shader Packs** button (top right of screen)
  - Select your shader → Shader Pack Settings → Choose a higher quality preset (Medium → High → Ultra)

### ⚡ **For Better Performance:**
- **Disable shaders entirely** if you need more FPS
  - Options → Video Settings → **Shader Packs** button (top right) → Select "OFF"
  - The modpack is still beautiful without shaders thanks to the included resource packs!

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
- **LambDynamicLights** - Dynamic lighting
- **MidnightControls** - Controller support for Java Minecraft
- **ReMorphed** - Transform into mobs/players after killing them
- **Open Parties and Claims** - Land claiming and party system
- **Universal Graves** - Graves system to protect items on death
- **Anvil Restoration** - Restore/repair anvils with iron ingots
- **Pet Protect** - Protect your pets from damage
- **Essential Commands** - Core server commands for teleportation and utilities (if you run singleplayer or LAN)
- **Sound Physics Remastered** - Realistic sound propagation and reverb

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
- **Optiboxes** - Custom skybox support
- **SmoothGui** - Improved GUI
- **ChatAnimation** - Animated chat

</details>
