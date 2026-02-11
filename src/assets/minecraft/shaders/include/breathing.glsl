void processBreathing(inout vec4 vertex, float speed, float minScale, float maxScale) {
    float time = GameTime * speed * 1000.0;
    float breath = (sin(time) * 0.5 + 0.5);
    float scale = minScale + (maxScale - minScale) * breath;
    
    float vertexId = mod(float(gl_VertexID), 4.0);
    vec2 dir = vec2(0.0);
    
    if (vertexId < 0.5) dir = vec2(-1.0, -1.0);
    else if (vertexId < 1.5) dir = vec2(-1.0, 1.0);
    else if (vertexId < 2.5) dir = vec2(1.0, 1.0);
    else dir = vec2(1.0, -1.0);
    
    dir *= vec2(0.7, 1.0);
    
    float scaleAmount = (scale - 1.0) * 2.0;
    vertex.xy += dir * scaleAmount;

    applyProjection(vertex);
    finalize();
}
