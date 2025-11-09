#include<math.h>
#include "dft.h"
#include"coefficients1024.h"


void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE],DTYPE real_op[SIZE],DTYPE imag_op[SIZE])
{
	float w, c, s;
	DTYPE tmp_real, tmp_imag;

	for (int i = 0; i < SIZE; i++) {
		tmp_real = 0;
		tmp_imag = 0;
		for (int j = 0; j < SIZE; j++) {
			int index = (j * i) % SIZE;
			c = cos_coefficients_table[index];
			s = sin_coefficients_table[index];

			tmp_real += (real_sample[j] * c - imag_sample[j] * s);
			tmp_imag += (real_sample[j] * s + imag_sample[j] * c);
		}

		real_op[i] = tmp_real;
		imag_op[i] = tmp_imag;
	}
}
