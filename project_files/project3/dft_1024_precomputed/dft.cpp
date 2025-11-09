#include<math.h>
#include "dft.h"
#include"coefficients1024.h"

typedef int idx_t;

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE],DTYPE real_op[SIZE],DTYPE imag_op[SIZE])
{
	float w, c, s;

	for (int i = 0; i < SIZE; i++) {
#pragma HLS unroll
		real_op[i] = 0;
		imag_op[i] = 0;
	}

	for (int i = 0; i < SIZE; i++) {
		for (int j = 0; j < SIZE; j++) {
			int index = (j * i) % SIZE;
			c = cos_coefficients_table[index];
			s = sin_coefficients_table[index];

			real_op[i] += (real_sample[j] * c - imag_sample[j] * s);
			imag_op[i] += (real_sample[j] * s + imag_sample[j] * c);
		}
	}
}
