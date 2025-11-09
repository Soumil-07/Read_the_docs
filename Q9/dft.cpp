#include "dft.h"
#include "coefficients1024.h" 

void dft(
		hls::stream<DTYPE>& xx_R,
		hls::stream<DTYPE>& xx_I,
		hls::stream<DTYPE>& XX_R,
		hls::stream<DTYPE>& XX_I
) {
    DTYPE In_R_local[SIZE];
    DTYPE In_I_local[SIZE];
    read_loop:
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE
        In_R_local[i] = xx_R.read();
        In_I_local[i] = xx_I.read();
    }
    compute_write_loop:
    for (int k = 0; k < SIZE; k++) {
        DTYPE sum_r = 0;
        DTYPE sum_i = 0;

        inner_compute_loop:
        for (int n = 0; n < SIZE; n++) {
#pragma HLS PIPELINE 
            
            idx_t idx = (k * n) % SIZE;
            DTYPE c = cos_coefficients_table[idx];
            DTYPE s = sin_coefficients_table[idx]; 

            DTYPE r_val = In_R_local[n];
            DTYPE i_val = In_I_local[n];

            sum_r += (r_val * c - i_val * s);
            sum_i += (r_val * s + i_val * c);
        }
        
        XX_R.write(sum_r);
        XX_I.write(sum_i);
    }
}
