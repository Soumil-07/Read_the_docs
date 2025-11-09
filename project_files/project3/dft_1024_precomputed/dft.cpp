#include "dft.h"
#include "coefficients1024.h" 
// #include <math.h> // Not needed if tables are pre-computed

void dft(
		hls::stream<DTYPE>& xx_R,
		hls::stream<DTYPE>& xx_I,
		hls::stream<DTYPE>& XX_R,
		hls::stream<DTYPE>& XX_I
) {
    // These stages run sequentially. No #pragma HLS DATAFLOW.

    // Local arrays to buffer ALL inputs
    DTYPE In_R_local[SIZE];
    DTYPE In_I_local[SIZE];
    
    // --- STAGE 1: Read ALL inputs ---
    // This loop reads all data from the input streams into local RAMs.
    // This MUST complete before Stage 2 can begin.
    read_loop:
    for (int i = 0; i < SIZE; i++) {
#pragma HLS PIPELINE
        In_R_local[i] = xx_R.read();
        In_I_local[i] = xx_I.read();
    }

    // --- STAGE 2: Compute and Write Outputs ---
    // This outer loop calculates one output value at a time.
    compute_write_loop:
    for (int k = 0; k < SIZE; k++) { // Loop for each output 'k'
        DTYPE sum_r = 0;
        DTYPE sum_i = 0;

        // This inner loop is pipelined to calculate the sum quickly.
        // It reads from the local arrays, not the stream.
        inner_compute_loop:
        for (int n = 0; n < SIZE; n++) { // Loop for each input 'n'
#pragma HLS PIPELINE 
            
            idx_t idx = (k * n) % SIZE;
            DTYPE c = cos_coefficients_table[idx];
            DTYPE s = sin_coefficients_table[idx]; 

            DTYPE r_val = In_R_local[n];
            DTYPE i_val = In_I_local[n];

            // Complex multiplication
            sum_r += (r_val * c - i_val * s);
            sum_i += (r_val * s + i_val * c);
        }
        
        // Write the single, completed result to the output stream
        XX_R.write(sum_r);
        XX_I.write(sum_i);
    }
}
