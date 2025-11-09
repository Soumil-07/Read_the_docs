#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include "dft.h" // Includes hls_stream.h, DTYPE, SIZE, and new function prototype

// RMSE struct for error calculation
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

// Testbench arrays to hold data
DTYPE tb_In_R[SIZE], tb_In_I[SIZE];
DTYPE tb_Out_R[SIZE], tb_Out_I[SIZE];

// --- THIS IS THE FIX ---
// Declare single HLS streams, NOT arrays
hls::stream<DTYPE> hls_In_R;
hls::stream<DTYPE> hls_In_I;
hls::stream<DTYPE> hls_Out_R;
hls::stream<DTYPE> hls_Out_I;


int main()
{
	int index;
	float gold_R, gold_I;

	FILE * fp = fopen("out.gold.dat","r");
	if (fp == NULL) {
		fprintf(stderr, "ERROR: Could not open out.gold.dat\n");
		return 1;
	}

	// 1. Getting input data
	for(int i=0; i<SIZE; i++)
	{
		tb_In_R[i] = i;
		tb_In_I[i] = 0.0;
	}
	
	// 2. Write data from testbench arrays into HLS input streams
	// --- THIS IS ALSO FIXED ---
	// Write all SIZE values to the single streams
	for(int i=0; i<SIZE; i++)
	{
		hls_In_R.write(tb_In_R[i]);
		hls_In_I.write(tb_In_I[i]);
	}

	// 3. Call the DFT function
	// --- THIS IS ALSO FIXED ---
	// Pass the single streams directly
	dft(hls_In_R, hls_In_I, hls_Out_R, hls_Out_I);

	// 4. Read data from HLS output streams into testbench arrays
	// --- THIS IS ALSO FIXED ---
	// Read all SIZE values from the single streams
	for(int i=0; i<SIZE; i++)
	{
		tb_Out_R[i] = hls_Out_R.read();
		tb_Out_I[i] = hls_Out_I.read();
	}

	// 5. Comparing with golden output
	for(int i=0; i<SIZE; i++)
	{
		fscanf(fp, "%d %f %f", &index, &gold_R, &gold_I);
		rmse_R.add_value((float)tb_Out_R[i] - gold_R);
		rmse_I.add_value((float)tb_Out_I[i] - gold_I);
	}
	fclose(fp);


	// 6. Printing error results
	printf("----------------------------------------------\n");
	printf("   RMSE(R)           RMSE(I)\n");
	printf("%0.15f %0.15f\n", rmse_R.error, rmse_I.error);
	printf("----------------------------------------------\n");

	if (rmse_R.error > 0.1 || rmse_I.error > 0.1 ) {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
		fprintf(stdout, "*******************************************\n");
	    return 1;
	} else {
		fprintf(stdout, "*******************************************\n");
		fprintf(stdout, "PASS: The output matches the golden output!\n");
		fprintf(stdout, "*******************************************\n");
	    return 0;
	}
}
