; ModuleID = '/home/patmos/github/bachelor_project_HLS/hls/misc/matmul_float/hls_matmul_float/matmul_2b_32x32/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmul_hw_str = internal unnamed_addr constant [10 x i8] c"matmul_hw\00"
@L_col_str = internal unnamed_addr constant [6 x i8] c"L_col\00"
@p_str5 = private unnamed_addr constant [4 x i8] c"col\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @matmul_hw([1536 x float]* %a_0, [1536 x float]* %a_1) {
  %a_row_load_018 = alloca float
  %a_row_load_61 = alloca float
  %a_row_load_60 = alloca float
  %a_row_load_59 = alloca float
  %a_row_load_58 = alloca float
  %a_row_load_57 = alloca float
  %a_row_load_56 = alloca float
  %a_row_load_55 = alloca float
  %a_row_load_54 = alloca float
  %a_row_load_53 = alloca float
  %a_row_load_52 = alloca float
  %a_row_load_51 = alloca float
  %a_row_load_50 = alloca float
  %a_row_load_49 = alloca float
  %a_row_load_48 = alloca float
  %a_row_load_47 = alloca float
  %a_row_load_46 = alloca float
  %a_row_load_45 = alloca float
  %a_row_load_44 = alloca float
  %a_row_load_43 = alloca float
  %a_row_load_42 = alloca float
  %a_row_load_41 = alloca float
  %a_row_load_40 = alloca float
  %a_row_load_39 = alloca float
  %a_row_load_38 = alloca float
  %a_row_load_37 = alloca float
  %a_row_load_36 = alloca float
  %a_row_load_35 = alloca float
  %a_row_load_34 = alloca float
  %a_row_load_33 = alloca float
  %a_row_load_32 = alloca float
  %a_row_load_s = alloca float
  call void (...)* @_ssdm_op_SpecBitsMap([1536 x float]* %a_1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([1536 x float]* %a_0), !map !14
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matmul_hw_str) nounwind
  %b_copy_0 = alloca [32 x float], align 16
  %b_copy_1 = alloca [32 x float], align 16
  %b_copy_2 = alloca [32 x float], align 16
  %b_copy_3 = alloca [32 x float], align 16
  %b_copy_4 = alloca [32 x float], align 16
  %b_copy_5 = alloca [32 x float], align 16
  %b_copy_6 = alloca [32 x float], align 16
  %b_copy_7 = alloca [32 x float], align 16
  %b_copy_8 = alloca [32 x float], align 16
  %b_copy_9 = alloca [32 x float], align 16
  %b_copy_10 = alloca [32 x float], align 16
  %b_copy_11 = alloca [32 x float], align 16
  %b_copy_12 = alloca [32 x float], align 16
  %b_copy_13 = alloca [32 x float], align 16
  %b_copy_14 = alloca [32 x float], align 16
  %b_copy_15 = alloca [32 x float], align 16
  %b_copy_16 = alloca [32 x float], align 16
  %b_copy_17 = alloca [32 x float], align 16
  %b_copy_18 = alloca [32 x float], align 16
  %b_copy_19 = alloca [32 x float], align 16
  %b_copy_20 = alloca [32 x float], align 16
  %b_copy_21 = alloca [32 x float], align 16
  %b_copy_22 = alloca [32 x float], align 16
  %b_copy_23 = alloca [32 x float], align 16
  %b_copy_24 = alloca [32 x float], align 16
  %b_copy_25 = alloca [32 x float], align 16
  %b_copy_26 = alloca [32 x float], align 16
  %b_copy_27 = alloca [32 x float], align 16
  %b_copy_28 = alloca [32 x float], align 16
  %b_copy_29 = alloca [32 x float], align 16
  %b_copy_30 = alloca [32 x float], align 16
  %b_copy_31 = alloca [32 x float], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1536 x float]* %a_0, [1536 x float]* %a_1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([1536 x float]* %a_0, [1536 x float]* %a_1, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %.preheader7

.preheader7:                                      ; preds = %.loopexit, %0
  %indvar_flatten = phi i11 [ 0, %0 ], [ %indvar_flatten_next, %.loopexit ]
  %i = phi i6 [ 0, %0 ], [ %i2_mid2_v, %.loopexit ]
  %j = phi i6 [ 0, %0 ], [ %j_1, %.loopexit ]
  %exitcond_flatten = icmp eq i11 %indvar_flatten, -1024
  %indvar_flatten_next = add i11 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %1, label %.preheader7.preheader

.preheader.preheader:                             ; preds = %.preheader7.preheader
  %tmp_8 = zext i6 %j_mid2 to i64
  %tmp_8_cast8 = zext i6 %j_mid2 to i10
  %tmp_8_cast7 = zext i6 %j_mid2 to i9
  %tmp_8_cast7_cast = zext i6 %j_mid2 to i8
  %tmp_8_cast5 = zext i6 %j_mid2 to i7
  %tmp_8_cast = zext i6 %j_mid2 to i11
  %tmp_71 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 16, i6 %j_mid2)
  %a_0_addr_32 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_71
  %tmp_72 = add i11 %tmp_8_cast, -992
  %tmp_73_cast = zext i11 %tmp_72 to i64
  %a_0_addr_33 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_73_cast
  %tmp_73 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 17, i6 %j_mid2)
  %a_0_addr_34 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_73
  %tmp_74 = add i11 %tmp_8_cast, -928
  %tmp_75_cast = zext i11 %tmp_74 to i64
  %a_0_addr_35 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_75_cast
  %tmp_75 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 18, i6 %j_mid2)
  %a_0_addr_36 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_75
  %tmp_76 = add i11 %tmp_8_cast, -864
  %tmp_77_cast = zext i11 %tmp_76 to i64
  %a_0_addr_37 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_77_cast
  %tmp_77 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 19, i6 %j_mid2)
  %a_0_addr_38 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_77
  %tmp_78 = add i11 %tmp_8_cast, -800
  %tmp_79_cast = zext i11 %tmp_78 to i64
  %a_0_addr_39 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_79_cast
  %tmp_79 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 20, i6 %j_mid2)
  %a_0_addr_40 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_79
  %tmp_80 = add i11 %tmp_8_cast, -736
  %tmp_81_cast = zext i11 %tmp_80 to i64
  %a_0_addr_41 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_81_cast
  %tmp_81 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 21, i6 %j_mid2)
  %a_0_addr_42 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_81
  %tmp_82 = add i11 %tmp_8_cast, -672
  %tmp_83_cast = zext i11 %tmp_82 to i64
  %a_0_addr_43 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_83_cast
  %tmp_83 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 22, i6 %j_mid2)
  %a_0_addr_44 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_83
  %tmp_84 = add i11 %tmp_8_cast, -608
  %tmp_85_cast = zext i11 %tmp_84 to i64
  %a_0_addr_45 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_85_cast
  %tmp_85 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 23, i6 %j_mid2)
  %a_0_addr_46 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_85
  %tmp_86 = add i11 %tmp_8_cast, -544
  %tmp_87_cast = zext i11 %tmp_86 to i64
  %a_0_addr_47 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_87_cast
  %a_1_addr = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_8
  %tmp_87 = add i7 %tmp_8_cast5, 32
  %tmp_88_cast = zext i7 %tmp_87 to i64
  %a_1_addr_1 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_88_cast
  %tmp_88 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 1, i6 %j_mid2)
  %a_1_addr_2 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_88
  %tmp_89 = add i8 %tmp_8_cast7_cast, 96
  %tmp_90_cast = zext i8 %tmp_89 to i64
  %a_1_addr_3 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_90_cast
  %tmp_90 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 2, i6 %j_mid2)
  %a_1_addr_4 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_90
  %tmp_91 = add i8 %tmp_8_cast7_cast, -96
  %tmp_92_cast = zext i8 %tmp_91 to i64
  %a_1_addr_5 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_92_cast
  %tmp_92 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 3, i6 %j_mid2)
  %a_1_addr_6 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_92
  %tmp_93 = add i9 %tmp_8_cast7, 224
  %tmp_94_cast = zext i9 %tmp_93 to i64
  %a_1_addr_7 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_94_cast
  %tmp_94 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 4, i6 %j_mid2)
  %a_1_addr_8 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_94
  %tmp_95 = add i9 %tmp_8_cast7, -224
  %tmp_96_cast = zext i9 %tmp_95 to i64
  %a_1_addr_9 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_96_cast
  %tmp_96 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 5, i6 %j_mid2)
  %a_1_addr_10 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_96
  %tmp_97 = add i9 %tmp_8_cast7, -160
  %tmp_98_cast = zext i9 %tmp_97 to i64
  %a_1_addr_11 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_98_cast
  %tmp_98 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 6, i6 %j_mid2)
  %a_1_addr_12 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_98
  %tmp_100_cast9 = sext i8 %tmp_91 to i9
  %tmp_100_cast = zext i9 %tmp_100_cast9 to i64
  %a_1_addr_13 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_100_cast
  %tmp_99 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58 7, i6 %j_mid2)
  %a_1_addr_14 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_99
  %tmp_100 = add i10 %tmp_8_cast8, 480
  %tmp_102_cast = zext i10 %tmp_100 to i64
  %a_1_addr_15 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_102_cast
  %a_0_load_32 = load float* %a_0_addr_32, align 4
  %b_copy_0_addr = getelementptr [32 x float]* %b_copy_0, i64 0, i64 %tmp_8
  store float %a_0_load_32, float* %b_copy_0_addr, align 4
  %a_0_load_33 = load float* %a_0_addr_33, align 4
  %b_copy_1_addr = getelementptr [32 x float]* %b_copy_1, i64 0, i64 %tmp_8
  store float %a_0_load_33, float* %b_copy_1_addr, align 4
  %a_0_load_34 = load float* %a_0_addr_34, align 4
  %b_copy_2_addr = getelementptr [32 x float]* %b_copy_2, i64 0, i64 %tmp_8
  store float %a_0_load_34, float* %b_copy_2_addr, align 4
  %a_0_load_35 = load float* %a_0_addr_35, align 4
  %b_copy_3_addr = getelementptr [32 x float]* %b_copy_3, i64 0, i64 %tmp_8
  store float %a_0_load_35, float* %b_copy_3_addr, align 4
  %a_0_load_36 = load float* %a_0_addr_36, align 4
  %b_copy_4_addr = getelementptr [32 x float]* %b_copy_4, i64 0, i64 %tmp_8
  store float %a_0_load_36, float* %b_copy_4_addr, align 4
  %a_0_load_37 = load float* %a_0_addr_37, align 4
  %b_copy_5_addr = getelementptr [32 x float]* %b_copy_5, i64 0, i64 %tmp_8
  store float %a_0_load_37, float* %b_copy_5_addr, align 4
  %a_0_load_38 = load float* %a_0_addr_38, align 4
  %b_copy_6_addr = getelementptr [32 x float]* %b_copy_6, i64 0, i64 %tmp_8
  store float %a_0_load_38, float* %b_copy_6_addr, align 4
  %a_0_load_39 = load float* %a_0_addr_39, align 4
  %b_copy_7_addr = getelementptr [32 x float]* %b_copy_7, i64 0, i64 %tmp_8
  store float %a_0_load_39, float* %b_copy_7_addr, align 4
  %a_0_load_40 = load float* %a_0_addr_40, align 4
  %b_copy_8_addr = getelementptr [32 x float]* %b_copy_8, i64 0, i64 %tmp_8
  store float %a_0_load_40, float* %b_copy_8_addr, align 4
  %a_0_load_41 = load float* %a_0_addr_41, align 4
  %b_copy_9_addr = getelementptr [32 x float]* %b_copy_9, i64 0, i64 %tmp_8
  store float %a_0_load_41, float* %b_copy_9_addr, align 4
  %a_0_load_42 = load float* %a_0_addr_42, align 4
  %b_copy_10_addr = getelementptr [32 x float]* %b_copy_10, i64 0, i64 %tmp_8
  store float %a_0_load_42, float* %b_copy_10_addr, align 4
  %a_0_load_43 = load float* %a_0_addr_43, align 4
  %b_copy_11_addr = getelementptr [32 x float]* %b_copy_11, i64 0, i64 %tmp_8
  store float %a_0_load_43, float* %b_copy_11_addr, align 4
  %a_0_load_44 = load float* %a_0_addr_44, align 4
  %b_copy_12_addr = getelementptr [32 x float]* %b_copy_12, i64 0, i64 %tmp_8
  store float %a_0_load_44, float* %b_copy_12_addr, align 4
  %a_0_load_45 = load float* %a_0_addr_45, align 4
  %b_copy_13_addr = getelementptr [32 x float]* %b_copy_13, i64 0, i64 %tmp_8
  store float %a_0_load_45, float* %b_copy_13_addr, align 4
  %a_0_load_46 = load float* %a_0_addr_46, align 4
  %b_copy_14_addr = getelementptr [32 x float]* %b_copy_14, i64 0, i64 %tmp_8
  store float %a_0_load_46, float* %b_copy_14_addr, align 4
  %a_0_load_47 = load float* %a_0_addr_47, align 4
  %b_copy_15_addr = getelementptr [32 x float]* %b_copy_15, i64 0, i64 %tmp_8
  store float %a_0_load_47, float* %b_copy_15_addr, align 4
  %a_1_load = load float* %a_1_addr, align 4
  %b_copy_16_addr = getelementptr [32 x float]* %b_copy_16, i64 0, i64 %tmp_8
  store float %a_1_load, float* %b_copy_16_addr, align 4
  %a_1_load_1 = load float* %a_1_addr_1, align 4
  %b_copy_17_addr = getelementptr [32 x float]* %b_copy_17, i64 0, i64 %tmp_8
  store float %a_1_load_1, float* %b_copy_17_addr, align 4
  %a_1_load_2 = load float* %a_1_addr_2, align 4
  %b_copy_18_addr = getelementptr [32 x float]* %b_copy_18, i64 0, i64 %tmp_8
  store float %a_1_load_2, float* %b_copy_18_addr, align 4
  %a_1_load_3 = load float* %a_1_addr_3, align 4
  %b_copy_19_addr = getelementptr [32 x float]* %b_copy_19, i64 0, i64 %tmp_8
  store float %a_1_load_3, float* %b_copy_19_addr, align 4
  %a_1_load_4 = load float* %a_1_addr_4, align 4
  %b_copy_20_addr = getelementptr [32 x float]* %b_copy_20, i64 0, i64 %tmp_8
  store float %a_1_load_4, float* %b_copy_20_addr, align 4
  %a_1_load_5 = load float* %a_1_addr_5, align 4
  %b_copy_21_addr = getelementptr [32 x float]* %b_copy_21, i64 0, i64 %tmp_8
  store float %a_1_load_5, float* %b_copy_21_addr, align 4
  %a_1_load_6 = load float* %a_1_addr_6, align 4
  %b_copy_22_addr = getelementptr [32 x float]* %b_copy_22, i64 0, i64 %tmp_8
  store float %a_1_load_6, float* %b_copy_22_addr, align 4
  %a_1_load_7 = load float* %a_1_addr_7, align 4
  %b_copy_23_addr = getelementptr [32 x float]* %b_copy_23, i64 0, i64 %tmp_8
  store float %a_1_load_7, float* %b_copy_23_addr, align 4
  %a_1_load_8 = load float* %a_1_addr_8, align 4
  %b_copy_24_addr = getelementptr [32 x float]* %b_copy_24, i64 0, i64 %tmp_8
  store float %a_1_load_8, float* %b_copy_24_addr, align 4
  %a_1_load_9 = load float* %a_1_addr_9, align 4
  %b_copy_25_addr = getelementptr [32 x float]* %b_copy_25, i64 0, i64 %tmp_8
  store float %a_1_load_9, float* %b_copy_25_addr, align 4
  %a_1_load_10 = load float* %a_1_addr_10, align 4
  %b_copy_26_addr = getelementptr [32 x float]* %b_copy_26, i64 0, i64 %tmp_8
  store float %a_1_load_10, float* %b_copy_26_addr, align 4
  %a_1_load_11 = load float* %a_1_addr_11, align 4
  %b_copy_27_addr = getelementptr [32 x float]* %b_copy_27, i64 0, i64 %tmp_8
  store float %a_1_load_11, float* %b_copy_27_addr, align 4
  %a_1_load_12 = load float* %a_1_addr_12, align 4
  %b_copy_28_addr = getelementptr [32 x float]* %b_copy_28, i64 0, i64 %tmp_8
  store float %a_1_load_12, float* %b_copy_28_addr, align 4
  %a_1_load_13 = load float* %a_1_addr_13, align 4
  %b_copy_29_addr = getelementptr [32 x float]* %b_copy_29, i64 0, i64 %tmp_8
  store float %a_1_load_13, float* %b_copy_29_addr, align 4
  %a_1_load_14 = load float* %a_1_addr_14, align 4
  %b_copy_30_addr = getelementptr [32 x float]* %b_copy_30, i64 0, i64 %tmp_8
  store float %a_1_load_14, float* %b_copy_30_addr, align 4
  %a_1_load_15 = load float* %a_1_addr_15, align 4
  %b_copy_31_addr = getelementptr [32 x float]* %b_copy_31, i64 0, i64 %tmp_8
  store float %a_1_load_15, float* %b_copy_31_addr, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader7.preheader
  %tmp_7 = zext i6 %j_mid2 to i64
  %tmp_7_cast = zext i6 %j_mid2 to i12
  %tmp_101 = add i12 %tmp_70, %tmp_7_cast
  %tmp_103_cast = zext i12 %tmp_101 to i64
  %a_1_addr_16 = getelementptr [1536 x float]* %a_1, i64 0, i64 %tmp_103_cast
  %b_copy_0_addr_1 = getelementptr [32 x float]* %b_copy_0, i64 0, i64 %tmp_7
  %b_copy_0_load = load float* %b_copy_0_addr_1, align 4
  %tmp_s = fmul float %a_row_load, %b_copy_0_load
  %tmp_3 = fadd float %tmp_s, 0.000000e+00
  %b_copy_1_addr_1 = getelementptr [32 x float]* %b_copy_1, i64 0, i64 %tmp_7
  %b_copy_1_load = load float* %b_copy_1_addr_1, align 4
  %tmp_11_1 = fmul float %a_row_load_1, %b_copy_1_load
  %tmp_12_1 = fadd float %tmp_3, %tmp_11_1
  %b_copy_2_addr_1 = getelementptr [32 x float]* %b_copy_2, i64 0, i64 %tmp_7
  %b_copy_2_load = load float* %b_copy_2_addr_1, align 4
  %tmp_11_2 = fmul float %a_row_load_2, %b_copy_2_load
  %tmp_12_2 = fadd float %tmp_12_1, %tmp_11_2
  %b_copy_3_addr_1 = getelementptr [32 x float]* %b_copy_3, i64 0, i64 %tmp_7
  %b_copy_3_load = load float* %b_copy_3_addr_1, align 4
  %tmp_11_3 = fmul float %a_row_load_3, %b_copy_3_load
  %tmp_12_3 = fadd float %tmp_12_2, %tmp_11_3
  %b_copy_4_addr_1 = getelementptr [32 x float]* %b_copy_4, i64 0, i64 %tmp_7
  %b_copy_4_load = load float* %b_copy_4_addr_1, align 4
  %tmp_11_4 = fmul float %a_row_load_4, %b_copy_4_load
  %tmp_12_4 = fadd float %tmp_12_3, %tmp_11_4
  %b_copy_5_addr_1 = getelementptr [32 x float]* %b_copy_5, i64 0, i64 %tmp_7
  %b_copy_5_load = load float* %b_copy_5_addr_1, align 4
  %tmp_11_5 = fmul float %a_row_load_5, %b_copy_5_load
  %tmp_12_5 = fadd float %tmp_12_4, %tmp_11_5
  %b_copy_6_addr_1 = getelementptr [32 x float]* %b_copy_6, i64 0, i64 %tmp_7
  %b_copy_6_load = load float* %b_copy_6_addr_1, align 4
  %tmp_11_6 = fmul float %a_row_load_6, %b_copy_6_load
  %tmp_12_6 = fadd float %tmp_12_5, %tmp_11_6
  %b_copy_7_addr_1 = getelementptr [32 x float]* %b_copy_7, i64 0, i64 %tmp_7
  %b_copy_7_load = load float* %b_copy_7_addr_1, align 4
  %tmp_11_7 = fmul float %a_row_load_7, %b_copy_7_load
  %tmp_12_7 = fadd float %tmp_12_6, %tmp_11_7
  %b_copy_8_addr_1 = getelementptr [32 x float]* %b_copy_8, i64 0, i64 %tmp_7
  %b_copy_8_load = load float* %b_copy_8_addr_1, align 4
  %tmp_11_8 = fmul float %a_row_load_8, %b_copy_8_load
  %tmp_12_8 = fadd float %tmp_12_7, %tmp_11_8
  %b_copy_9_addr_1 = getelementptr [32 x float]* %b_copy_9, i64 0, i64 %tmp_7
  %b_copy_9_load = load float* %b_copy_9_addr_1, align 4
  %tmp_11_9 = fmul float %a_row_load_9, %b_copy_9_load
  %tmp_12_9 = fadd float %tmp_12_8, %tmp_11_9
  %b_copy_10_addr_1 = getelementptr [32 x float]* %b_copy_10, i64 0, i64 %tmp_7
  %b_copy_10_load = load float* %b_copy_10_addr_1, align 4
  %tmp_11_s = fmul float %a_row_load_10, %b_copy_10_load
  %tmp_12_s = fadd float %tmp_12_9, %tmp_11_s
  %b_copy_11_addr_1 = getelementptr [32 x float]* %b_copy_11, i64 0, i64 %tmp_7
  %b_copy_11_load = load float* %b_copy_11_addr_1, align 4
  %tmp_11_10 = fmul float %a_row_load_11, %b_copy_11_load
  %tmp_12_10 = fadd float %tmp_12_s, %tmp_11_10
  %b_copy_12_addr_1 = getelementptr [32 x float]* %b_copy_12, i64 0, i64 %tmp_7
  %b_copy_12_load = load float* %b_copy_12_addr_1, align 4
  %tmp_11_11 = fmul float %a_row_load_12, %b_copy_12_load
  %tmp_12_11 = fadd float %tmp_12_10, %tmp_11_11
  %b_copy_13_addr_1 = getelementptr [32 x float]* %b_copy_13, i64 0, i64 %tmp_7
  %b_copy_13_load = load float* %b_copy_13_addr_1, align 4
  %tmp_11_12 = fmul float %a_row_load_13, %b_copy_13_load
  %tmp_12_12 = fadd float %tmp_12_11, %tmp_11_12
  %b_copy_14_addr_1 = getelementptr [32 x float]* %b_copy_14, i64 0, i64 %tmp_7
  %b_copy_14_load = load float* %b_copy_14_addr_1, align 4
  %tmp_11_13 = fmul float %a_row_load_14, %b_copy_14_load
  %tmp_12_13 = fadd float %tmp_12_12, %tmp_11_13
  %b_copy_15_addr_1 = getelementptr [32 x float]* %b_copy_15, i64 0, i64 %tmp_7
  %b_copy_15_load = load float* %b_copy_15_addr_1, align 4
  %tmp_11_14 = fmul float %a_row_load_15, %b_copy_15_load
  %tmp_12_14 = fadd float %tmp_12_13, %tmp_11_14
  %b_copy_16_addr_1 = getelementptr [32 x float]* %b_copy_16, i64 0, i64 %tmp_7
  %b_copy_16_load = load float* %b_copy_16_addr_1, align 4
  %tmp_11_15 = fmul float %a_row_load_16, %b_copy_16_load
  %tmp_12_15 = fadd float %tmp_12_14, %tmp_11_15
  %b_copy_17_addr_1 = getelementptr [32 x float]* %b_copy_17, i64 0, i64 %tmp_7
  %b_copy_17_load = load float* %b_copy_17_addr_1, align 4
  %tmp_11_16 = fmul float %a_row_load_17, %b_copy_17_load
  %tmp_12_16 = fadd float %tmp_12_15, %tmp_11_16
  %b_copy_18_addr_1 = getelementptr [32 x float]* %b_copy_18, i64 0, i64 %tmp_7
  %b_copy_18_load = load float* %b_copy_18_addr_1, align 4
  %tmp_11_17 = fmul float %a_row_load_18, %b_copy_18_load
  %tmp_12_17 = fadd float %tmp_12_16, %tmp_11_17
  %b_copy_19_addr_1 = getelementptr [32 x float]* %b_copy_19, i64 0, i64 %tmp_7
  %b_copy_19_load = load float* %b_copy_19_addr_1, align 4
  %tmp_11_18 = fmul float %a_row_load_19, %b_copy_19_load
  %tmp_12_18 = fadd float %tmp_12_17, %tmp_11_18
  %b_copy_20_addr_1 = getelementptr [32 x float]* %b_copy_20, i64 0, i64 %tmp_7
  %b_copy_20_load = load float* %b_copy_20_addr_1, align 4
  %tmp_11_19 = fmul float %a_row_load_20, %b_copy_20_load
  %tmp_12_19 = fadd float %tmp_12_18, %tmp_11_19
  %b_copy_21_addr_1 = getelementptr [32 x float]* %b_copy_21, i64 0, i64 %tmp_7
  %b_copy_21_load = load float* %b_copy_21_addr_1, align 4
  %tmp_11_20 = fmul float %a_row_load_21, %b_copy_21_load
  %tmp_12_20 = fadd float %tmp_12_19, %tmp_11_20
  %b_copy_22_addr_1 = getelementptr [32 x float]* %b_copy_22, i64 0, i64 %tmp_7
  %b_copy_22_load = load float* %b_copy_22_addr_1, align 4
  %tmp_11_21 = fmul float %a_row_load_22, %b_copy_22_load
  %tmp_12_21 = fadd float %tmp_12_20, %tmp_11_21
  %b_copy_23_addr_1 = getelementptr [32 x float]* %b_copy_23, i64 0, i64 %tmp_7
  %b_copy_23_load = load float* %b_copy_23_addr_1, align 4
  %tmp_11_22 = fmul float %a_row_load_23, %b_copy_23_load
  %tmp_12_22 = fadd float %tmp_12_21, %tmp_11_22
  %b_copy_24_addr_1 = getelementptr [32 x float]* %b_copy_24, i64 0, i64 %tmp_7
  %b_copy_24_load = load float* %b_copy_24_addr_1, align 4
  %tmp_11_23 = fmul float %a_row_load_24, %b_copy_24_load
  %tmp_12_23 = fadd float %tmp_12_22, %tmp_11_23
  %b_copy_25_addr_1 = getelementptr [32 x float]* %b_copy_25, i64 0, i64 %tmp_7
  %b_copy_25_load = load float* %b_copy_25_addr_1, align 4
  %tmp_11_24 = fmul float %a_row_load_25, %b_copy_25_load
  %tmp_12_24 = fadd float %tmp_12_23, %tmp_11_24
  %b_copy_26_addr_1 = getelementptr [32 x float]* %b_copy_26, i64 0, i64 %tmp_7
  %b_copy_26_load = load float* %b_copy_26_addr_1, align 4
  %tmp_11_25 = fmul float %a_row_load_26, %b_copy_26_load
  %tmp_12_25 = fadd float %tmp_12_24, %tmp_11_25
  %b_copy_27_addr_1 = getelementptr [32 x float]* %b_copy_27, i64 0, i64 %tmp_7
  %b_copy_27_load = load float* %b_copy_27_addr_1, align 4
  %tmp_11_26 = fmul float %a_row_load_27, %b_copy_27_load
  %tmp_12_26 = fadd float %tmp_12_25, %tmp_11_26
  %b_copy_28_addr_1 = getelementptr [32 x float]* %b_copy_28, i64 0, i64 %tmp_7
  %b_copy_28_load = load float* %b_copy_28_addr_1, align 4
  %tmp_11_27 = fmul float %a_row_load_28, %b_copy_28_load
  %tmp_12_27 = fadd float %tmp_12_26, %tmp_11_27
  %b_copy_29_addr_1 = getelementptr [32 x float]* %b_copy_29, i64 0, i64 %tmp_7
  %b_copy_29_load = load float* %b_copy_29_addr_1, align 4
  %tmp_11_28 = fmul float %a_row_load_29, %b_copy_29_load
  %tmp_12_28 = fadd float %tmp_12_27, %tmp_11_28
  %b_copy_30_addr_1 = getelementptr [32 x float]* %b_copy_30, i64 0, i64 %tmp_7
  %b_copy_30_load = load float* %b_copy_30_addr_1, align 4
  %tmp_11_29 = fmul float %a_row_load_30, %b_copy_30_load
  %tmp_12_29 = fadd float %tmp_12_28, %tmp_11_29
  %b_copy_31_addr_1 = getelementptr [32 x float]* %b_copy_31, i64 0, i64 %tmp_7
  %b_copy_31_load = load float* %b_copy_31_addr_1, align 4
  %tmp_11_30 = fmul float %a_row_load_31, %b_copy_31_load
  %tmp_12_30 = fadd float %tmp_12_29, %tmp_11_30
  store float %tmp_12_30, float* %a_1_addr_16, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str5, i32 %tmp_2) nounwind
  %j_1 = add i6 %j_mid2, 1
  br label %.preheader7

.preheader7.preheader:                            ; preds = %.preheader7
  %a_row_load_62 = load float* %a_row_load_018
  %a_row_load_63 = load float* %a_row_load_61
  %a_row_load_64 = load float* %a_row_load_60
  %a_row_load_65 = load float* %a_row_load_59
  %a_row_load_66 = load float* %a_row_load_58
  %a_row_load_67 = load float* %a_row_load_57
  %a_row_load_68 = load float* %a_row_load_56
  %a_row_load_69 = load float* %a_row_load_55
  %a_row_load_70 = load float* %a_row_load_54
  %a_row_load_71 = load float* %a_row_load_53
  %a_row_load_72 = load float* %a_row_load_52
  %a_row_load_73 = load float* %a_row_load_51
  %a_row_load_74 = load float* %a_row_load_50
  %a_row_load_75 = load float* %a_row_load_49
  %a_row_load_76 = load float* %a_row_load_48
  %a_row_load_77 = load float* %a_row_load_47
  %a_row_load_78 = load float* %a_row_load_46
  %a_row_load_79 = load float* %a_row_load_45
  %a_row_load_80 = load float* %a_row_load_44
  %a_row_load_81 = load float* %a_row_load_43
  %a_row_load_82 = load float* %a_row_load_42
  %a_row_load_83 = load float* %a_row_load_41
  %a_row_load_84 = load float* %a_row_load_40
  %a_row_load_85 = load float* %a_row_load_39
  %a_row_load_86 = load float* %a_row_load_38
  %a_row_load_87 = load float* %a_row_load_37
  %a_row_load_88 = load float* %a_row_load_36
  %a_row_load_89 = load float* %a_row_load_35
  %a_row_load_90 = load float* %a_row_load_34
  %a_row_load_91 = load float* %a_row_load_33
  %a_row_load_92 = load float* %a_row_load_32
  %a_row_load_93 = load float* %a_row_load_s
  %i_1 = add i6 %i, 1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @L_col_str)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %exitcond = icmp eq i6 %j, -32
  %j_mid2 = select i1 %exitcond, i6 0, i6 %j
  %tmp_mid1 = icmp eq i6 %i_1, 0
  %tmp1 = icmp eq i6 %i, 0
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp1
  %i2_mid2_v = select i1 %exitcond, i6 %i_1, i6 %i
  %tmp_1 = call i11 @_ssdm_op_BitConcatenate.i11.i6.i5(i6 %i2_mid2_v, i5 0)
  %tmp_4 = zext i11 %tmp_1 to i64
  %a_0_addr = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_4
  %tmp_6 = or i11 %tmp_1, 1
  %tmp_9 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_6)
  %a_0_addr_1 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_9
  %tmp_10 = or i11 %tmp_1, 2
  %tmp_11 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_10)
  %a_0_addr_2 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_11
  %tmp_12 = or i11 %tmp_1, 3
  %tmp_13 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_12)
  %a_0_addr_3 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_13
  %tmp_14 = or i11 %tmp_1, 4
  %tmp_15 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_14)
  %a_0_addr_4 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_15
  %tmp_16 = or i11 %tmp_1, 5
  %tmp_17 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_16)
  %a_0_addr_5 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_17
  %tmp_18 = or i11 %tmp_1, 6
  %tmp_19 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_18)
  %a_0_addr_6 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_19
  %tmp_20 = or i11 %tmp_1, 7
  %tmp_21 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_20)
  %a_0_addr_7 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_21
  %tmp_22 = or i11 %tmp_1, 8
  %tmp_23 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_22)
  %a_0_addr_8 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_23
  %tmp_24 = or i11 %tmp_1, 9
  %tmp_25 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_24)
  %a_0_addr_9 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_25
  %tmp_26 = or i11 %tmp_1, 10
  %tmp_27 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_26)
  %a_0_addr_10 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_27
  %tmp_28 = or i11 %tmp_1, 11
  %tmp_29 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_28)
  %a_0_addr_11 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_29
  %tmp_30 = or i11 %tmp_1, 12
  %tmp_31 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_30)
  %a_0_addr_12 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_31
  %tmp_32 = or i11 %tmp_1, 13
  %tmp_33 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_32)
  %a_0_addr_13 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_33
  %tmp_34 = or i11 %tmp_1, 14
  %tmp_35 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_34)
  %a_0_addr_14 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_35
  %tmp_36 = or i11 %tmp_1, 15
  %tmp_37 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_36)
  %a_0_addr_15 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_37
  %tmp_38 = or i11 %tmp_1, 16
  %tmp_39 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_38)
  %a_0_addr_16 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_39
  %tmp_40 = or i11 %tmp_1, 17
  %tmp_41 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_40)
  %a_0_addr_17 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_41
  %tmp_42 = or i11 %tmp_1, 18
  %tmp_43 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_42)
  %a_0_addr_18 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_43
  %tmp_44 = or i11 %tmp_1, 19
  %tmp_45 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_44)
  %a_0_addr_19 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_45
  %tmp_46 = or i11 %tmp_1, 20
  %tmp_47 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_46)
  %a_0_addr_20 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_47
  %tmp_48 = or i11 %tmp_1, 21
  %tmp_49 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_48)
  %a_0_addr_21 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_49
  %tmp_50 = or i11 %tmp_1, 22
  %tmp_51 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_50)
  %a_0_addr_22 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_51
  %tmp_52 = or i11 %tmp_1, 23
  %tmp_53 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_52)
  %a_0_addr_23 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_53
  %tmp_54 = or i11 %tmp_1, 24
  %tmp_55 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_54)
  %a_0_addr_24 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_55
  %tmp_56 = or i11 %tmp_1, 25
  %tmp_57 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_56)
  %a_0_addr_25 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_57
  %tmp_58 = or i11 %tmp_1, 26
  %tmp_59 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_58)
  %a_0_addr_26 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_59
  %tmp_60 = or i11 %tmp_1, 27
  %tmp_61 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_60)
  %a_0_addr_27 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_61
  %tmp_62 = or i11 %tmp_1, 28
  %tmp_63 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_62)
  %a_0_addr_28 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_63
  %tmp_64 = or i11 %tmp_1, 29
  %tmp_65 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_64)
  %a_0_addr_29 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_65
  %tmp_66 = or i11 %tmp_1, 30
  %tmp_67 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_66)
  %a_0_addr_30 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_67
  %tmp_68 = or i11 %tmp_1, 31
  %tmp_69 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_68)
  %a_0_addr_31 = getelementptr [1536 x float]* %a_0, i64 0, i64 %tmp_69
  %newIndex1_mid2_v_v = call i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1 true, i6 %i2_mid2_v)
  %newIndex1_mid2_v = urem i7 %newIndex1_mid2_v_v, 48
  %tmp_70 = call i12 @_ssdm_op_BitConcatenate.i12.i7.i5(i7 %newIndex1_mid2_v, i5 0)
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str5) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_5 = icmp eq i6 %j_mid2, 0
  %a_0_load = load float* %a_0_addr, align 4
  %a_0_load_1 = load float* %a_0_addr_1, align 4
  %a_0_load_2 = load float* %a_0_addr_2, align 4
  %a_0_load_3 = load float* %a_0_addr_3, align 4
  %a_0_load_4 = load float* %a_0_addr_4, align 4
  %a_0_load_5 = load float* %a_0_addr_5, align 4
  %a_0_load_6 = load float* %a_0_addr_6, align 4
  %a_0_load_7 = load float* %a_0_addr_7, align 4
  %a_0_load_8 = load float* %a_0_addr_8, align 4
  %a_0_load_9 = load float* %a_0_addr_9, align 4
  %a_0_load_10 = load float* %a_0_addr_10, align 4
  %a_0_load_11 = load float* %a_0_addr_11, align 4
  %a_0_load_12 = load float* %a_0_addr_12, align 4
  %a_0_load_13 = load float* %a_0_addr_13, align 4
  %a_0_load_14 = load float* %a_0_addr_14, align 4
  %a_0_load_15 = load float* %a_0_addr_15, align 4
  %a_0_load_16 = load float* %a_0_addr_16, align 4
  %a_0_load_17 = load float* %a_0_addr_17, align 4
  %a_0_load_18 = load float* %a_0_addr_18, align 4
  %a_0_load_19 = load float* %a_0_addr_19, align 4
  %a_0_load_20 = load float* %a_0_addr_20, align 4
  %a_0_load_21 = load float* %a_0_addr_21, align 4
  %a_0_load_22 = load float* %a_0_addr_22, align 4
  %a_0_load_23 = load float* %a_0_addr_23, align 4
  %a_0_load_24 = load float* %a_0_addr_24, align 4
  %a_0_load_25 = load float* %a_0_addr_25, align 4
  %a_0_load_26 = load float* %a_0_addr_26, align 4
  %a_0_load_27 = load float* %a_0_addr_27, align 4
  %a_0_load_28 = load float* %a_0_addr_28, align 4
  %a_0_load_29 = load float* %a_0_addr_29, align 4
  %a_0_load_30 = load float* %a_0_addr_30, align 4
  %a_0_load_31 = load float* %a_0_addr_31, align 4
  %a_row_load_31 = select i1 %tmp_5, float %a_0_load_31, float %a_row_load_93
  %a_row_load_30 = select i1 %tmp_5, float %a_0_load_30, float %a_row_load_92
  %a_row_load_29 = select i1 %tmp_5, float %a_0_load_29, float %a_row_load_91
  %a_row_load_28 = select i1 %tmp_5, float %a_0_load_28, float %a_row_load_90
  %a_row_load_27 = select i1 %tmp_5, float %a_0_load_27, float %a_row_load_89
  %a_row_load_26 = select i1 %tmp_5, float %a_0_load_26, float %a_row_load_88
  %a_row_load_25 = select i1 %tmp_5, float %a_0_load_25, float %a_row_load_87
  %a_row_load_24 = select i1 %tmp_5, float %a_0_load_24, float %a_row_load_86
  %a_row_load_23 = select i1 %tmp_5, float %a_0_load_23, float %a_row_load_85
  %a_row_load_22 = select i1 %tmp_5, float %a_0_load_22, float %a_row_load_84
  %a_row_load_21 = select i1 %tmp_5, float %a_0_load_21, float %a_row_load_83
  %a_row_load_20 = select i1 %tmp_5, float %a_0_load_20, float %a_row_load_82
  %a_row_load_19 = select i1 %tmp_5, float %a_0_load_19, float %a_row_load_81
  %a_row_load_18 = select i1 %tmp_5, float %a_0_load_18, float %a_row_load_80
  %a_row_load_17 = select i1 %tmp_5, float %a_0_load_17, float %a_row_load_79
  %a_row_load_16 = select i1 %tmp_5, float %a_0_load_16, float %a_row_load_78
  %a_row_load_15 = select i1 %tmp_5, float %a_0_load_15, float %a_row_load_77
  %a_row_load_14 = select i1 %tmp_5, float %a_0_load_14, float %a_row_load_76
  %a_row_load_13 = select i1 %tmp_5, float %a_0_load_13, float %a_row_load_75
  %a_row_load_12 = select i1 %tmp_5, float %a_0_load_12, float %a_row_load_74
  %a_row_load_11 = select i1 %tmp_5, float %a_0_load_11, float %a_row_load_73
  %a_row_load_10 = select i1 %tmp_5, float %a_0_load_10, float %a_row_load_72
  %a_row_load_9 = select i1 %tmp_5, float %a_0_load_9, float %a_row_load_71
  %a_row_load_8 = select i1 %tmp_5, float %a_0_load_8, float %a_row_load_70
  %a_row_load_7 = select i1 %tmp_5, float %a_0_load_7, float %a_row_load_69
  %a_row_load_6 = select i1 %tmp_5, float %a_0_load_6, float %a_row_load_68
  %a_row_load_5 = select i1 %tmp_5, float %a_0_load_5, float %a_row_load_67
  %a_row_load_4 = select i1 %tmp_5, float %a_0_load_4, float %a_row_load_66
  %a_row_load_3 = select i1 %tmp_5, float %a_0_load_3, float %a_row_load_65
  %a_row_load_2 = select i1 %tmp_5, float %a_0_load_2, float %a_row_load_64
  %a_row_load_1 = select i1 %tmp_5, float %a_0_load_1, float %a_row_load_63
  %a_row_load = select i1 %tmp_5, float %a_0_load, float %a_row_load_62
  store float %a_row_load_31, float* %a_row_load_s
  store float %a_row_load_30, float* %a_row_load_32
  store float %a_row_load_29, float* %a_row_load_33
  store float %a_row_load_28, float* %a_row_load_34
  store float %a_row_load_27, float* %a_row_load_35
  store float %a_row_load_26, float* %a_row_load_36
  store float %a_row_load_25, float* %a_row_load_37
  store float %a_row_load_24, float* %a_row_load_38
  store float %a_row_load_23, float* %a_row_load_39
  store float %a_row_load_22, float* %a_row_load_40
  store float %a_row_load_21, float* %a_row_load_41
  store float %a_row_load_20, float* %a_row_load_42
  store float %a_row_load_19, float* %a_row_load_43
  store float %a_row_load_18, float* %a_row_load_44
  store float %a_row_load_17, float* %a_row_load_45
  store float %a_row_load_16, float* %a_row_load_46
  store float %a_row_load_15, float* %a_row_load_47
  store float %a_row_load_14, float* %a_row_load_48
  store float %a_row_load_13, float* %a_row_load_49
  store float %a_row_load_12, float* %a_row_load_50
  store float %a_row_load_11, float* %a_row_load_51
  store float %a_row_load_10, float* %a_row_load_52
  store float %a_row_load_9, float* %a_row_load_53
  store float %a_row_load_8, float* %a_row_load_54
  store float %a_row_load_7, float* %a_row_load_55
  store float %a_row_load_6, float* %a_row_load_56
  store float %a_row_load_5, float* %a_row_load_57
  store float %a_row_load_4, float* %a_row_load_58
  store float %a_row_load_3, float* %a_row_load_59
  store float %a_row_load_2, float* %a_row_load_60
  store float %a_row_load_1, float* %a_row_load_61
  store float %a_row_load, float* %a_row_load_018
  br i1 %tmp_mid2, label %.preheader.preheader, label %.loopexit

; <label>:1                                       ; preds = %.preheader7
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i1.i6(i1, i6) nounwind readnone {
entry:
  %empty = zext i1 %0 to i7
  %empty_4 = zext i6 %1 to i7
  %empty_5 = shl i7 %empty, 6
  %empty_6 = or i7 %empty_5, %empty_4
  ret i7 %empty_6
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i58.i6(i58, i6) nounwind readnone {
entry:
  %empty = zext i58 %0 to i64
  %empty_7 = zext i6 %1 to i64
  %empty_8 = shl i64 %empty, 6
  %empty_9 = or i64 %empty_8, %empty_7
  ret i64 %empty_9
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53, i11) nounwind readnone {
entry:
  %empty = zext i53 %0 to i64
  %empty_10 = zext i11 %1 to i64
  %empty_11 = shl i64 %empty, 11
  %empty_12 = or i64 %empty_11, %empty_10
  ret i64 %empty_12
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i7.i5(i7, i5) nounwind readnone {
entry:
  %empty = zext i7 %0 to i12
  %empty_13 = zext i5 %1 to i12
  %empty_14 = shl i12 %empty, 5
  %empty_15 = or i12 %empty_14, %empty_13
  ret i12 %empty_15
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i6.i5(i6, i5) nounwind readnone {
entry:
  %empty = zext i6 %0 to i11
  %empty_16 = zext i5 %1 to i11
  %empty_17 = shl i11 %empty, 5
  %empty_18 = or i11 %empty_17, %empty_16
  ret i11 %empty_18
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type [32]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"a", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 48, i32 95, i32 1}
!13 = metadata !{i32 0, i32 31, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"a", metadata !18, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !19, metadata !13}
!19 = metadata !{i32 0, i32 47, i32 1}