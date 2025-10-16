float reduction_loop(float *a, int n) {
    float sum = 0.0f;
    
    // This loop should vectorize with reduction
    #pragma omp simd reduction(+:sum)
    for (int i = 0; i < n; i++) {
        sum += a[i] * a[i];
    }
    
    return sum;
}
