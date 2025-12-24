[English](./README_EN.md) | [简体中文](./README.md)

# Lucky Pillar

> **Version**: 0.1.6  
> **Creator**: 一条鱼丸_  
> **Minecraft**: 1.21.11  

[![Modrinth](https://img.shields.io/badge/Modrinth-Download-teal?style=for-the-badge&logo=modrinth)](https://modrinth.com/modpack/lucky-pillar)  [![CurseForge](https://img.shields.io/badge/CurseForge-Download-orange?style=for-the-badge&logo=curseforge)](https://www.curseforge.com/minecraft/modpacks/lucky-pillar)  [![PlanetMinecraft](https://img.shields.io/badge/PlanetMinecraft-Download-brightgreen?style=for-the-badge&logo=minecraft)](https://www.planetminecraft.com/project/lucky-pillar/)  [![MineBBS](https://img.shields.io/badge/MineBBS-Download-blue?style=for-the-badge&logo=minecraft)](https://www.minebbs.com/resources/lucky-pillar.13935/)

## Game Introduction

**Lucky Pillar** is a multiplayer game based on Minecraft. Players are randomly distributed on towering pillars on a platform, using randomly distributed items to deal with various random events, defeat other players, and survive to the end to become the winner!

### Core Gameplay

- **Multiplayer Competition**: Supports 2-12 players competing simultaneously
- **Random Items**: Receive different weapons and items randomly each round
- **Dynamic Events**: Various random events triggered during gameplay
- **Survival Challenge**: Survive on limited platforms and defeat opponents
- **Multi-language Support:** Currently supports:简体中文、English

## Main Features

### Maps

| Map | Description |
|---------|----------|
| **Wool** | Classic |
| **Nether** | Classic Dimension: The Nether |
| **Glass** | Classic |
| **Ocean** | Special Obtain items through fishing, water is highly toxic |

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
| **饿啊饿啊** | 获得饥饿(40)30s | 
| **黑** | 黑(10s) | 
| **Speed** | 🦽冲刺冲刺🦽 | 
| **迷你化** | 玩家尺寸-0.8 | 
| **巨大化** | 玩家尺寸+4 | 

### Special Rules

> Globally effective

| Rule Name | Effect Description |
|-----------|-------------------|
| **Small but Cute** | All players' size reduced to 1/3 of original |
| **Big! Big! Big!** | All players' size increased to 3/2 of original |
| **My Partner** | Obtain a fox that provides strength and health regeneration while alive |
| **One-Hit Kill** | Player attack damage becomes 40 |
| **Inventory Exchange** | Random events are fixed to Inventory Exchange |

### Game Mechanics

#### Border System
- World border gradually shrinks over time
- When border shrinks to 5 blocks wide, platforms start collapsing
- Each collapse height is 30 blocks

### OP Command

| Command | Function |
| ----------- | ----------- |
| `function yw-pillar:game/end` | End the game directly |
| `function yw-pillar:utils/game/remove_one_player`   | Handling a player leaving midway |
| `function yw-pillar:utils/game/skip_event`   | Skip current event |

### server.properties

```properties
difficulty=hard
motd=§r§c幸§r§c运§r§d之§r§5柱§rv0.1.5§r\n§2作者：§r§b§l§n一条鱼丸_
resource-pack=https://gh-proxy.com/https://github.com/YuWan886/YuWan-Server/releases/download/pack/1.21.11-Lucky-Pillar.zip
spawn-protection=0
```