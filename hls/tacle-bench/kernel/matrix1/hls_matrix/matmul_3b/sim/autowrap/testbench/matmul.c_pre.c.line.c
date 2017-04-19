#pragma line 1 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.c"
#pragma empty_line
#pragma line 1 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.h" 1
#pragma line 13 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.h"
typedef float mat_type;
#pragma empty_line
#pragma empty_line
#pragma empty_line
void matmul_hw(mat_type a[2][2], mat_type b[2][2], mat_type c[2][2]);
#pragma empty_line
void matrix_init(mat_type matrix_A[2][2], mat_type matrix_B[2][2]);
void matrix_main(mat_type matrix_A[2][2], mat_type matrix_B[2][2],
     mat_type sw_result[2][2]);
#pragma line 3 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.c" 2
#pragma empty_line
void matmul_hw(mat_type a[2][2], mat_type b[2][2], mat_type c[2][2])
{
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma empty_line
#pragma HLS INTERFACE bram port=a
#pragma HLS RESOURCE variable=a core=RAM_1P_BRAM
#pragma HLS ARRAY_RESHAPE variable=a block factor=1 dim=2
#pragma empty_line
#pragma HLS INTERFACE bram port=b
#pragma HLS RESOURCE variable=b core=RAM_1P_BRAM
#pragma HLS ARRAY_RESHAPE variable=b block factor=1 dim=1
#pragma empty_line
#pragma HLS INTERFACE bram port=c
#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
#pragma empty_line
 mat_type a_row[2];
 mat_type b_copy[2][2];
 mat_type tmp;
#pragma empty_line
 for(int i = 0; i < 2; i++) {
#pragma empty_line
  col:for(int j = 0; j < 2; j++) {
#pragma empty_line
#pragma HLS PIPELINE
#pragma empty_line
    tmp = 0;
#pragma empty_line
#pragma empty_line
    if (j == 0) {
   cache_row: for(int k = 0; k < 2; k++)
     a_row[k] = a[i][k];
    }
#pragma empty_line
#pragma empty_line
   if (i == 0) {
    cache_col: for(int k = 0; k < 2; k++) {
      b_copy[k][j] = b[k][j];
    }
   }
#pragma empty_line
    Product: for(int k = 0; k < 2; k++) {
   tmp += a_row[k] * b_copy[k][j];
    }
#pragma empty_line
    c[i][j] = tmp;
  }
 }
}
