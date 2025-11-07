#include<math.h>
#include "dft.h"
#include"coefficients32.h"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE])
{
//Write your code here
    DTYPE X_R[SIZE];
    DTYPE X_I[SIZE];
    
    for (int k = 0; k < SIZE; k++) {
        DTYPE sum_real = 0;
        DTYPE sum_imag = 0;

        for (int n = 0; n < SIZE; n++) {
            DTYPE angle = 2 * M_PI * k * n / SIZE;
            sum_real += real_sample[n] * cos(angle) + imag_sample[n] * sin(angle);
            sum_imag += imag_sample[n] * cos(angle) - real_sample[n] * sin(angle);
        }

        X_R[k] = sum_real;
        X_I[k] = sum_imag;
    }

    // Write back results
    for (int i = 0; i < SIZE; i++) {
        real_sample[i] = X_R[i];
        imag_sample[i] = X_I[i];
    }

}
