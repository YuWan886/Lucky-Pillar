## TODO
- 幸运方块地图
- 金蒲公英

## tag&team
游戏中
- tag: ready ingame (out)
- team: InGame/Out

旁观
- tag: spectator
- team: Spectator

准备
- tag: ready
- team: Ready

debug
- tag: debug

## 游戏模式

- [设置-函数](./src/data/yw-pillar/function/settings/gamemode.mcfunction)  [设置-对话框](./src/data/yw-pillar/dialog/settings/gamemode.json)
- [计算player_count选图](./src/data/yw-pillar/function/utils/player/count.mcfunction)
- [队伍分配](./src/data/yw-pillar/function/utils/player/number/main.mcfunction)

## 地图
 
- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [设置-函数](./src/data/yw-pillar/function/settings/map.mcfunction)  [设置-对话框](./src/data/yw-pillar/dialog/settings/map.json)  
- [游戏中](./src/data/yw-pillar/function/schedule/1s.mcfunction)  <map_id>/ingame.mcfunction 
- [传送到地图](./src/data/yw-pillar/function/game/pillars/)  <map_id>/tp.mcfunction 
- [掉虚空](./src/data/yw-pillar/function/game/pillars/location.mcfunction)

| 地图 | 描述 |
|---------|----------|
| 101 羊毛 | 经典 |
| 102 地狱 | 经典 维度：下界 |
| 103 玻璃 | 经典 |
| 104 虚空 | 经典 |
| 105 TNT | 经典 |
| 106 活板门 | 经典 |
| 201 海洋 | 特殊 通过钓鱼获得物品，水有剧毒 | 
| 202 月球 | 特殊 低重力 | 
 
## 随机事件

每 s 触发 `yw-pillar:game/event/duration_sec`  
每 tick 触发 `yw-pillar:game/event/duartion_tick`

- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [调用](./src/data/yw-pillar/function/game/event/main.mcfunction)

|  事件  |  描述  |
|  ----  | ----  |
| 1 夜晚降临 | 变成黑夜，生成两只幻翼 |
| 2 铁砧下落 | 生成一个铁砧在头顶 |
| 3 龙袭 | 生成一只末影龙 |
| 4 凋灵 | 生成一只凋灵 |
| 5 FLY | 鞘翅x1、烟花火箭x3 |
| 6 箭雨 | 箭雨 |
| 7 踏空 | 漂浮 |
| 8 自转 | oiiaioooooiai |
| 9 雷击 | 劈一你发 |
| 10 你好世界 | 变成白天，回满生命值 |
| 11 「不死」 | 获得一个不死图腾 |
| 12 断腿 | 无法跳跃 |
| 13 一击必杀 | 玩家攻击伤害变为 40 | 
| 14 CREEPER | 召唤一只苦力怕，有10%的概率出现闪电苦力怕 | 
| 15 摸摸 | 玩家实体交互距离变为 10 | 
| 16 背包交换 | 玩家背包物品随机交换 | 
| 17 国王游戏 | 成王败寇 | 
| 18 幸运玩偶 | 获得一个加强版不死图腾 | 
| 19 饿啊饿啊 | 获得饥饿(40)30s | 
| 20 黑 | 黑(10s) | 
| 21 Speed | 🦽冲刺冲刺🦽 | 
| 22 迷你化 | 玩家尺寸-0.8 | 
| 23 巨大化 | 玩家尺寸+4 | 
| 24 核电 | 轻而易举 | 
| 25 雨天 | 我的世界下雨了☂ | 
| 26 贪吃的史莱姆 | 嚼嚼嚼~ | 
| 27 位置交换 | 玩家位置随机交换 | 

## 特殊规则

- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [调用](./src/data/yw-pillar/function/game/rule/main.mcfunction)  
- [设置-函数](./src/data/yw-pillar/function/settings/rule.mcfunction)  [设置-对话框](./src/data/yw-pillar/dialog/settings/rule.json)  
- [效果(tick)](./src/data/yw-pillar/function/game/rule/effect.mcfunction)

|  规则  |  描述  |
|  ----  | ----  |
| 1 小小的也很可爱 | 玩家尺寸缩小为原来的1/3 |
| 2 大！大！大！ | 玩家尺寸增大为原来的3/2 |
| 3 我的伙伴 | 获得一只狐狸,狐狸存活时,给玩家提供力量和生命回复 |
| 4 一击必杀 | 玩家攻击伤害变成40 |
| 5 背包交换 | 随机事件固定为背包交换 |
| 6 I sea you | 玩家获得隐身,事件结束后获得5s发光 |
| 7 虚空的仁慈 | 掉落虚空将被向上传送60格 |

## 兼容

- 所有附魔
- [Farmer's Delight](https://modrinth.com/mod/7vxePowz)
- [Mutant Monsters](https://modrinth.com/mod/derP0ten)