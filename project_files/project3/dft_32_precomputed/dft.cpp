#include<math.h>
#include "dft.h"
#include"coefficients32.h"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE], DTYPE X_R[SIZE], DTYPE X_I[SIZE])
{
    #pragma HLS ARRAY_PARTITION variable=real_sample block factor=32 dim=1
    #pragma HLS ARRAY_PARTITION variable=imag_sample block factor=32 dim=1
    #pragma HLS ARRAY_PARTITION variable=X_R block factor=32 dim=1
    #pragma HLS ARRAY_PARTITION variable=X_I block factor=32 dim=1
    // For each output bin k
    for (int k = 0; k < SIZE; k++) {
        DTYPE sum_real = 0.0f;
        DTYPE sum_imag = 0.0f;

        // Accumulate contributions from all input samples n
        for (int n = 0; n < SIZE; n++) {
	    #pragma HLS unroll factor=1
            int index = (k * n) % SIZE;

            DTYPE cos_val = cos_coefficients_table[index];
            DTYPE sin_tbl_val = sin_coefficients_table[index]; 

            DTYPE xr = real_sample[n];
            DTYPE xi = imag_sample[n];

            sum_real += xr * cos_val - xi * sin_tbl_val;
            sum_imag += xi * cos_val + xr * sin_tbl_val;
        }

        X_R[k] = sum_real;
        X_I[k] = sum_imag;
    }

}
