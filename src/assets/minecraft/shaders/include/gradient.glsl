void processGradient(inout vec4 vertex, float speed, float hueShift) {
    float time = GameTime * speed * 1000.0;
    
    // 基于时间和顶点位置计算色相偏移
    float hue = mod(time * 0.001 + vertex.x * 0.005 + vertex.y * 0.005, 1.0) * hueShift;
    
    // 简化颜色计算：使用正弦波创建彩虹效果
    float r = 0.5 + 0.5 * sin(hue * 6.28318);
    float g = 0.5 + 0.5 * sin(hue * 6.28318 + 2.094); // 120度相位偏移
    float b = 0.5 + 0.5 * sin(hue * 6.28318 + 4.188); // 240度相位偏移
    
    vec3 rgb = vec3(r, g, b);
    
    // 应用颜色 - 注意：这里直接设置 vertexColor
    // 在 apply_effect.glsl 中，这个效果跳过了 APPLY_COLOR_OR_RAINBOW
    vertexColor = vec4(rgb, 1.0) * texelFetch(Sampler2, UV2 / 16, 0);
    
    applyProjection(vertex);
    finalize();
}
