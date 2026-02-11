// ============================================================
// TEXT EFFECTS CONFIGURATION
// ============================================================
// Define color-to-effect mappings here.
// Usage: TEXT_EFFECT(R, G, B) { apply_effect(); }
// ============================================================

// --- 1. Basic Effects ---

// Shake (#FFFF56)
TEXT_EFFECT(255, 255, 86) {
    apply_shake();
}

// Wavy (#FFFF57)
TEXT_EFFECT(255, 255, 87) {
    apply_wavy();
}

// Rainbow (#FFFF58)
TEXT_EFFECT(255, 255, 88) {
    apply_rainbow();
}

// Bouncy (#FFFF59)
TEXT_EFFECT(255, 255, 89) {
    apply_bouncy();
}

// Blinking (#FFFF5A)
TEXT_EFFECT(255, 255, 90) {
    apply_blinking();
}

// Pulse (#FFFF5B)
TEXT_EFFECT(255, 255, 91) {
    apply_pulse();
}

// --- 2. Motion Effects ---

// Spin (#FFFF5C)
TEXT_EFFECT(255, 255, 92) {
    apply_spin();
}

// Sequential Spin (#FFFF5D)
TEXT_EFFECT(255, 255, 93) {
    apply_sequential_spin();
}

// Fade (#FFFF5E)
TEXT_EFFECT(255, 255, 94) {
    apply_fade();
}

// Iterating Jump (#FFFF5F)
TEXT_EFFECT(255, 255, 95) {
    apply_iterating();
}

// --- 3. Special Effects ---

// Glitch (#FFFF60)
TEXT_EFFECT(255, 255, 96) {
    apply_glitch();
}

// --- 4. Combinations ---

// Wavy + Rainbow (#FFFF61)
TEXT_EFFECT(255, 255, 97) {
    apply_wavy();
    apply_rainbow();
}

// Bouncy + Rainbow (#FFFF62)
TEXT_EFFECT(255, 255, 98) {
    apply_bouncy();
    apply_rainbow();
}

// Custom Parameters (Fast Shake) (#C86432)
TEXT_EFFECT(200, 100, 50) {
    apply_shake(2.0, 1.5);
    apply_color(255, 255, 85);
}

// Shadow Support Example (Text + Shadow)
TEXT_EFFECT_WITH_SHADOW(255, 200, 200) {
    apply_wavy(5000.0, 0.5);
}

// --- 5. Scale Effect ---

// Scale (#FFFF63) - 1.5x default
TEXT_EFFECT(255, 255, 99) {
    apply_scale();
}

// Scale with custom factor (#FFFF64) - 2.0x
TEXT_EFFECT(255, 255, 100) {
    apply_scale(2.0);
}

// Scale with custom factor (#FFFF65) - 0.8x (smaller)
TEXT_EFFECT(255, 255, 101) {
    apply_scale(0.8);
}

// Scale with rainbow (#FFFF66)
TEXT_EFFECT(255, 255, 102) {
    apply_scale(1.8);
    apply_rainbow();
}

// --- 6. New Dynamic Effects ---

// Breathing (#FFFF67)
TEXT_EFFECT(255, 255, 103) {
    apply_breathing();
}

// Breathing with custom parameters (#FFFF68)
TEXT_EFFECT(255, 255, 104) {
    apply_breathing(0.5, 0.7, 1.3);
}

// Color Gradient (#FFFF69)
TEXT_EFFECT(255, 255, 105) {
    apply_gradient();
}

// Fast Color Gradient (#FFFF6A)
TEXT_EFFECT(255, 255, 106) {
    apply_gradient(2.0, 2.0);
}

// Combination: Breathing + Rainbow (#FFFF6B)
TEXT_EFFECT(255, 255, 107) {
    apply_breathing(0.8, 0.9, 1.1);
    apply_rainbow();
}

// --- 7. Sliding Title Effect ---

// Sliding Title with default parameters (#FFFF6C)
TEXT_EFFECT(255, 255, 108) {
    apply_sliding();
}

// Sliding Title with custom speed (#FFFF6D)
TEXT_EFFECT(255, 255, 109) {
    apply_sliding(0.5);
}

// Sliding Title with custom offset (#FFFF6E)
TEXT_EFFECT(255, 255, 110) {
    apply_sliding(1.0, 0.15);
}

// Sliding Title with full customization (#FFFF6F)
TEXT_EFFECT(255, 255, 111) {
    apply_sliding(0.8, 0.2, 0.85, false);
}

// Sliding Title with rainbow (#FFFF70)
TEXT_EFFECT(255, 255, 112) {
    apply_sliding(1.0, 0.25, 0.75, true);
    apply_rainbow();
}

// --- 8. Offset Effect ---

// Static offset with default parameters (#FFFF71)
TEXT_EFFECT(255, 255, 113) {
    apply_offset();
}

// Static offset with custom X and Y (#FFFF72)
TEXT_EFFECT(255, 255, 114) {
    apply_offset(0.0, 10.0, 0.0, 0.0);
}

// Dynamic offset with oscillation (#FFFF73)
TEXT_EFFECT(255, 255, 115) {
    apply_offset(0.0, 0.0, 1.0, 8.0);
}

// Offset with rainbow (#FFFF74)
TEXT_EFFECT(255, 255, 116) {
    apply_offset(5.0, 5.0, 0.5, 3.0);
    apply_rainbow();
}

// Shadow support with offset (#FFFF75)
TEXT_EFFECT_WITH_SHADOW(255, 255, 117) {
    apply_offset(10.0, 5.0);
}
