#include "dft.h"
#include "coefficients1024.h"

typedef int idx_t;

// Set unroll factor here
#define UNROLL_FACTOR 32

void dft(DTYPE real_sample[SIZE],
         DTYPE imag_sample[SIZE],
         DTYPE real_op[SIZE],
         DTYPE imag_op[SIZE]) {

#pragma HLS INTERFACE mode=ap_memory port=real_sample
#pragma HLS INTERFACE mode=ap_memory port=imag_sample
#pragma HLS INTERFACE mode=ap_memory port=real_op
#pragma HLS INTERFACE mode=ap_memory port=imag_op

#pragma HLS ARRAY_PARTITION variable=real_sample cyclic factor=UNROLL_FACTOR dim=1
#pragma HLS ARRAY_PARTITION variable=imag_sample cyclic factor=UNROLL_FACTOR dim=1
#pragma HLS ARRAY_PARTITION variable=real_op cyclic factor=UNROLL_FACTOR dim=1
#pragma HLS ARRAY_PARTITION variable=imag_op cyclic factor=UNROLL_FACTOR dim=1

    // Coefficient tables in ROM
    const DTYPE *cos_tab = cos_coefficients_table;
    const DTYPE *sin_tab = sin_coefficients_table;
#pragma HLS RESOURCE variable=cos_tab core=ROM_1P
#pragma HLS RESOURCE variable=sin_tab core=ROM_1P

    // Initialize outputs
init_loop:
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE II=1
        real_op[i] = 0;
        imag_op[i] = 0;
    }

bin_loop:
    for (int i = 0; i < SIZE; i++) {
#pragma HLS UNROLL factor=UNROLL_FACTOR
        DTYPE acc_r = 0;
        DTYPE acc_i = 0;

    sample_loop:
        for (int j = 0; j < SIZE; j++) {
#pragma HLS PIPELINE II=2
#pragma HLS ALLOCATION instances=mul limit=1 operation
            int index = (i * j) & (SIZE - 1); // cheaper than modulo
            DTYPE c = cos_tab[index];
            DTYPE s = sin_tab[index];
            DTYPE rj = real_sample[j];
            DTYPE ij = imag_sample[j];

            acc_r += (rj * c - ij * s);
            acc_i += (rj * s + ij * c);
        }

        real_op[i] = acc_r;
        imag_op[i] = acc_i;
    }
}

