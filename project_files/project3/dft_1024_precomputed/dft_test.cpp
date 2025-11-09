/*
This is DFT computation using matrix vector multiplication form.
INPUT:
	In_R, In_I[]: Real and Imag parts of Complex signal in time domain.
OUTPUT:
	Out_R, Out_I[]: Real and Imag parts of Complex signal in frequency domain.

*/

#include<stdio.h>
#include <stdlib.h>
#include<iostream>
#include <math.h>
#include "dft.h"

struct Rmse
{
	int num_sq;
	float sum_sq;
	float error;

	Rmse(){ num_sq = 0; sum_sq = 0; error = 0; }

	float add_value(float d_n)
	{
		num_sq++;
		sum_sq += (d_n*d_n);
		error = sqrtf(sum_sq / num_sq);
		return error;
	}

};


Rmse rmse_R,  rmse_I;

//DTYPE In_R[SIZE], In_I[SIZE],Out_R[SIZE],Out_I[SIZE];   //Modify the testbench while checking for demo. You will have to access the data variable of the structure//

int main()
{
        printf("-------dft_example Test-------\n");
	hls::stream<transPkt> In_R, In_I, Out_R, Out_I;
	transPkt pkt_In_R, pkt_In_I, pkt_Out_R, pkt_Out_I;
	//fp_int dataA, dataB, dataC, dataD;
	float dataA, dataB, dataC, dataD;

	int index;
	float gold_R, gold_I;
	float In_R_arr[SIZE];
	float In_I_arr[SIZE];

	FILE * fp = fopen("out.gold.dat","r");

	// getting input data
	for(int i=0; i<SIZE; i++)
	{
		In_R_arr[i] = i;
		In_I_arr[i] = 0.0;
		fprintf(stdout, "Initializing Inputs\n");

	}
	
	for (int i = 0; i < SIZE; i++) {
		fprintf(stdout, "Writing Inputs\n");
		pkt_In_R.data = In_R_arr[i];
		pkt_In_I.data = In_I_arr[i];
		// Prepare tlast signal
		if (i == SIZE - 1) {
			pkt_In_R.last = 1;
			pkt_In_I.last = 1;
		} else {
			pkt_In_R.last = 0;
			pkt_In_I.last = 0;
		}
		In_R.write(pkt_In_R);
		In_I.write(pkt_In_I);
	}

	fprintf(stdout, "Starting DFT\n");
	// DFT
	dft(In_R, In_I,Out_R,Out_I);
	fprintf(stdout, "Finished DFT\n");


	// comparing with golden output
	for(int i=0; i<SIZE; i++)
	{
	        fprintf(stdout, "Comparing with golden output\n");
		// Read the results from output streams
		pkt_Out_R = Out_R.read();
		pkt_Out_I = Out_I.read();
		dataC = pkt_Out_R.data;
		dataD = pkt_Out_I.data;

		printf("Comparing Real %0f %0f\n", dataC, gold_R);
		printf("Comparing Imaginary %0f %0f\n", dataD, gold_I);
		fscanf(fp, "%d %f %f", &index, &gold_R, &gold_I);
		rmse_R.add_value((float)dataC - gold_R);
		rmse_I.add_value((float)dataD - gold_I);
	}
	fclose(fp);

	fprintf(stdout, "Printing error results\n");

	// printing error results
	printf("----------------------------------------------\n");
	printf("   RMSE(R)           RMSE(I)\n");
	printf("%0.15f %0.15f\n", rmse_R.error, rmse_I.error);
	printf("----------------------------------------------\n");

	if (rmse_R.error > 0.1 || rmse_I.error > 0.1 ) {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
		fprintf(stdout, "*******************************************\n");
	    return 1;
	}else {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "PASS: The output matches the golden output!\n");
		fprintf(stdout, "*******************************************\n");
	    return 0;
	}

}
