// ============================================================
// OFFSET EFFECT
// ============================================================
// Creates offset effects for text, allowing X and Y axis movement
// Two modes:
// 1. Static offset: Fixed X and Y offset
// 2. Dynamic offset: Oscillating movement based on time
// ============================================================

void processStaticOffset(inout vec4 vertex, float offsetX, float offsetY) {
    // Apply static offset to all vertices
    vertex.x += offsetX;
    vertex.y += offsetY;
    
    applyProjection(vertex);
    finalize();
}

void processDynamicOffset(inout vec4 vertex, float speed, float amplitudeX, float amplitudeY) {
    // Calculate time-based oscillation
    float time = GameTime * speed * 1000.0;
    
    // Apply sine wave for smooth oscillation
    float offsetX = sin(time) * amplitudeX;
    float offsetY = cos(time * 0.7) * amplitudeY; // Different phase for Y axis
    
    // Apply dynamic offset to all vertices
    vertex.x += offsetX;
    vertex.y += offsetY;
    
    applyProjection(vertex);
    finalize();
}

void processOffset(inout vec4 vertex, float offsetX, float offsetY, float speed, float amplitude) {
    // Combined function that can handle both static and dynamic offset
    // If speed > 0, use dynamic offset, otherwise use static offset
    
    if (speed > 0.0) {
        // Dynamic offset mode
        float time = GameTime * speed * 1000.0;
        
        // Apply sine wave for smooth oscillation
        float dynamicX = sin(time) * amplitude + offsetX;
        float dynamicY = cos(time * 0.7) * amplitude + offsetY;
        
        vertex.x += dynamicX;
        vertex.y += dynamicY;
    } else {
        // Static offset mode
        vertex.x += offsetX;
        vertex.y += offsetY;
    }
    
    applyProjection(vertex);
    finalize();
}