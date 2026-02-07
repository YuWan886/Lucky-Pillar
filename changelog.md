# 0.1.8

# Added

- **红蓝对抗模式**
- 事件：
    - 岩浆上升：岩浆上升速度 1格/s 
- 物品：
    - 催眠 app：随机一名玩家(不包括自己)获得debuff
- 地图：
    - TNT
    - 活板门
- **鱼丸说**：作者碎碎念
- 补全物品进度
- 重锤pvp,就在大厅底下

# Changed

- 双人模式现在没有友伤了
- **手**的交互距离：6 -> 4

# Fixed

- 有时候没有物品


# 0.1.7

## Added

- mod兼容：所有附魔(应该)、[Farmer's Delight](https://modrinth.com/mod/7vxePowz)、[Mutant Monsters](https://modrinth.com/mod/derP0ten)
- 事件：
    - 随机交换：玩家随机交换位置 
- 物品：
    - 铁剑(1.7.10)：无攻击冷却
    - 让你飞起来：重锤，右键获得一个向上的动量
    - 蓝屏：随机一名玩家(不包括自己)“蓝屏”
    - 小飞船：生成一艘会飞的船，45s后消失
- 规则：
    - 虚空的仁慈：掉落虚空时将玩家向上传送60格

## Changed

- **下届之星**可以吃了
- 清除了一些无用物品，比如，草

## Fixed

- 修复玩家属性重置不了的bug

## Added

- Mod compatibility: All enchantments (should be), [Farmer's Delight](https://modrinth.com/mod/7vxePowz), [Mutant Monsters](https://modrinth.com/mod/derP0ten)
- Events:
    - Random Swap: Players randomly swap positions
- Items:
    - Iron Sword (1.7.10): No attack cooldown
    - Make You Fly: Heavy hammer, right-click to gain upward momentum
    - Blue Screen: Randomly selects one player (excluding self) to "blue screen"
    - Small Spaceship: Spawns a flying boat that disappears after 45 seconds
- Rules:
    - Void's Mercy: When falling into the void, teleport the player upward by 60 blocks

## Changed

- **Nether Star** can now be eaten
- Removed some useless items, such as grass

## Fixed

- Fixed bug where player attributes couldn't be reset

## 0.1.6

### Added

- **双人模式**
- 地图：
    - 月球：特殊，低重力
- 事件：
    - 饿啊饿啊
    - 黑
    - Speed
    - 迷你化
    - 巨大化
    - 核电
    - 雨天
    - 贪吃的史莱姆
- 成就：
    - 我的世界下雨了
    - 一些**物品**和**事件**相关的成就
- 物品：
    - 手
    - 有骨无鸡爪
    - 皮鞋
    - 牌
- 快捷菜单：
    - OP 指令
- 更新音乐：现在有4首bgm了

### Changed

- **回响碎片**现在可以右键发送光波

### Fixed

- **CREEPER**有时候只召唤一只闪电苦力怕
- 地图不下雨

### Added

- Game Modes:
    - Duo
- Maps:
    - Moon: Features, low gravity
- Events:
    - Starving Starving
    - Darkness
    - Speed
    - Miniaturization
    - Gigantification
    - Nuclear Power
    - Rainy Day
    - Greedy Slime
- Achievements:
    - It's Raining in My World
    - Some achievements related to **items** and **events**
- Items:
    - Hand
    - Bones Without Chicken Feet
    - Pixie
    - Card
- Quick Menu:
    - OP Commands
- Music Updated: Now has 4 BGM tracks

### Changed

- **Echo Shard** can now send light waves by right-clicking

### Fixed

- **CREEPER** sometimes only summons one lightning creeper
- Maps don't rain

## 0.1.5-fix

### Fixed

- 地狱图的bug
- 对于中途退出的玩家，可以使用 `/function yw-pillar:utils/game/remove_one_player` 来解决

## 0.1.5

### Added

- MC版本：更新至 **1.21.11**
- 随机事件：
    - 摸摸
    - 背包交换
    - 国王游戏
- 特殊规则：
    - 背包交换
- 成就：
    - 获胜和击杀系列成就
- 物品：
    - 击退棒
    - 女巫的红苹果
    - 布鲁斯
    - 我滴神镐
    - 格调
    - 时间
    - 喵人斧  
- 开始按钮：
    - 无法开始游戏的提示和音效
- 开发者模式：`/function yw-pillar:utils/dev/on`，开启后无法正常开始游戏，输入`function yw-pillar:utils/dev/off` 关闭
- 2首背景音乐
- 对局记录：可以查看上一局游戏的记录

### Changed

- 队伍名称，改成了emoji💕

### Fixed

- 中途加入的bug
- 游戏结束后有概率获得物品
- 开局触发上一局的事件

### Added

- MC Version: Updated to **1.21.11**
- Random Events:
    - Pat Pat
    - Inventory Exchange
    - King's Game
- Special Rules:
    - Inventory Exchange
- Achievements:
    - Victory and Kill series achievements
- Items:
    - Knockback Stick
    - Witch's Red Apple
    - Bruce
    - My Godly Pickaxe
    - Gediao
    - Time
    - Meow Axe
- Start Button:
    - Prompt and sound effect when unable to start the game
- Developer Mode: `/function yw-pillar:utils/dev/on` – when enabled, the game cannot start normally; enter `function yw-pillar:utils/dev/off` to turn it off
- 2 background music tracks
- Match history: allows viewing records of the previous game

### Changed

- Team names changed to emoji 💕

### Fixed

- Bug where players join mid-game
- Chance to receive items after the game ends
- Events from the previous game triggering at the start

## 0.1.4

### Added

- MC版本：更新至 **25w46a**
- 材质：按钮贴图
- 物品：火焰弹、龙息、TNT可以右键发射了
- 特殊规则：
    - 小小小
    - 大大大
    - 我的伙伴
    - 一击必杀
- 随机事件：
    - Hello World
    - 「不死」
    - 断腿
    - 一击必杀
    - CREEPER
- 动画：
    - 海洋地图的旋转动画

### Changed

- 控制菜单：
    - 重写了**选择地图**
    - 新增**特殊规则**

### Fixed

- 地图-地狱：自定义维度bug
- 音频不生效
- 统计：不显示小时
- 游戏进行时有玩家加入导致提前结束（小特性了）
- 平台崩溃不生效（坐标又写错了）

### Added

- MC Version: Updated to **25w46a**
- Textures: Button textures
- Items: Fire charges, dragon's breath, and TNT can now be launched by right-clicking
- Special Rules:
    - Tiny Tiny Tiny
    - Big Big Big
    - My Partner
    - One-Hit Kill
- Random Events:
    - Hello World
    - "Immortal"
    - Broken Leg
    - One-Hit Kill
    - CREEPER
- Animations:
    - Ocean map rotation animation

### Changed

- Control Menu:
    - Rewrote **Select Map**
    - Added **Special Rules**

### Fixed

- Map - Nether: Custom dimension bug
- Audio not working
- Statistics: Hours not displayed
- Game ending prematurely when a player joins mid-game (a minor feature)
- Platform collapse not working (coordinates were wrong again)
