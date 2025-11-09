#include<math.h>
#include "dft.h"
#include"coefficients1024.h"

typedef int idx_t;

void dft(
		hls::stream<transPkt>&real_sample,
	       	hls::stream<transPkt>&imag_sample,
		hls::stream<transPkt>&real_op,
		hls::stream<transPkt>&imag_op)
{
	#pragma HLS INTERFACE mode=axis port=real_sample,imag_sample,real_op,imag_op
        #pragma HLS INTERFACE mode=s_axilite port=return

	transPkt real_sample_pkt,imag_sample_pkt,real_op_pkt,imag_op_pkt;
	float real_sample_data[SIZE],imag_sample_data[SIZE],real_op_data[SIZE],imag_op_data[SIZE];

	float w, c, s;

	for (int i = 0; i < SIZE; i++) {
	//#pragma HLS unroll
		real_sample_pkt = real_sample.read();
		imag_sample_pkt = imag_sample.read();

		real_sample_data[i] = real_sample_pkt.data;
		imag_sample_data[i] = imag_sample_pkt.data;
	
	}

	//fprintf(stdout, "Here after loading inputs\n");

	while (true) {
		//real_sample_pkt = real_sample.read();
		//imag_sample_pkt = imag_sample.read();
		// Use integer type to read from the AXIS packets
		//real_sample_data = real_sample_pkt.data;
		//imag_sample_data = imag_sample_pkt.data;

		for (int i = 0; i < SIZE; i++) {
			for (int j = 0; j < SIZE; j++) {
				int index = (j * i) % SIZE;
				c = cos_coefficients_table[index];
				s = sin_coefficients_table[index];

				real_op_data[i] += (real_sample_data[j] * c - imag_sample_data[j] * s);
				imag_op_data[i] += (real_sample_data[j] * s + imag_sample_data[j] * c);
			}
		}
		break;
		////AXIS output packets are expecting integer type
		//real_sample_pkt.data = real_op_data;
		//imag_sample_pkt.data = imag_op_data;
		// Re-use the input packets to preserve side channel signals
		// Write the results to the output streams
		//real_op.write(real_sample_pkt);
		//imag_op.write(imag_sample_pkt);
		//if (real_sample_pkt.last == 1 || imag_sample_pkt.last == 1) {
		//	break;
		//}
	}

	//fprintf(stdout, "Here after processing inputs\n");
	for (int i = 0; i < SIZE; i++) {
	//#pragma HLS unroll
		real_op_pkt.data = real_op_data[i];
		imag_op_pkt.data = imag_op_data[i];

		if(i == SIZE - 1) {
			real_op_pkt.last == 1;
			imag_op_pkt.last == 1;
		}

		real_op.write(real_op_pkt);
		imag_op.write(imag_op_pkt);
	
	}
	//fprintf(stdout, "Here after streaming outputs\n");

	return;

}
