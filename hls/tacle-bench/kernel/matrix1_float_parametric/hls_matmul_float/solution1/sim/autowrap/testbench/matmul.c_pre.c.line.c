#pragma line 1 "/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float_parametric/matmul.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float_parametric/matmul.c"
#pragma empty_line
#pragma line 1 "/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float_parametric/matmul.h" 1
#pragma line 17 "/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float_parametric/matmul.h"
typedef float mat_type;
#pragma empty_line
#pragma empty_line
void matmul_hw(mat_type a[32*32], mat_type b[32*32], mat_type c[32*32], int size);
#pragma empty_line
void matrix_init(mat_type matrix_A[4*4], mat_type matrix_B[4*4]);
void matmul_sw(mat_type matrix_A[4*4], mat_type matrix_B[4*4],
     mat_type sw_result[4*4]);
#pragma line 3 "/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float_parametric/matmul.c" 2
#pragma empty_line
void matmul_hw(mat_type a[32*32],
      mat_type b[32*32],
      mat_type c[32*32],
      int size)
{
#pragma HLS INTERFACE ap_none port=size
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma empty_line
#pragma HLS INTERFACE bram depth=16 port=a
#pragma HLS RESOURCE variable=a core=RAM_1P_BRAM
#pragma empty_line
#pragma HLS INTERFACE bram depth=16 port=b
#pragma HLS RESOURCE variable=b core=RAM_1P_BRAM
#pragma empty_line
#pragma HLS INTERFACE bram depth=16 port=c
#pragma HLS RESOURCE variable=c core=RAM_1P_BRAM
#pragma empty_line
 mat_type tmp;
 mat_type *p_a = &a[0];
 mat_type *p_b = &b[0];
 mat_type *p_c = &c[0];
#pragma empty_line
 int f, i, k;
#pragma empty_line
 for(k = 0; k < 32; k++) {
  if(k < size) {
   p_a = &a[0];
#pragma empty_line
   for(i = 0; i < 32; i++) {
#pragma HLS PIPELINE
    if(i < size) {
     p_b = &b[k*size];
#pragma empty_line
     tmp = 0;
     for(f = 0; f < 32; f++) {
      if(f < size) {
       tmp += *p_a++ * *p_b++;
      }
     }
#pragma empty_line
     *p_c = tmp;
     p_c++;
    }
   }
  }
 }
}