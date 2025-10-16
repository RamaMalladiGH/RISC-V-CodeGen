void spmv_csr(float *y, float *val, int *col_idx, int *row_ptr, float *x, int n_rows) {
    for (int i = 0; i < n_rows; i++) {
        float sum = 0.0f;
        int row_start = row_ptr[i];
        int row_end = row_ptr[i + 1];

        // #pragma unroll(2) 
        #pragma omp simd reduction(+:sum)
        for (int j = row_start; j < row_end; j++) {
            sum += val[j] * x[col_idx[j]];  // Irregular access pattern
        }   
        y[i] = sum;
    }   
}
