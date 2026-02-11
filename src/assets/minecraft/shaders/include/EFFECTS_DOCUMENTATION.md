# Minecraft 文字效果着色器使用文档

## 概述

本着色器系统为 Minecraft 文字渲染添加了多种动态和静态效果。通过在文字颜色中使用特定的 RGB 值，可以触发不同的文字效果。

## 快速开始

1. **启用效果**：在 Minecraft 中使用特定颜色的文字
2. **颜色代码**：使用十六进制颜色代码或 RGB 值
3. **配置**：编辑 `_config.glsl` 文件自定义效果映射

## 效果列表

### 基础效果
| 效果 | 颜色代码 | RGB 值 | 描述 |
|------|----------|--------|------|
| 抖动 | #FFFF56 | (255, 255, 86) | 文字随机抖动 |
| 波浪 | #FFFF57 | (255, 255, 87) | 波浪形运动 |
| 彩虹 | #FFFF58 | (255, 255, 88) | 颜色循环变化 |
| 弹跳 | #FFFF59 | (255, 255, 89) | 上下弹跳 |
| 闪烁 | #FFFF5A | (255, 255, 90) | 闪烁显示/隐藏 |
| 脉动 | #FFFF5B | (255, 255, 91) | 周期性放大缩小 |

### 运动效果
| 效果 | 颜色代码 | RGB 值 | 描述 |
|------|----------|--------|------|
| 旋转 | #FFFF5C | (255, 255, 92) | 整体旋转 |
| 顺序旋转 | #FFFF5D | (255, 255, 93) | 字符依次旋转 |
| 淡入淡出 | #FFFF5E | (255, 255, 94) | 透明度变化 |
| 迭代跳跃 | #FFFF5F | (255, 255, 95) | 字符依次跳跃 |

### 特殊效果
| 效果 | 颜色代码 | RGB 值 | 描述 |
|------|----------|--------|------|
| 故障 | #FFFF60 | (255, 255, 96) | 数字故障效果 |
| 缩放 | #FFFF63 | (255, 255, 99) | 静态缩放 (1.5x) |
| 呼吸 | #FFFF67 | (255, 255, 103) | 呼吸式缩放 |
| 颜色渐变 | #FFFF69 | (255, 255, 105) | 颜色平滑渐变 |
| 滑动标题 | #FFFF6C | (255, 255, 108) | 从顶部滑入的标题效果 |
| 偏移 | #FFFF71 | (255, 255, 113) | 文字XY轴偏移效果 |

### 组合效果
| 效果 | 颜色代码 | RGB 值 | 描述 |
|------|----------|--------|------|
| 波浪+彩虹 | #FFFF61 | (255, 255, 97) | 波浪运动+彩虹颜色 |
| 弹跳+彩虹 | #FFFF62 | (255, 255, 98) | 弹跳+彩虹颜色 |
| 缩放+彩虹 | #FFFF66 | (255, 255, 102) | 缩放+彩虹颜色 |
| 呼吸+彩虹 | #FFFF6F | (255, 255, 111) | 呼吸+彩虹颜色 |
| 滑动标题+彩虹 | #FFFF70 | (255, 255, 112) | 滑动标题+彩虹颜色 |
| 偏移+彩虹 | #FFFF74 | (255, 255, 116) | 偏移+彩虹颜色 |

## 自定义配置

### 编辑 _config.glsl

在 `_config.glsl` 文件中，可以自定义颜色到效果的映射：

```glsl
// 自定义缩放效果
TEXT_EFFECT(255, 200, 150) {  // 自定义颜色
    apply_scale(2.0);          // 2倍缩放
    apply_rainbow();           // 添加彩虹效果
}
```

### 参数调整

每个效果都有可调整的参数：

```glsl
// 快速抖动
TEXT_EFFECT(200, 100, 50) {
    apply_shake(2.0, 1.5);    // 速度2.0，强度1.5
    apply_color(255, 255, 85); // 自定义显示颜色
}

// 自定义呼吸效果
TEXT_EFFECT(255, 255, 104) {
    apply_breathing(0.5, 0.7, 1.3); // 速度0.5，最小0.7x，最大1.3x
}

```

## 新效果详解

### 1. 缩放效果 (Scale)
- **静态缩放**：固定倍数的文字缩放
- **配置参数**：`SCALE_FACTOR` (默认 1.5)
- **使用示例**：
  ```glsl
  apply_scale();           // 使用默认1.5倍
  apply_scale(2.0);        // 2倍缩放
  apply_scale(0.8);        // 0.8倍（缩小）
  ```

### 2. 呼吸效果 (Breathing)
- **动态效果**：文字像呼吸一样缓慢放大缩小
- **配置参数**：
  - `BREATHING_SPEED`：呼吸速度 (默认 1.0)
  - `BREATHING_MIN_SCALE`：最小缩放 (默认 0.8)
  - `BREATHING_MAX_SCALE`：最大缩放 (默认 1.2)
- **使用示例**：
  ```glsl
  apply_breathing();                    // 使用默认参数
  apply_breathing(0.5);                 // 速度0.5
  apply_breathing(0.8, 0.9, 1.1);       // 速度0.8，范围0.9-1.1
  ```

### 3. 颜色渐变效果 (Color Gradient)
- **动态效果**：文字颜色随时间平滑渐变
- **配置参数**：
  - `GRADIENT_SPEED`：渐变速度 (默认 0.3)
  - `GRADIENT_HUE_SHIFT`：色相偏移 (默认 2.0)
- **使用示例**：
  ```glsl
  apply_gradient();                     // 使用默认参数
  apply_gradient(2.0);                  // 速度2.0
  apply_gradient(2.0, 2.0);             // 速度2.0，色相偏移2.0
  ```

### 4. 滑动标题效果 (Sliding Title)
- **动态效果**：文字从屏幕顶部滑入，带有缓动动画
- **配置参数**：
  - `SLIDE_SPEED`：滑动速度 (默认 1.0)
  - `SLIDE_OFFSET`：从顶部开始的偏移量 (默认 0.25)
  - `SLIDE_SCALE`：标题缩放比例 (默认 0.75)
  - `SLIDE_FADE`：是否启用淡入淡出 (默认 false)
- **使用示例**：
  ```glsl
  apply_sliding();                      // 使用默认参数
  apply_sliding(0.5);                   // 速度0.5
  apply_sliding(1.0, 0.15);             // 速度1.0，偏移0.15
  apply_sliding(0.8, 0.2, 0.85, false); // 完全自定义参数
  ```

### 5. 偏移效果 (Offset)
- **静态偏移**：固定X轴和Y轴偏移
- **动态偏移**：基于时间的振荡偏移
- **配置参数**：
  - `OFFSET_X`：X轴偏移量 (默认 10.0)
  - `OFFSET_Y`：Y轴偏移量 (默认 10.0)
  - `OFFSET_SPEED`：动态偏移速度 (默认 1.0)
  - `OFFSET_AMPLITUDE`：动态偏移幅度 (默认 5.0)
- **使用示例**：
  ```glsl
  apply_offset();                       // 使用默认参数 (静态偏移)
  apply_offset(15.0, 10.0);             // 静态偏移 X=15, Y=10
  apply_offset(0.0, 0.0, 1.0, 8.0);     // 动态偏移，速度1.0，幅度8.0
  apply_offset(5.0, 5.0, 0.5, 3.0);     // 混合偏移：基础偏移+动态振荡
  ```

## 其他效果详解

### 6. 抖动效果 (Shake)
- **动态效果**：文字在X轴和Y轴上随机抖动，模拟震动效果
- **配置参数**：
  - `SHAKE_SPEED`：抖动速度 (默认 1.0)
  - `SHAKE_INTENSITY`：抖动强度 (默认 1.0)
- **使用示例**：
  ```glsl
  apply_shake();                     // 使用默认参数
  apply_shake(2.0, 1.5);             // 速度2.0，强度1.5
  ```

### 7. 波浪效果 (Wavy)
- **动态效果**：文字像波浪一样上下起伏运动
- **配置参数**：
  - `WAVE_SPEED`：波浪速度 (默认 12000.0)
  - `WAVE_AMPLITUDE`：波浪幅度 (默认 0.5)
  - `WAVE_X_FREQUENCY`：X轴频率，控制字符间相位差 (默认 0.35)
- **使用示例**：
  ```glsl
  apply_wavy();                      // 使用默认参数
  apply_wavy(8000.0);                // 速度8000.0
  apply_wavy(10000.0, 0.8);          // 速度10000.0，幅度0.8
  apply_wavy(12000.0, 0.5, 0.5);     // 完全自定义参数
  ```

### 8. 彩虹效果 (Rainbow)
- **动态效果**：文字颜色随时间循环变化，呈现彩虹色渐变
- **配置参数**：
  - `RAINBOW_SPEED`：颜色变化速度 (默认 500.0)
- **使用示例**：
  ```glsl
  apply_rainbow();                   // 使用默认参数
  apply_rainbow(1000.0);             // 速度1000.0
  ```

### 9. 弹跳效果 (Bouncy)
- **动态效果**：文字上下弹跳，类似弹簧运动
- **配置参数**：
  - `BOUNCE_SPEED`：弹跳速度 (默认 3000.0)
  - `BOUNCE_AMPLITUDE`：弹跳幅度 (默认 1.0)
- **使用示例**：
  ```glsl
  apply_bouncy();                    // 使用默认参数
  apply_bouncy(2000.0);              // 速度2000.0
  apply_bouncy(4000.0, 1.5);         // 速度4000.0，幅度1.5
  ```

### 10. 闪烁效果 (Blinking)
- **动态效果**：文字周期性显示和隐藏，实现闪烁效果
- **配置参数**：
  - `BLINK_SPEED`：闪烁速度 (默认 0.5)
- **使用示例**：
  ```glsl
  apply_blinking();                  // 使用默认参数
  apply_blinking(1.0);               // 速度1.0
  ```

### 11. 脉动效果 (Pulse)
- **动态效果**：文字周期性放大缩小，类似心跳脉动
- **配置参数**：
  - `PULSE_SPEED`：脉动速度 (默认 20.0)
  - `PULSE_SIZE`：脉动大小变化幅度 (默认 0.4)
- **使用示例**：
  ```glsl
  apply_pulse();                     // 使用默认参数
  apply_pulse(30.0);                 // 速度30.0
  apply_pulse(15.0, 0.6);            // 速度15.0，大小0.6
  ```

### 12. 旋转效果 (Spin)
- **动态效果**：文字整体围绕中心点旋转
- **配置参数**：
  - `SPIN_SPEED`：旋转速度 (默认 2500.0)
- **使用示例**：
  ```glsl
  apply_spin();                      // 使用默认参数
  apply_spin(5000.0);                // 速度5000.0
  ```

### 13. 顺序旋转效果 (Sequential Spin)
- **动态效果**：字符依次旋转，形成波浪式旋转效果
- **配置参数**：
  - `ONCE_SPIN_SPEED`：单个字符旋转速度 (默认 5000.0)
- **使用示例**：
  ```glsl
  apply_sequential_spin();           // 使用默认参数
  apply_sequential_spin(8000.0);     // 速度8000.0
  ```

### 14. 淡入淡出效果 (Fade)
- **动态效果**：文字透明度周期性变化，实现淡入淡出效果
- **配置参数**：
  - `FADE_SPEED`：淡入淡出速度 (默认 1.0)
- **使用示例**：
  ```glsl
  apply_fade();                      // 使用默认参数
  apply_fade(2.0);                   // 速度2.0
  ```

### 15. 迭代跳跃效果 (Iterating)
- **动态效果**：字符依次上下跳跃，形成波浪式运动
- **配置参数**：
  - `ITERATING_SPEED`：跳跃速度 (默认 1.0)
  - `ITERATING_SPACE`：字符间间距影响 (默认 1.0)
- **使用示例**：
  ```glsl
  apply_iterating();                 // 使用默认参数
  apply_iterating(2.0);              // 速度2.0
  apply_iterating(1.5, 1.2);         // 速度1.5，间距1.2
  ```

### 16. 故障效果 (Glitch)
- **动态效果**：文字出现数字故障效果，模拟显示错误
- **配置参数**：
  - `GLITCH_SPEED`：故障速度 (默认 1.0)
  - `GLITCH_INTENSITY`：故障强度 (默认 2.0)
- **使用示例**：
  ```glsl
  apply_glitch();                    // 使用默认参数
  apply_glitch(2.0, 3.0);            // 速度2.0，强度3.0
  ```

### 17. 组合效果详解

#### 波浪+彩虹效果 (Wavy + Rainbow)
- **复合效果**：文字同时具有波浪运动和彩虹颜色
- **配置示例**：
  ```glsl
  TEXT_EFFECT(255, 255, 97) {
      apply_wavy();
      apply_rainbow();
  }
  ```

#### 弹跳+彩虹效果 (Bouncy + Rainbow)
- **复合效果**：文字同时弹跳并显示彩虹颜色
- **配置示例**：
  ```glsl
  TEXT_EFFECT(255, 255, 98) {
      apply_bouncy();
      apply_rainbow();
  }
  ```

#### 缩放+彩虹效果 (Scale + Rainbow)
- **复合效果**：文字缩放并显示彩虹颜色
- **配置示例**：
  ```glsl
  TEXT_EFFECT(255, 255, 102) {
      apply_scale(1.8);
      apply_rainbow();
  }
  ```

#### 呼吸+彩虹效果 (Breathing + Rainbow)
- **复合效果**：文字呼吸式缩放并显示彩虹颜色
- **配置示例**：
  ```glsl
  TEXT_EFFECT(255, 255, 111) {
      apply_breathing(0.8, 0.9, 1.1);
      apply_rainbow();
  }
  ```

#### 滑动标题+彩虹效果 (Sliding Title + Rainbow)
- **复合效果**：文字从顶部滑入并显示彩虹颜色
- **配置示例**：
  ```glsl
  TEXT_EFFECT(255, 255, 112) {
      apply_sliding(1.0, 0.25, 0.75, true);
      apply_rainbow();
  }
  ```

#### 偏移+彩虹效果 (Offset + Rainbow)
- **复合效果**：文字偏移并显示彩虹颜色
- **配置示例**：
  ```glsl
  TEXT_EFFECT(255, 255, 116) {
      apply_offset(5.0, 5.0, 0.5, 3.0);
      apply_rainbow();
  }
  ```

- **指令示例**：
```
  tellraw @a {text:"抖动",color:"#FFFF56",shadow_color:0}
  tellraw @a {text:"波浪",color:"#FFFF57",shadow_color:0}
  tellraw @a {text:"彩虹",color:"#FFFF58",shadow_color:0}
  tellraw @a {text:"弹跳",color:"#FFFF59",shadow_color:0}
  tellraw @a {text:"闪烁",color:"#FFFF5A",shadow_color:0}
  tellraw @a {text:"脉动",color:"#FFFF5B",shadow_color:0}
  tellraw @a {text:"旋转",color:"#FFFF5C",shadow_color:0}
  tellraw @a {text:"顺序旋转",color:"#FFFF5D",shadow_color:0}
  tellraw @a {text:"淡入淡出",color:"#FFFF5E",shadow_color:0}
  tellraw @a {text:"迭代跳跃",color:"#FFFF5F",shadow_color:0}
  tellraw @a {text:"故障",color:"#FFFF60",shadow_color:0}
  tellraw @a {text:"缩放",color:"#FFFF63",shadow_color:0}
  tellraw @a {text:"呼吸",color:"#FFFF67",shadow_color:0}
  tellraw @a {text:"颜色渐变",color:"#FFFF69",shadow_color:0}
  tellraw @a {text:"滑动",color:"#FFFF6C",shadow_color:0}
  tellraw @a {text:"偏移(动态)",color:"#FFFF71",shadow_color:0}
  tellraw @a {text:"偏移(静态)",color:"#FFFF72",shadow_color:0}
```

## 高级用法

### 效果组合
可以将多个效果组合使用：

```glsl
TEXT_EFFECT(255, 255, 150) {
    apply_wavy();          // 波浪效果
    apply_rainbow();       // 彩虹颜色
    apply_scale(1.2);      // 1.2倍缩放
}
```

### 阴影支持
使用 `TEXT_EFFECT_WITH_SHADOW` 宏可以让效果同时应用于文字和阴影：

```glsl
TEXT_EFFECT_WITH_SHADOW(255, 200, 200) {
    apply_wavy(5000.0, 0.5);  // 波浪效果
}
```

### 自定义颜色
使用 `apply_color()` 函数可以设置显示颜色（不同于触发颜色）：

```glsl
TEXT_EFFECT(200, 100, 50) {
    apply_shake(2.0, 1.5);
    apply_color(255, 255, 85);  // 显示为黄色
}
```

## 技术细节

### 文件结构
- `_config.glsl` - 颜色到效果的映射配置
- `defaults.glsl` - 效果默认参数
- `text_effects_api.glsl` - 效果API函数
- `apply_effect.glsl` - 效果处理逻辑
- `text_effects_utils.glsl` - 工具函数和导入
- 各个效果文件：`scale.glsl`, `breathing.glsl`, `gradient.glsl`, `sliding.glsl`, `offset.glsl`, `wavy.glsl`, `bouncy.glsl`, `blinking.glsl`, `pulse.glsl`, `spin.glsl`, `shake.glsl`, `fade.glsl`, `iterating.glsl`, `glitch.glsl`, `rainbow.glsl` 等

### 添加新效果
要添加新效果，需要：
1. 在 `defaults.glsl` 中添加默认参数
2. 在 `text_effects_api.glsl` 中添加API函数
3. 创建效果实现文件（如 `neweffect.glsl`）
4. 在 `apply_effect.glsl` 中添加处理分支
5. 在 `text_effects_utils.glsl` 中导入新文件
6. 在 `_config.glsl` 中添加配置示例