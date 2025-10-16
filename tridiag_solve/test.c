void tridiagonal_solve(float *x, float *a, float *b, float *c, float *d, int n) {
    float *c_prime = (float*)malloc(n * sizeof(float));
    float *d_prime = (float*)malloc(n * sizeof(float));
    
    // Forward sweep (hard to vectorize due to dependencies)
    c_prime[0] = c[0] / b[0];
    d_prime[0] = d[0] / b[0];
        
    for (int i = 1; i < n; i++) {
        float m = b[i] - a[i] * c_prime[i-1];
        c_prime[i] = c[i] / m;
        d_prime[i] = (d[i] - a[i] * d_prime[i-1]) / m;
    }           
            
    // Back substitution (also sequential)
    x[n-1] = d_prime[n-1];
    for (int i = n-2; i >= 0; i--) {
        x[i] = d_prime[i] - c_prime[i] * x[i+1];
    }
    
    free(c_prime);
    free(d_prime);
}
