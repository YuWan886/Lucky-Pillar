// ============================================================
// SLIDING TITLE EFFECT
// ============================================================
// Creates a sliding animation that moves text from above to normal position,
// stays for a while, then slides out.
// Based on original sliding titles code by @trplnr
// ============================================================

void processSliding(inout vec4 vertex, float speed, float offset, float scale, bool fade) {
    // 修复滑动效果：文字从上方滑入到正常位置，停留，然后滑出
    // 修复GameTime问题：改为使用vertexColor.a作为动画进度，实现标题动画重置
    
    // 保存原始的vertexColor.a值，因为applyColorTexture()会修改它
    float originalAlpha = vertexColor.a;
    
    // 检测是否为标题文字（通过Position.z值）
    // 标题文字的Position.z通常为2400.0、2400.06、2400.12等值
    bool isTitleText = abs(vertex.z - 2400.0) < 0.1 || 
                       abs(vertex.z - 2400.06) < 0.1 || 
                       abs(vertex.z - 2400.12) < 0.1;
    
    float verticalMovement = 0.0;
    
    if (isTitleText) {
        // 对于标题文字：使用vertexColor.a作为动画进度，像原始代码一样
        // Minecraft标题的透明度从0到1再到0，创建一个完整的动画循环
        float t = originalAlpha;
        
        // 使用缓动函数：平滑开始和结束（与原始代码相同）
        float pos = t * t * (3.0 - 2.0 * t);
        
        // 计算垂直位移：从上方(-offset)滑动到正常位置(0)
        // 原始代码使用不同的计算，我们简化一下
        verticalMovement = mix(-offset * 50.0, 0.0, pos);
    } else {
        // 对于普通文字：使用GameTime和三个阶段的比例
        float time = GameTime * speed * 1000.0;
        float cycleDuration = 3.0;
        float phase = fract(time / cycleDuration);
        
        // 定义三个阶段的比例
        float slideInRatio = 0.2;  
        float stayRatio = 0.6;     
        float slideOutRatio = 0.2;  
        
        if (phase < slideInRatio) {
            // 滑入阶段：从上方(-offset)滑动到正常位置(0)
            float t = phase / slideInRatio; // 0到1
            t = t * t * (3.0 - 2.0 * t); // 缓动函数
            verticalMovement = mix(-offset * 50.0, 0.0, t);
        } else if (phase < slideInRatio + stayRatio) {
            // 停留阶段：保持在正常位置
            verticalMovement = 0.0;
        } else {
            // 滑出阶段：从正常位置(0)滑动到上方(-offset)
            float t = (phase - slideInRatio - stayRatio) / slideOutRatio;
            t = t * t * (3.0 - 2.0 * t); // 缓动函数
            verticalMovement = mix(0.0, -offset * 50.0, t);
        }
    }
    
    // 应用垂直滑动
    vertex.y += verticalMovement;
    
    // 应用缩放（使用与其他效果相同的顶点移动方法，保持文字居中）
    if (scale != 1.0) {
        float vertexId = mod(float(gl_VertexID), 4.0);
        vec2 dir = vec2(0.0);
        
        if (vertexId < 0.5) dir = vec2(-1.0, -1.0);
        else if (vertexId < 1.5) dir = vec2(-1.0, 1.0);
        else if (vertexId < 2.5) dir = vec2(1.0, 1.0);
        else dir = vec2(1.0, -1.0);
        
        dir *= vec2(0.7, 1.0);
        
        float scaleAmount = (scale - 1.0) * 2.0;
        vertex.xy += dir * scaleAmount;
    }
    
    // 应用颜色纹理
    applyColorTexture();
    
    // 应用淡入淡出效果
    if (fade) {
        if (isTitleText) {
            // 对于标题文字：使用原始的透明度，Minecraft已经处理了淡入淡出
            // 不需要额外处理
        } else {
            // 对于普通文字：基于动画阶段淡入淡出
            float time = GameTime * speed * 1000.0;
            float cycleDuration = 3.0;
            float phase = fract(time / cycleDuration);
            
            float slideInRatio = 0.2;  
            float stayRatio = 0.6;     
            float slideOutRatio = 0.2;
            
            float fadeAlpha = 1.0;
            if (phase < slideInRatio) {
                // 滑入阶段：从0淡入到1
                float t = phase / slideInRatio;
                fadeAlpha = t * t * (3.0 - 2.0 * t);
            } else if (phase > slideInRatio + stayRatio) {
                // 滑出阶段：从1淡出到0
                float t = (phase - slideInRatio - stayRatio) / slideOutRatio;
                fadeAlpha = 1.0 - t * t * (3.0 - 2.0 * t);
            }
            vertexColor.a *= fadeAlpha;
        }
    } else {
        vertexColor.a = 1.0; // 无淡入淡出
    }
    
    // 应用投影并完成
    applyProjection(vertex);
    finalize();
}