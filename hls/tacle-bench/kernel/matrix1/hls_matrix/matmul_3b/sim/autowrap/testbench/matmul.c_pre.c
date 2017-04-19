# 1 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.c"

# 1 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.h" 1
# 13 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.h"
typedef float mat_type;



void matmul_hw(mat_type a[2][2], mat_type b[2][2], mat_type c[2][2]);

void matrix_init(mat_type matrix_A[2][2], mat_type matrix_B[2][2]);
void matrix_main(mat_type matrix_A[2][2], mat_type matrix_B[2][2],
     mat_type sw_result[2][2]);
# 3 "/home/andreas/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1/matmul.c" 2

void matmul_hw(mat_type a[2][2], mat_type b[2][2], mat_type c[2][2])
{
#pragma HLS INTERFACE ap_ctrl_hs port=return

#pragma HLS INTERFACE bram port=a
#pragma HLS RESOURCE variable=a core=RAM_1P_BRAM
#pragma HLS ARRAY_RESHAPE variable=a block factor=1 dim=2

#pragma HLS INTERFACE bram port=b
#pragma HLS RESOURCE variable=b core=RAM_1P_BRAM
#pragma HLS ARRAY_RESHAPE variable=b block factor=1 dim=1

#pragma HLS INTERFACE bram port=c
#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM

 mat_type a_row[2];
 mat_type b_copy[2][2];
 mat_type tmp;

 for(int i = 0; i < 2; i++) {

  col:for(int j = 0; j < 2; j++) {

#pragma HLS PIPELINE

    tmp = 0;


    if (j == 0) {
   cache_row: for(int k = 0; k < 2; k++)
     a_row[k] = a[i][k];
    }


   if (i == 0) {
    cache_col: for(int k = 0; k < 2; k++) {
      b_copy[k][j] = b[k][j];
    }
   }

    Product: for(int k = 0; k < 2; k++) {
   tmp += a_row[k] * b_copy[k][j];
    }

    c[i][j] = tmp;
  }
 }
}
