#ifndef DFT_H_
#define DFT_H_

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include <stdint.h>
#include <math.h> 

// Type definitions
typedef float DTYPE;
typedef uint16_t idx_t;
typedef uint16_t iter_t;

// Define
#define SIZE 1024 /* SIZE OF DFT */

// --- THIS IS THE CORRECT SIGNATURE ---
// Pass a single stream by reference (&), not an array.
void dft(hls::stream<DTYPE>& xx_R, 
         hls::stream<DTYPE>& xx_I, 
         hls::stream<DTYPE>& XX_R, 
         hls::stream<DTYPE>& XX_I);

#endif // DFT_H_
