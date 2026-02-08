[English](./README_EN.md) | [简体中文](./README.md)

# Lucky Pillar

> **Version**: 0.1.8  
> **Creator**: 一条鱼丸_  
> **Minecraft**: 1.21.11  

[![Modrinth](https://img.shields.io/badge/Modrinth-Download-teal?style=for-the-badge&logo=modrinth)](https://modrinth.com/modpack/lucky-pillar)  [![CurseForge](https://img.shields.io/badge/CurseForge-Download-orange?style=for-the-badge&logo=curseforge)](https://www.curseforge.com/minecraft/modpacks/lucky-pillar)  [![MinecraftMaps](https://img.shields.io/badge/MinecraftMaps-Download-green?style=for-the-badge&logo=minecraft)](https://www.minecraftmaps.com/51797-lucky-pillar)  [![PlanetMinecraft](https://img.shields.io/badge/PlanetMinecraft-Download-brightgreen?style=for-the-badge&logo=minecraft)](https://www.planetminecraft.com/project/lucky-pillar/)  [![MineBBS](https://img.shields.io/badge/MineBBS-Download-blue?style=for-the-badge&logo=minecraft)](https://www.minebbs.com/resources/lucky-pillar.13935/)  [![BBSMC](https://img.shields.io/badge/BBSMC-Download-gold?style=for-the-badge&logo=minecraft)](https://bbsmc.net/modpack/lucky-pillar)

## Game Introduction

**Lucky Pillar** is a multiplayer game based on Minecraft. Players are randomly distributed on towering pillars on a platform, using randomly distributed items to deal with various random events, defeat other players, and survive to the end to become the winner!

### Core Gameplay

- **Multiplayer Competition**: Supports 2-∞ players competing simultaneously
- **Random Items**: Receive different weapons and items randomly each round
- **Dynamic Events**: Various random events triggered during gameplay
- **Survival Challenge**: Survive on limited platforms and defeat opponents
- **Mod Compatibility**: Install **[certain mods](#compatibility-list)** to get additional content
- **Multi-language Support:** Currently supports: 简/繁体中文、English

## Main Features

### Maps

| Map | Description |
|---------|----------|
| **Wool** | Classic |
| **Nether** | Classic Dimension: The Nether |
| **Glass** | Classic |
| **TNT** | Classic |
| **Trap Door** | Classic |
| **Ocean** | Special Obtain items through fishing, water is highly toxic |
| **Moon** | Special Low Gravity |

### Random Event System

> The following events are randomly triggered during gameplay:

| Event Name | Effect Description |
|------------|-------------------|
| **Night Falls** | Turns to night, spawns two phantoms |
| **Anvil Drop** | Spawns anvils above players' heads |
| **Dragon Attack** | Spawns Ender Dragon to attack all players |
| **Wither** | Spawns Wither Boss |
| **FLY** | Obtain elytra and fireworks rockets |
| **Arrow Rain** | 10-second continuous arrow rain attack |
| **Sky Walker** | Levitation |
| **Rotation** | Players automatically rotate |
| **Lightning Strike** | Random lightning attacks |
| **Hello, World** | Turns to daytime, fully restores health |
| **「Undying」** | Obtain a totem of undying |
| **Broken Leg** | Unable to jump |
| **One-Hit Kill** | Player attack damage becomes 40 |
| **CREEPER** | Summons a creeper, with 10% chance of charged creeper |
| **Pat Pat** | Player entity interaction distance becomes 10 |
| **Inventory Exchange** | Players' inventory items are randomly exchanged |
| **King Game** | Winner takes all |
| **Lucky Doll** | Obtain an enhanced totem of undying |
| **Starving Starving** | Gain Hunger (40) for 30 seconds |
| **Darkness** | Darkness (10s) |
| **Speed** | 🦽 Sprint Sprint 🦽 |
| **Miniaturization** | Player size -0.8 |
| **Gigantification** | Player size +4 |
| **Nuclear Power** | Summon a charged creeper named 'Broken Broken' |
| **Rainy Day** | Weather changes to rain, obtain a trident with Riptide III |
| **Greedy Slime** | Spawns a slime, eating drops increases in size |
| **Location Exchange** | Random exchange of player locations |
| **Lava Rising** | Lava rises at a speed of 1 b/s | 

### Special Rules

> Globally effective

| Rule Name | Effect Description |
|-----------|-------------------|
| **Small but Cute** | Players' size reduced to 1/3 of original |
| **Big! Big! Big!** | Players' size increased to 3/2 of original |
| **My Partner** | Obtain a fox that provides strength and health regeneration while alive |
| **One-Hit Kill** | Player attack damage becomes 40 |
| **Inventory Exchange** | Random events are fixed to Inventory Exchange |
| **I sea you** | Player gains Invisibility, gains 5s Glowing after event |
| **Void Mercy** | Player falls into the void will be teleported upward by **60** blocks |

### Game Mechanics

#### Border System
- World border gradually shrinks over time
- When border shrinks to 5 blocks wide, platforms start collapsing
- Each collapse height is 30 blocks

### Compatibility List

- All Enchantments
- [Farmer's Delight](https://modrinth.com/mod/7vxePowz)
- [Mutant Monsters](https://modrinth.com/mod/derP0ten)

### OP Command

| Command | Function |
| ----------- | ----------- |
| `function yw-pillar:game/end` | End the game directly |
| `function yw-pillar:utils/game/player_left_halfway`   | Handling a player leaving midway |
| `function yw-pillar:utils/game/skip_event`   | Skip current event |

### server.properties

```properties
difficulty=hard
motd=§r§c幸§r§c运§r§d之§r§5柱§rv0.1.8§r\n§2作者：§r§b§l§n一条鱼丸_
resource-pack=https://github.com/YuWan886/YuWan-Server/releases/download/pack1/1.21.11-Lucky-Pillar.zip
spawn-protection=0
```