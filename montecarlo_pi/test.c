float monte_carlo_pi(int n_samples) {
    unsigned int seed = 12345;
    int inside_circle = 0;
        
    // Vectorization depends on vectorized random number generation
    #pragma omp simd reduction(+:inside_circle)
    for (int i = 0; i < n_samples; i++) {
        // Simple LCG for demonstration (not cryptographically secure)
        seed = (1103515245 * seed + 12345) & 0x7fffffff;
        float x = (float)seed / 0x7fffffff;

        seed = (1103515245 * seed + 12345) & 0x7fffffff;
        float y = (float)seed / 0x7fffffff;
        
        if (x*x + y*y <= 1.0f) {
            inside_circle++;
        }
    }
    
    return 4.0f * inside_circle / n_samples;
}
