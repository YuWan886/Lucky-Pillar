[简体中文](./README.md) | [English](./README_EN.md)

# 幸运之柱

> **版本**: 0.1.6  
> **作者**: 一条鱼丸_  
> **Minecraft**: 1.21.11

[![Modrinth](https://img.shields.io/badge/Modrinth-Download-teal?style=for-the-badge&logo=modrinth)](https://modrinth.com/modpack/lucky-pillar)  [![CurseForge](https://img.shields.io/badge/CurseForge-Download-orange?style=for-the-badge&logo=curseforge)](https://www.curseforge.com/minecraft/modpacks/lucky-pillar)  [![MinecraftMaps](https://img.shields.io/badge/MinecraftMaps-Download-green?style=for-the-badge&logo=minecraft)](https://www.minecraftmaps.com/51797-lucky-pillar)  [![PlanetMinecraft](https://img.shields.io/badge/PlanetMinecraft-Download-brightgreen?style=for-the-badge&logo=minecraft)](https://www.planetminecraft.com/project/lucky-pillar/)  [![MineBBS](https://img.shields.io/badge/MineBBS-Download-blue?style=for-the-badge&logo=minecraft)](https://www.minebbs.com/resources/lucky-pillar.13935/)

## 游戏简介

**幸运之柱** 是一款基于 Minecraft 的多人游戏。玩家将随机分布在平台上高耸的柱子上，利用随机发放的物品，应对各种随机事件，击败其他玩家，存活到最后成为胜利者！

### 核心玩法

- **多人竞技**: 支持 **2-12** 名玩家同场竞技
- **随机物品**: 每回合随机获得不同的武器和道具
- **动态事件**: 游戏过程中会触发各种随机事件
- **生存挑战**: 在有限的平台上生存并击败对手
- **多语言支持**: 目前支持简体中文、English

## 主要特色

### 地图

| 地图 | 描述 |
|---------|----------|
| **羊毛** | 经典 |
| **地狱** | 经典 维度：下界 |
| **玻璃** | 经典 |
| **虚空** | 经典 |
| **海洋** | 特殊 通过钓鱼获得物品，水有剧毒 | 
| **月球** | 特殊 低重力 |

### 随机事件

> 游戏过程中会随机触发以下事件

| 事件名称 | 效果描述 |
|---------|----------|
| **夜晚降临** | 变为黑夜，生成两只幻翼 |
| **铁砧下落** | 在玩家头顶生成铁砧 |
| **龙袭** | 生成末影龙攻击玩家 | 
| **凋灵** | 生成凋灵Boss | 
| **FLY** | 获得鞘翅和烟花火箭 | 
| **箭雨** | 持续10秒的箭雨攻击 | 
| **踏空** | 漂浮 | 
| **自转** | 玩家自动旋转 | 
| **雷击** | 随机闪电攻击 | 
| **你好,世界** | 变成白天，回满生命值 | 
| **「不死」** | 获得一个不死图腾 | 
| **断腿** | 无法跳跃 | 
| **一击必杀** | 玩家攻击伤害变为 40 | 
| **CREEPER** | 召唤一只苦力怕，有10%的概率出现闪电苦力怕 | 
| **摸摸** | 玩家实体交互距离变为 10 | 
| **背包交换** | 玩家背包物品随机交换 | 
| **国王游戏** | 成王败寇 | 
| **幸运玩偶** | 获得一个加强版不死图腾 | 
| **饿啊饿啊** | 获得饥饿(40)30s | 
| **黑** | 黑(10s) | 
| **Speed** | 🦽冲刺冲刺🦽 | 
| **迷你化** | 玩家尺寸-0.8 | 
| **巨大化** | 玩家尺寸+4 | 
| **核电** | 召唤一只名为“坏了坏了”的闪电苦力怕 | 
| **雨天** | 天气变为雨天，获得一把激流III的三叉戟 | 
| **贪吃的史莱姆** | 生成一只史莱姆，每吃掉5个掉落物，体积加1 |

### 特殊规则

> 全局生效

| 规则名称 | 效果描述 |
|---------|----------|
| **小小的也很可爱** | 玩家尺寸缩小为原来的 1/3 |
| **大！大！大！** | 玩家尺寸增大为原来的 3/2 |
| **我的伙伴** | 获得一只狐狸 狐狸存活时,给玩家提供力量和生命回复 |
| **一击必杀** | 玩家攻击伤害变成 §l40 |
| **背包交换** | 随机事件固定为 §背包交换 |
| **I sea you** | 玩家获得 隐身,事件结束后获得 5s 发光 |

### 游戏机制

#### 边界系统
- 世界边界会随时间逐渐收缩
- 边界收缩到5格宽后，平台开始崩溃
- 每次崩溃高度为30格

### 管理员指令

| 命令 | 作用 |
| ----------- | ----------- |
| `function yw-pillar:game/end` | 直接结束游戏 |
| `function yw-pillar:utils/game/player_left_halfway`   | 处理玩家中途离开 |
| `function yw-pillar:utils/game/skip_event`   | 跳过当前事件 |

### server.properties

```properties
difficulty=hard
motd=§r§c幸§r§c运§r§d之§r§5柱§rv0.1.6§r\n§2作者：§r§b§l§n一条鱼丸_
resource-pack=https://gh-proxy.org/https://github.com/YuWan886/YuWan-Server/releases/download/pack1/1.21.11-Lucky-Pillar.zip
spawn-protection=0
```

## 开发笔记

[看看](./dev.md)