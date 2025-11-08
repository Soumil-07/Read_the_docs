#include<math.h>
#include "dft.h"
#include "coefficients32.h"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE])
{
	DTYPE w, c, s;
	DTYPE temp_real[SIZE], temp_imag[SIZE];	

	// Initialize accumulators to zero
	for (int i = 0; i < SIZE; i++) {
	#pragma HLS unroll
		temp_real[i] = 0;
		temp_imag[i] = 0;
	}

	for (int j = 0; j < SIZE; j++)
	#pragma HLS pipeline off
	{
		for (int i = 0; i < SIZE; i++)
		{
			int index = (i * j) % SIZE;
			c = cos_coefficients_table[index];
			s = sin_coefficients_table[index];

			temp_real[i] += real_sample[j]*c - imag_sample[j]*s;
			temp_imag[i] += real_sample[j]*s + imag_sample[j]*c;
		}
	}

	for (int i = 0; i < SIZE; i++)
	{
		real_sample[i] = temp_real[i];
		imag_sample[i] = temp_imag[i];
	}
}
