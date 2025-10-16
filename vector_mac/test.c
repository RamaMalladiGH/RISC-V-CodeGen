float reduction_loop(float *a, float *b, float c, int n) {
    for (int i = 0; i < n; i++) {
        b[i] += c*a[i];
    }
}
