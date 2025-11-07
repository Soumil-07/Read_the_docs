#include<math.h>
#include "dft.h"
#include"coefficients32_2D.h"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE])
{
    DTYPE X_R[SIZE];
    DTYPE X_I[SIZE];

    // For each output bin k
    for (int k = 0; k < SIZE; k++) {
        DTYPE sum_real = 0.0f;
        DTYPE sum_imag = 0.0f;

        // Accumulate contributions from all input samples n
        for (int n = 0; n < SIZE; n++) {

            DTYPE cos_val = cos_coeff_table[k][n];
            DTYPE sin_val = sin_coeff_table[k][n]; 

            DTYPE xr = real_sample[n];
            DTYPE xi = imag_sample[n];

            sum_real += xr * cos_val - xi * sin_val;
            sum_imag += xi * cos_val + xr * sin_val;
        }

        X_R[k] = sum_real;
        X_I[k] = sum_imag;
    }

    // Write results back to the provided arrays
    for (int i = 0; i < SIZE; i++) {
        real_sample[i] = X_R[i];
        imag_sample[i] = X_I[i];
    }
}
