#include <ap_int.h>
#include <ap_fixed.h>
#include <stdint.h>

#include "ap_axi_sdata.h"
#include "hls_stream.h"

typedef hls::axis<float, 0,0,0> transPkt;

typedef float DTYPE;
//typedef uint16_t idx_t;
typedef uint16_t iter_t;

#define SIZE 1024 		/* SIZE OF DFT */
void dft(
		hls::stream<transPkt>&real_sample,
		hls::stream<transPkt>&imag_sample,
		hls::stream<transPkt>&real_op,
		hls::stream<transPkt>&imag_op);
