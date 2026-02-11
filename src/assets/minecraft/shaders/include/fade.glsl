void processFadeEffect(inout vec4 vertex, float speed) {
    if (speed <= 0.0) speed = FADE_SPEED;
    
    applyProjection(vertex);
    
    // 使用与其他效果一致的时间缩放 (1000.0)
    float alpha = sin(GameTime * 1000.0 * speed);
    alpha = (alpha + 1.0) * 0.5;
    
    vec4 texColor = texelFetch(Sampler2, UV2 / 16, 0);
    
    vertexColor = Color * texColor;
    vertexColor.a *= alpha; 
    
    finalize();
}
