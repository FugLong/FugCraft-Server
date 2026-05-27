# FugCraft Server

<div align="center">
  <img src="FugCraft_Build.png" alt="FugCraft Server Screenshot" style="width: 80%; max-width: 600px;">

  <h3>🎮 Plug and Play Minecraft Server (Vanilla+)</h3>

  [![Client Resources](https://img.shields.io/badge/📥%20Client%20Resources-Get%20Started-blue?style=for-the-badge)](client-resources/README.md)
</div>

---

## 🎯 For Players

**Joining the server?** Check out the **[Client Resources](client-resources/README.md)** for everything you need to get started!

- 📦 **Custom modpack**
- 🎨 **Curated resource packs**
- 🚀 **Performance-first client direction** (VulkanMod + Distant Horizons)
- ⚙️ **Easy setup guide**

---

## 🚀 For Server Hosts

Want to run your own FugCraft server? This repository contains everything you need!

### 📥 **Quick Setup**

**Prerequisites:** You need **Java 21** (recommended) or Java 17+ installed:
- **[Download Java 21](https://www.oracle.com/java/technologies/downloads/#java21)** (recommended)
- Java 17+ will also work if you already have it installed

1. **Clone this repository:**
   ```bash
   git clone https://github.com/FugLong/FugCraft-Server.git
   cd FugCraft-Server
   ```

2. **Start the server:**
   - **Windows:** Run `start-server.bat`
   - **Linux/Mac:** Run `./start-server.sh`

3. **Configure your server:**
   - Edit `server.properties` for basic settings
   - Modify config files in `config/` as needed
   - **Highly recommended to delete HoloDisplays config**
   - Set up LuckPerms permissions (see guide below)

### ⚙️ **RAM Configuration**

**Important:** You may need to adjust RAM allocation based on your system!

The startup scripts use these default values:
- **Minimum RAM:** `4G` (4 GB)
- **Maximum RAM:** `12G` (12 GB)

#### 🔧 **How to Change RAM:**

**In `start-server.bat` (Windows):**
```batch
-Xms4G -Xmx12G
```

**In `start-server.sh` (Linux/Mac):**
```bash
-Xms4G -Xmx12G
```

#### 📊 **Recommended RAM Settings:**

| System RAM | Min (-Xms) | Max (-Xmx) | Notes |
|------------|------------|------------|-------|
| 8 GB       | 2G         | 6G         | Minimum viable |
| 16 GB      | 4G         | 8G         | Good performance |
| 32 GB      | 6G         | 16G        | High performance |
| 64 GB+     | 8G         | 24G        | Maximum performance |

#### 💡 **Example:**

**For a 8GB system:**
```bash
-Xms2G -Xmx6G
```

### 📁 **What's Included**

- ✅ **Server JAR** - Fabric server launcher
- ✅ **Mods** - All required server mods
- ✅ **Configs** - Pre-configured mod settings
- ✅ **Startup Scripts** - Cross-platform launchers
- ✅ **LuckPerms** - Permission system (groups/tracks only)

### 📋 **Server Mod List**

> **💡 Tip:** You can disable many mods by renaming their `.jar` file to `.jar.disabled` in `/mods` (for example: `mod.jar` → `mod.jar.disabled`).

The server currently targets **Minecraft 26.1.2 (Fabric)**.

The list below is an exact snapshot of the top-level `mods` jars in this repo (including disabled jars):

- `[fabric]ctov-26.1-3.6.4.jar`
- `antixray-fabric-1.4.16+26.1.jar`
- `anvilrestoration-26.1.2-2.5.jar`
- `architectury-19.0.1-fabric.jar`
- `balm-fabric-26.1.2-26.1.2.6.jar`
- `betterdays-26.1.2-fabric-4.1.1.6-FABRIC.jar`
- `bubblecolumntweaks-1.1.0.jar`
- `c2me-fabric-mc26.1.2-0.3.7+alpha.0.69.jar`
- `cloth-config-26.1.154.jar`
- `collective-26.1.2-8.22.jar`
- `commandaliases-1.0.4+mc26.1.2-unknown.jar`
- `controlify-3.0.1+26.1-fabric.jar`
- `CopperGratesBubbleThru-2.1+26.1.jar`
- `craftedcore-fabric-8.0.jar`
- `crashexploitfixer-fabric-2.0.0+26.1.2.jar`
- `DistantHorizons-3.0.3-b-26.1.2-fabric-neoforge.jar`
- `essential_commands-0.39.0-mc26.1.1.jar`
- `Explorify v1.6.5.mod.jar`
- `fabric-api-0.149.1+26.1.2.jar`
- `fabric-language-kotlin-1.13.11+kotlin.2.3.21.jar`
- `FallingTree-26.1.2-25.jar`
- `FastItemFrames-v26.1.0-mc26.1.x-Fabric.jar`
- `ferritecore-9.0.0-fabric.jar`
- `ForgeConfigAPIPort-v26.1.4-mc26.1.x-Fabric.jar`
- `GlitchCore-fabric-26.1.2-26.1.2.0.2.jar`
- `graves-3.11.1+26.1.2.jar`
- `holodisplays-0.5.0+26.1-26.1.2.jar`
- `htm-1.2.3.jar`
- `immersive_optimization-fabric-26.1.2-0.1.5.jar`
- `inventorysorter-fabric-3.0.0-beta.4+mc26.1.2.jar`
- `InvView-1.4.20-26.1+.jar`
- `Jade-mc26.1-Fabric-26.1.0.jar`
- `journeymap-fabric-26.1.2-6.0.0-beta.81.jar`
- `JourneyPAC-fabric-26.1.2-1.1.10.jar`
- `kleeslabs-fabric-26.1-26.1.0.1.jar`
- `krypton-0.3.0.jar`
- `leash-villager-1.0.0+mc26.1.jar`
- `lithium-fabric-0.24.2+mc26.1.2.jar`
- `lithostitched-1.7.7-fabric-26.1.jar`
- `LuckPerms-Fabric-5.5.52.jar`
- `ly-combat-log-v1.0.3.jar`
- `modmenu-18.0.0-beta.1.jar`
- `NoChatReports-FABRIC-26.1-v2.19.0.jar`
- `oldschooljail-1.1.0.jar`
- `open-parties-and-claims-fabric-26.1.2-0.26.3.jar`
- `otterlib-0.3.0.1+26.1-fabric.jar`
- `packetfixer-fabric-3.3.5-26.1.2.jar`
- `pet-teleport-fix-1.4-HOTFIX.jar`
- `petprotect-1.1.4.jar`
- `placeholder-api-3.0.0+26.1.jar`
- `polymer-bundled-0.16.5+26.1.2.jar`
- `PuppetPlayers-1.6.1+26.1.2.jar`
- `PuzzlesLib-v26.1.8-mc26.1.x-Fabric.jar`
- `real-serene-seasons-1.0.4.jar`
- `remorphed-fabric-8.0.jar`
- `RoughlyEnoughItems-fabric-26.1.9999.jar`
- `ScalableLux-0.2.0+fabric.2b63825-all.jar`
- `SereneSeasons-fabric-26.1.2-26.1.2.0.2.jar`
- `ServerLinksSender-1.0.1.jar.DISABLED`
- `silkiertouch-26.1.2-1.2.jar`
- `sit!-1.2.6.2+26.1.jar`
- `skinshifter-fabric-3.1.0.jar`
- `sound-physics-remastered-fabric-1.5.1+26.1.2.jar`
- `spark-1.10.172-fabric.jar`
- `ssdh-1.1.0.jar`
- `starterkit-26.1.2-8.0.jar`
- `styled-chat-2.12.0+26.1.2.jar`
- `styledplayerlist-3.11.1+26.1.jar`
- `travelersbackpack-fabric-26.1.2-11.2.6.jar`
- `universal_shops-1.14.0+26.1.jar`
- `vanilla-permissions-0.3.6+26.1.2.jar`
- `vanish-1.6.8+26.1.jar`
- `vcinteraction-fabric-1.0.8+26.1.2.jar`
- `veinminer-enchant-2.9.0.jar`
- `veinminer-fabric-2.10.0.jar`
- `villagerconverting-1.5.2+26.1.jar`
- `vmp-fabric-mc26.1.2-0.2.0+beta.7.234-all.jar`
- `voicechat-fabric-2.6.17+26.1.2.jar`
- `walkers-fabric-8.2.jar`
- `worldedit-mod-7.4.3.jar`
- `yet_another_config_lib_v3-3.9.3+26.1-fabric.jar`

> Current total: **81 jars** (`80` enabled + `1` disabled).

### 👥 **LuckPerms Permission Setup**

The server comes with pre-configured permission groups and tracks. Here's how to give yourself admin access:

#### **Quick Setup - Give Yourself Owner Permissions:**

**Option 1: Using Console Command**
1. Join your server
2. Open the server console
3. Run: `lp user <your-username> permission set luckperms.* true`
4. Now you can use all LuckPerms commands in-game

**Option 2: Using LuckPerms Editor (Easier)**
1. In server console, run: `lp editor`
2. Click the link that appears in console
3. In the web editor, go to **Users** → find your username
4. Give yourself the `owner` group
5. Save and close

#### **Available Groups:**
These groups build on one another - each level includes all permissions from lower groups plus additional ones.

- **`default (guest)`** - New players (basic permissions)
  - Can set 1 home, basic commands only, claim 32 chunks max

- **`member`** - Regular players  
  - Can set 3 homes, access to warps + more commands, can use ReMorphed mod (no flying mobs), claim 64 chunks max

- **`citizen`** - Trusted players
  - Can set 5 homes, can nickname themselves, basic flying and lava walking mobs in ReMorphed, claim 128 chunks max

- **`moderator`** - Staff members
  - Can set 10 homes, can kick players, can TP without requesting, more mod commands, special ReMorphed forms like ender dragon, claim 256 chunks max

- **`veteran`** - Long-time players
  - Like moderators but can set 20 homes, access to cheaty commands like `/anvil`, `/enderchest`, `/feed`

- **`admin`** - Administrators
  - Can set 25 homes, `/ban`, `/ban-ip`, `/fly`, `/heal`, `/repair`, `/invuln`, `/vanish', can set/delete warps and spawn, claim 512 chunks max

- **`coowner`** - Co-owners
  - Admins with infinite homes, can see vanished players

- **`owner`** - Server owner
  - Access to all commands, can claim 1024 chunks max

> **Note:** This is a general overview. Check the LuckPerms editor to see and edit all specific permissions for each group.

#### **Need More Help?**
- **[LuckPerms Documentation](https://luckperms.net/wiki/Home)** - Complete guide
- Permission files are in: `mods/luckperms/yaml-storage/`

### 🔒 **Security Notes**

This repository excludes sensitive data:
- Player data and inventories
- Server logs and IPs
- Player permissions assignments
- World data (backup elsewhere)

---

<div align="center">
  <p><strong>Enjoy your FugCraft experience! 🎮</strong></p>
</div>
</div>
