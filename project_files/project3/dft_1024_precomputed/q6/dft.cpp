#include<math.h>
#include "dft.h"
#include"coefficients1024.h"

typedef int idx_t;

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE],DTYPE real_op[SIZE],DTYPE imag_op[SIZE])
{
	double w, c, s;
	double real_sum, imag_sum;

	for (int i = 0; i < SIZE; i++) {
		real_sum = 0;
		imag_sum = 0;

		w = 2 * M_PI * i / SIZE;

		for (int j = 0; j < SIZE; j++) {
			c = cos(j * w);
			s = -sin(j * w);

			real_sum += (real_sample[j] * c - imag_sample[j] * s);
			imag_sum += (real_sample[j] * s + imag_sample[j] * c);
		}
		
		real_op[i] = (DTYPE)real_sum;
		imag_op[i] = (DTYPE)imag_sum;
	}
}
