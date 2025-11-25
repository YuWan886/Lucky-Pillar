## Todo

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

## 地图
 
- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [设置-函数](./src/data/yw-pillar/function/settings/map.mcfunction)  [设置-对话框](./src/data/yw-pillar/dialog/settings/map.json)  
- [游戏中](./src/data/yw-pillar/function/schedule/1s.mcfunction)  <map_id>/ingame.mcfunction 
- [传送到地图](./src/data/yw-pillar/function/game/pillars/)  <map_id>/tp.mcfunction 
- [掉虚空](./src/data/yw-pillar/function/game/pillars/location.mcfunction)

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
| 16  |  | 

## 特殊规则

- [定义](./src/data/yw-pillar/modules/main.bolt)  
- [调用](./src/data/yw-pillar/function/game/rule/main.mcfunction)  
- [设置-函数](./src/data/yw-pillar/function/settings/rule.mcfunction)  [设置-对话框](./src/data/yw-pillar/dialog/settings/rule.json)  

|  规则  |  描述  |
|  ----  | ----  |
| 1 小小的也很可爱 | 玩家尺寸缩小为原来的 1/3 |
| 2 大！大！大！ | 玩家尺寸增大为原来的 3/2 |
| 3 我的伙伴 | 获得一只狐狸 狐狸存活时,给玩家提供力量和生命回复 |


"file:///F:/MC/PrismLauncher/instances/fuck-bugjump/minecraft/saves/幸运之柱/datapacks/aj.pillar"