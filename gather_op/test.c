void gather_scatter(float *out, float *in, int *indices, int n) {
    #pragma omp simd
    for (int i = 0; i < n; i++) {
        out[i] = in[indices[i]] * 2.0f;  // gather operation
    }
}
