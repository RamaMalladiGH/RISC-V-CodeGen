void softmax_scalar(const float *in, float *out, size_t n) {
    float max_val = -INFINITY;
    for (size_t i = 0; i < n; i++) {
        if (in[i] > max_val) max_val = in[i];
    }
    
    float sum = 0.0f;
    for (size_t i = 0; i < n; i++) {
        out[i] = expf(in[i] - max_val);
        sum += out[i];
    }
    
    for (size_t i = 0; i < n; i++) {
        out[i] /= sum;
    }
}
