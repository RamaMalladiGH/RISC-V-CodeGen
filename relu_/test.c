void relu_scalar(const float *in, float *out, size_t n) {
    for (size_t i = 0; i < n; i++) {
        out[i] = in[i] > 0.0f ? in[i] : 0.0f;
    }
}
