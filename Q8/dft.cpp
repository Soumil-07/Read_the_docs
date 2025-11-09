#include "dft.h"
#include "coefficients1024.h"

typedef int idx_t;

#define UNROLL_FACTOR 8

void dft(DTYPE real_sample[SIZE],
         DTYPE imag_sample[SIZE],
	 DTYPE real_op[SIZE],
DTYPE imag_op[SIZE]) {

	#pragma HLS ARRAY_PARTITION variable=real_op cyclic factor=UNROLL_FACTOR dim=1
	#pragma HLS ARRAY_PARTITION variable=imag_op cyclic factor=UNROLL_FACTOR dim=1

    for (int j = 0; j < SIZE; j++) {
        DTYPE acc_r = 0;
        DTYPE acc_i = 0;
    	DTYPE rj = real_sample[j];
    	DTYPE ij = imag_sample[j];

        for (int i = 0; i < SIZE; i++) {
#pragma HLS UNROLL factor=UNROLL_FACTOR
            int index = (i * j) & (SIZE - 1); // cheaper than modulo
            DTYPE c = cos_coefficients_table[index];
            DTYPE s = sin_coefficients_table[index];

            real_op[i] += (rj * c - ij * s);
            imag_op[i] += (rj * s + ij * c);
        }

    }
}

