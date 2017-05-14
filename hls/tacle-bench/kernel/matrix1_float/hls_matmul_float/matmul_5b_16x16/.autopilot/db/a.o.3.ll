; ModuleID = '/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float/hls_matmul_float/matmul_5b_16x16/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmul_hw_str = internal unnamed_addr constant [10 x i8] c"matmul_hw\00" ; [#uses=1 type=[10 x i8]*]
@L_col_str = internal unnamed_addr constant [6 x i8] c"L_col\00" ; [#uses=1 type=[6 x i8]*]
@p_str5 = private unnamed_addr constant [4 x i8] c"col\00", align 1 ; [#uses=3 type=[4 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=46 type=[1 x i8]*]

; [#uses=0]
define void @matmul_hw([128 x float]* %a_0, [128 x float]* %a_1, [128 x float]* %b_0, [128 x float]* %b_1, [256 x float]* %c) {
  %a_row_load_015 = alloca float                  ; [#uses=2 type=float*]
  %a_row_load_29 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_28 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_27 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_26 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_25 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_24 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_23 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_22 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_21 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_20 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_19 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_18 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_17 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_16 = alloca float                   ; [#uses=2 type=float*]
  %a_row_load_s = alloca float                    ; [#uses=2 type=float*]
  call void (...)* @_ssdm_op_SpecBitsMap([128 x float]* %b_1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([128 x float]* %b_0), !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([128 x float]* %a_1), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([128 x float]* %a_0), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap([256 x float]* %c), !map !30
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matmul_hw_str) nounwind
  %b_copy_0 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_1 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_2 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_3 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_4 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_5 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_6 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_7 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_8 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_9 = alloca [16 x float], align 16       ; [#uses=2 type=[16 x float]*]
  %b_copy_10 = alloca [16 x float], align 16      ; [#uses=2 type=[16 x float]*]
  %b_copy_11 = alloca [16 x float], align 16      ; [#uses=2 type=[16 x float]*]
  %b_copy_12 = alloca [16 x float], align 16      ; [#uses=2 type=[16 x float]*]
  %b_copy_13 = alloca [16 x float], align 16      ; [#uses=2 type=[16 x float]*]
  %b_copy_14 = alloca [16 x float], align 16      ; [#uses=2 type=[16 x float]*]
  %b_copy_15 = alloca [16 x float], align 16      ; [#uses=2 type=[16 x float]*]
  call void @llvm.dbg.value(metadata !{[128 x float]* %a_0}, i64 0, metadata !35), !dbg !52 ; [debug line = 4:25] [debug variable = a[0]]
  call void @llvm.dbg.value(metadata !{[128 x float]* %a_1}, i64 0, metadata !53), !dbg !52 ; [debug line = 4:25] [debug variable = a[1]]
  call void @llvm.dbg.value(metadata !{[128 x float]* %b_0}, i64 0, metadata !54), !dbg !56 ; [debug line = 4:140] [debug variable = b[0]]
  call void @llvm.dbg.value(metadata !{[128 x float]* %b_1}, i64 0, metadata !57), !dbg !56 ; [debug line = 4:140] [debug variable = b[1]]
  call void @llvm.dbg.value(metadata !{[256 x float]* %c}, i64 0, metadata !58), !dbg !59 ; [debug line = 4:0] [debug variable = c]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !60 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface([128 x float]* %a_0, [128 x float]* %a_1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([128 x float]* %a_0, [128 x float]* %a_1, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface([128 x float]* %b_0, [128 x float]* %b_1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([128 x float]* %b_0, [128 x float]* %b_1, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface([256 x float]* %c, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([256 x float]* %c, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_0}, metadata !62), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[0]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_1}, metadata !65), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[1]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_2}, metadata !66), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[2]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_3}, metadata !67), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[3]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_4}, metadata !68), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[4]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_5}, metadata !69), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[5]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_6}, metadata !70), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[6]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_7}, metadata !71), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[7]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_8}, metadata !72), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[8]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_9}, metadata !73), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[9]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_10}, metadata !74), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[10]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_11}, metadata !75), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[11]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_12}, metadata !76), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[12]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_13}, metadata !77), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[13]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_14}, metadata !78), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[14]]
  call void @llvm.dbg.declare(metadata !{[16 x float]* %b_copy_15}, metadata !79), !dbg !64 ; [debug line = 18:11] [debug variable = b_copy[15]]
  br label %.preheader7, !dbg !80                 ; [debug line = 21:15]

.preheader7:                                      ; preds = %.loopexit, %0
  %indvar_flatten = phi i9 [ 0, %0 ], [ %indvar_flatten_next, %.loopexit ] ; [#uses=2 type=i9]
  %i = phi i5 [ 0, %0 ], [ %tmp_1_mid2_v, %.loopexit ] ; [#uses=3 type=i5]
  %j = phi i5 [ 0, %0 ], [ %j_1, %.loopexit ]     ; [#uses=2 type=i5]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !82), !dbg !84 ; [debug line = 21:59] [debug variable = i]
  %exitcond_flatten = icmp eq i9 %indvar_flatten, -256 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i9 %indvar_flatten, 1 ; [#uses=1 type=i9]
  br i1 %exitcond_flatten, label %1, label %.preheader7.preheader

.preheader.preheader:                             ; preds = %.preheader7.preheader
  %tmp_6 = zext i5 %j_mid2 to i64, !dbg !85       ; [#uses=18 type=i64] [debug line = 38:7]
  %tmp_6_cast6 = zext i5 %j_mid2 to i8            ; [#uses=1 type=i8]
  %tmp_6_cast5 = zext i5 %j_mid2 to i7            ; [#uses=2 type=i7]
  %tmp_6_cast = zext i5 %j_mid2 to i6             ; [#uses=1 type=i6]
  %b_0_addr = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_6 ; [#uses=1 type=float*]
  %tmp_23 = add i6 %tmp_6_cast, 16                ; [#uses=1 type=i6]
  %tmp_24_cast = zext i6 %tmp_23 to i64           ; [#uses=2 type=i64]
  %b_0_addr_1 = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_24_cast ; [#uses=1 type=float*]
  %tmp_24 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 1, i5 %j_mid2) ; [#uses=2 type=i64]
  %b_0_addr_2 = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_24 ; [#uses=1 type=float*]
  %tmp_25 = add i7 %tmp_6_cast5, 48               ; [#uses=1 type=i7]
  %tmp_26_cast = zext i7 %tmp_25 to i64           ; [#uses=2 type=i64]
  %b_0_addr_3 = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_26_cast ; [#uses=1 type=float*]
  %tmp_26 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 2, i5 %j_mid2) ; [#uses=2 type=i64]
  %b_0_addr_4 = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_26 ; [#uses=1 type=float*]
  %tmp_27 = add i7 %tmp_6_cast5, -48              ; [#uses=1 type=i7]
  %tmp_28_cast = zext i7 %tmp_27 to i64           ; [#uses=2 type=i64]
  %b_0_addr_5 = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_28_cast ; [#uses=1 type=float*]
  %tmp_28 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 3, i5 %j_mid2) ; [#uses=2 type=i64]
  %b_0_addr_6 = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_28 ; [#uses=1 type=float*]
  %tmp_29 = add i8 %tmp_6_cast6, 112              ; [#uses=1 type=i8]
  %tmp_30_cast = zext i8 %tmp_29 to i64           ; [#uses=2 type=i64]
  %b_0_addr_7 = getelementptr [128 x float]* %b_0, i64 0, i64 %tmp_30_cast ; [#uses=1 type=float*]
  %b_1_addr = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_6 ; [#uses=1 type=float*]
  %b_1_addr_1 = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_24_cast ; [#uses=1 type=float*]
  %b_1_addr_2 = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_24 ; [#uses=1 type=float*]
  %b_1_addr_3 = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_26_cast ; [#uses=1 type=float*]
  %b_1_addr_4 = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_26 ; [#uses=1 type=float*]
  %b_1_addr_5 = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_28_cast ; [#uses=1 type=float*]
  %b_1_addr_6 = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_28 ; [#uses=1 type=float*]
  %b_1_addr_7 = getelementptr [128 x float]* %b_1, i64 0, i64 %tmp_30_cast ; [#uses=1 type=float*]
  %b_0_load = load float* %b_0_addr, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_0_addr = getelementptr [16 x float]* %b_copy_0, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load, float* %b_copy_0_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_0_load_1 = load float* %b_0_addr_1, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_1_addr = getelementptr [16 x float]* %b_copy_1, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load_1, float* %b_copy_1_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_0_load_2 = load float* %b_0_addr_2, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_2_addr = getelementptr [16 x float]* %b_copy_2, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load_2, float* %b_copy_2_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_0_load_3 = load float* %b_0_addr_3, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_3_addr = getelementptr [16 x float]* %b_copy_3, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load_3, float* %b_copy_3_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_0_load_4 = load float* %b_0_addr_4, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_4_addr = getelementptr [16 x float]* %b_copy_4, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load_4, float* %b_copy_4_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_0_load_5 = load float* %b_0_addr_5, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_5_addr = getelementptr [16 x float]* %b_copy_5, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load_5, float* %b_copy_5_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_0_load_6 = load float* %b_0_addr_6, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_6_addr = getelementptr [16 x float]* %b_copy_6, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load_6, float* %b_copy_6_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_0_load_7 = load float* %b_0_addr_7, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_7_addr = getelementptr [16 x float]* %b_copy_7, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_0_load_7, float* %b_copy_7_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load = load float* %b_1_addr, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_8_addr = getelementptr [16 x float]* %b_copy_8, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load, float* %b_copy_8_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load_1 = load float* %b_1_addr_1, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_9_addr = getelementptr [16 x float]* %b_copy_9, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load_1, float* %b_copy_9_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load_2 = load float* %b_1_addr_2, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_10_addr = getelementptr [16 x float]* %b_copy_10, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load_2, float* %b_copy_10_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load_3 = load float* %b_1_addr_3, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_11_addr = getelementptr [16 x float]* %b_copy_11, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load_3, float* %b_copy_11_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load_4 = load float* %b_1_addr_4, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_12_addr = getelementptr [16 x float]* %b_copy_12, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load_4, float* %b_copy_12_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load_5 = load float* %b_1_addr_5, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_13_addr = getelementptr [16 x float]* %b_copy_13, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load_5, float* %b_copy_13_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load_6 = load float* %b_1_addr_6, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_14_addr = getelementptr [16 x float]* %b_copy_14, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load_6, float* %b_copy_14_addr, align 4, !dbg !85 ; [debug line = 38:7]
  %b_1_load_7 = load float* %b_1_addr_7, align 4, !dbg !85 ; [#uses=1 type=float] [debug line = 38:7]
  %b_copy_15_addr = getelementptr [16 x float]* %b_copy_15, i64 0, i64 %tmp_6, !dbg !85 ; [#uses=1 type=float*] [debug line = 38:7]
  store float %b_1_load_7, float* %b_copy_15_addr, align 4, !dbg !85 ; [debug line = 38:7]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader7.preheader, %.preheader.preheader
  %tmp_9 = zext i5 %j_mid2 to i64, !dbg !92       ; [#uses=16 type=i64] [debug line = 43:4]
  %tmp_9_cast = zext i5 %j_mid2 to i10, !dbg !95  ; [#uses=1 type=i10] [debug line = 46:5]
  %tmp_30 = add i10 %tmp_23_cast, %tmp_9_cast, !dbg !95 ; [#uses=1 type=i10] [debug line = 46:5]
  %tmp_31_cast = zext i10 %tmp_30 to i64, !dbg !95 ; [#uses=1 type=i64] [debug line = 46:5]
  %c_addr = getelementptr [256 x float]* %c, i64 0, i64 %tmp_31_cast, !dbg !95 ; [#uses=1 type=float*] [debug line = 46:5]
  %b_copy_0_addr_1 = getelementptr [16 x float]* %b_copy_0, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_0_load = load float* %b_copy_0_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_s = fmul float %a_row_load, %b_copy_0_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5 = fadd float %tmp_s, 0.000000e+00, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_1_addr_1 = getelementptr [16 x float]* %b_copy_1, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_1_load = load float* %b_copy_1_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_1 = fmul float %a_row_load_1, %b_copy_1_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_1 = fadd float %tmp_5, %tmp_2_1, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_2_addr_1 = getelementptr [16 x float]* %b_copy_2, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_2_load = load float* %b_copy_2_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_2 = fmul float %a_row_load_2, %b_copy_2_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_2 = fadd float %tmp_5_1, %tmp_2_2, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_3_addr_1 = getelementptr [16 x float]* %b_copy_3, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_3_load = load float* %b_copy_3_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_3 = fmul float %a_row_load_3, %b_copy_3_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_3 = fadd float %tmp_5_2, %tmp_2_3, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_4_addr_1 = getelementptr [16 x float]* %b_copy_4, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_4_load = load float* %b_copy_4_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_4 = fmul float %a_row_load_4, %b_copy_4_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_4 = fadd float %tmp_5_3, %tmp_2_4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_5_addr_1 = getelementptr [16 x float]* %b_copy_5, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_5_load = load float* %b_copy_5_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_5 = fmul float %a_row_load_5, %b_copy_5_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_5 = fadd float %tmp_5_4, %tmp_2_5, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_6_addr_1 = getelementptr [16 x float]* %b_copy_6, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_6_load = load float* %b_copy_6_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_6 = fmul float %a_row_load_6, %b_copy_6_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_6 = fadd float %tmp_5_5, %tmp_2_6, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_7_addr_1 = getelementptr [16 x float]* %b_copy_7, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_7_load = load float* %b_copy_7_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_7 = fmul float %a_row_load_7, %b_copy_7_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_7 = fadd float %tmp_5_6, %tmp_2_7, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_8_addr_1 = getelementptr [16 x float]* %b_copy_8, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_8_load = load float* %b_copy_8_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_8 = fmul float %a_row_load_8, %b_copy_8_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_8 = fadd float %tmp_5_7, %tmp_2_8, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_9_addr_1 = getelementptr [16 x float]* %b_copy_9, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_9_load = load float* %b_copy_9_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_9 = fmul float %a_row_load_9, %b_copy_9_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_9 = fadd float %tmp_5_8, %tmp_2_9, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_10_addr_1 = getelementptr [16 x float]* %b_copy_10, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_10_load = load float* %b_copy_10_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_s = fmul float %a_row_load_10, %b_copy_10_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_s = fadd float %tmp_5_9, %tmp_2_s, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_11_addr_1 = getelementptr [16 x float]* %b_copy_11, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_11_load = load float* %b_copy_11_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_10 = fmul float %a_row_load_11, %b_copy_11_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_10 = fadd float %tmp_5_s, %tmp_2_10, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_12_addr_1 = getelementptr [16 x float]* %b_copy_12, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_12_load = load float* %b_copy_12_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_11 = fmul float %a_row_load_12, %b_copy_12_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_11 = fadd float %tmp_5_10, %tmp_2_11, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_13_addr_1 = getelementptr [16 x float]* %b_copy_13, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_13_load = load float* %b_copy_13_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_12 = fmul float %a_row_load_13, %b_copy_13_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_12 = fadd float %tmp_5_11, %tmp_2_12, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_14_addr_1 = getelementptr [16 x float]* %b_copy_14, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_14_load = load float* %b_copy_14_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_13 = fmul float %a_row_load_14, %b_copy_14_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_13 = fadd float %tmp_5_12, %tmp_2_13, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %b_copy_15_addr_1 = getelementptr [16 x float]* %b_copy_15, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=float*] [debug line = 43:4]
  %b_copy_15_load = load float* %b_copy_15_addr_1, align 4, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_2_14 = fmul float %a_row_load_15, %b_copy_15_load, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  %tmp_5_14 = fadd float %tmp_5_13, %tmp_2_14, !dbg !92 ; [#uses=1 type=float] [debug line = 43:4]
  store float %tmp_5_14, float* %c_addr, align 4, !dbg !95 ; [debug line = 46:5]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str5, i32 %tmp_2) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 47:3]
  %j_1 = add i5 %j_mid2, 1, !dbg !97              ; [#uses=1 type=i5] [debug line = 23:64]
  call void @llvm.dbg.value(metadata !{i5 %j_1}, i64 0, metadata !98), !dbg !97 ; [debug line = 23:64] [debug variable = j]
  br label %.preheader7, !dbg !97                 ; [debug line = 23:64]

.preheader7.preheader:                            ; preds = %.preheader7
  %a_row_load_30 = load float* %a_row_load_015    ; [#uses=1 type=float]
  %a_row_load_31 = load float* %a_row_load_29     ; [#uses=1 type=float]
  %a_row_load_32 = load float* %a_row_load_28     ; [#uses=1 type=float]
  %a_row_load_33 = load float* %a_row_load_27     ; [#uses=1 type=float]
  %a_row_load_34 = load float* %a_row_load_26     ; [#uses=1 type=float]
  %a_row_load_35 = load float* %a_row_load_25     ; [#uses=1 type=float]
  %a_row_load_36 = load float* %a_row_load_24     ; [#uses=1 type=float]
  %a_row_load_37 = load float* %a_row_load_23     ; [#uses=1 type=float]
  %a_row_load_38 = load float* %a_row_load_22     ; [#uses=1 type=float]
  %a_row_load_39 = load float* %a_row_load_21     ; [#uses=1 type=float]
  %a_row_load_40 = load float* %a_row_load_20     ; [#uses=1 type=float]
  %a_row_load_41 = load float* %a_row_load_19     ; [#uses=1 type=float]
  %a_row_load_42 = load float* %a_row_load_18     ; [#uses=1 type=float]
  %a_row_load_43 = load float* %a_row_load_17     ; [#uses=1 type=float]
  %a_row_load_44 = load float* %a_row_load_16     ; [#uses=1 type=float]
  %a_row_load_45 = load float* %a_row_load_s      ; [#uses=1 type=float]
  %i_1 = add i5 %i, 1, !dbg !84                   ; [#uses=2 type=i5] [debug line = 21:59]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !82), !dbg !84 ; [debug line = 21:59] [debug variable = i]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @L_col_str)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) ; [#uses=0 type=i32]
  %exitcond = icmp eq i5 %j, -16, !dbg !99        ; [#uses=3 type=i1] [debug line = 23:20]
  %j_mid2 = select i1 %exitcond, i5 0, i5 %j      ; [#uses=11 type=i5]
  %tmp_mid1 = icmp eq i5 %i_1, 0, !dbg !100       ; [#uses=1 type=i1] [debug line = 36:4]
  %tmp1 = icmp eq i5 %i, 0, !dbg !100             ; [#uses=1 type=i1] [debug line = 36:4]
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp1, !dbg !100 ; [#uses=1 type=i1] [debug line = 36:4]
  %tmp_1_mid2_v = select i1 %exitcond, i5 %i_1, i5 %i, !dbg !95 ; [#uses=3 type=i5] [debug line = 46:5]
  %tmp_1 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_1_mid2_v, i3 0) ; [#uses=8 type=i8]
  %tmp_4 = zext i8 %tmp_1 to i64                  ; [#uses=2 type=i64]
  %a_0_addr = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_4 ; [#uses=1 type=float*]
  %tmp_7 = or i8 %tmp_1, 1                        ; [#uses=1 type=i8]
  %tmp_8 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56 0, i8 %tmp_7) ; [#uses=2 type=i64]
  %a_0_addr_1 = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_8 ; [#uses=1 type=float*]
  %tmp_10 = or i8 %tmp_1, 2                       ; [#uses=1 type=i8]
  %tmp_11 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56 0, i8 %tmp_10) ; [#uses=2 type=i64]
  %a_0_addr_2 = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %tmp_12 = or i8 %tmp_1, 3                       ; [#uses=1 type=i8]
  %tmp_13 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56 0, i8 %tmp_12) ; [#uses=2 type=i64]
  %a_0_addr_3 = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_13 ; [#uses=1 type=float*]
  %tmp_14 = or i8 %tmp_1, 4                       ; [#uses=1 type=i8]
  %tmp_15 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56 0, i8 %tmp_14) ; [#uses=2 type=i64]
  %a_0_addr_4 = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_15 ; [#uses=1 type=float*]
  %tmp_16 = or i8 %tmp_1, 5                       ; [#uses=1 type=i8]
  %tmp_17 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56 0, i8 %tmp_16) ; [#uses=2 type=i64]
  %a_0_addr_5 = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_17 ; [#uses=1 type=float*]
  %tmp_18 = or i8 %tmp_1, 6                       ; [#uses=1 type=i8]
  %tmp_19 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56 0, i8 %tmp_18) ; [#uses=2 type=i64]
  %a_0_addr_6 = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_19 ; [#uses=1 type=float*]
  %tmp_20 = or i8 %tmp_1, 7                       ; [#uses=1 type=i8]
  %tmp_21 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56 0, i8 %tmp_20) ; [#uses=2 type=i64]
  %a_0_addr_7 = getelementptr [128 x float]* %a_0, i64 0, i64 %tmp_21 ; [#uses=1 type=float*]
  %a_1_addr = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_4 ; [#uses=1 type=float*]
  %a_1_addr_1 = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_8 ; [#uses=1 type=float*]
  %a_1_addr_2 = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_11 ; [#uses=1 type=float*]
  %a_1_addr_3 = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_13 ; [#uses=1 type=float*]
  %a_1_addr_4 = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_15 ; [#uses=1 type=float*]
  %a_1_addr_5 = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_17 ; [#uses=1 type=float*]
  %a_1_addr_6 = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_19 ; [#uses=1 type=float*]
  %a_1_addr_7 = getelementptr [128 x float]* %a_1, i64 0, i64 %tmp_21 ; [#uses=1 type=float*]
  %tmp_22 = call i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5 %tmp_1_mid2_v, i4 0) ; [#uses=1 type=i9]
  %tmp_23_cast = zext i9 %tmp_22 to i10, !dbg !101 ; [#uses=1 type=i10] [debug line = 23:70]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str5) nounwind, !dbg !101 ; [debug line = 23:70]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str5) nounwind, !dbg !101 ; [#uses=1 type=i32] [debug line = 23:70]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !102 ; [debug line = 25:1]
  %tmp_3 = icmp eq i5 %j_mid2, 0, !dbg !103       ; [#uses=16 type=i1] [debug line = 30:5]
  %a_0_load = load float* %a_0_addr, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_0_load_1 = load float* %a_0_addr_1, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_0_load_2 = load float* %a_0_addr_2, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_0_load_3 = load float* %a_0_addr_3, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_0_load_4 = load float* %a_0_addr_4, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_0_load_5 = load float* %a_0_addr_5, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_0_load_6 = load float* %a_0_addr_6, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_0_load_7 = load float* %a_0_addr_7, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load = load float* %a_1_addr, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load_1 = load float* %a_1_addr_1, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load_2 = load float* %a_1_addr_2, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load_3 = load float* %a_1_addr_3, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load_4 = load float* %a_1_addr_4, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load_5 = load float* %a_1_addr_5, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load_6 = load float* %a_1_addr_6, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_1_load_7 = load float* %a_1_addr_7, align 4, !dbg !104 ; [#uses=1 type=float] [debug line = 32:6]
  %a_row_load_15 = select i1 %tmp_3, float %a_1_load_7, float %a_row_load_45 ; [#uses=2 type=float]
  %a_row_load_14 = select i1 %tmp_3, float %a_1_load_6, float %a_row_load_44 ; [#uses=2 type=float]
  %a_row_load_13 = select i1 %tmp_3, float %a_1_load_5, float %a_row_load_43 ; [#uses=2 type=float]
  %a_row_load_12 = select i1 %tmp_3, float %a_1_load_4, float %a_row_load_42 ; [#uses=2 type=float]
  %a_row_load_11 = select i1 %tmp_3, float %a_1_load_3, float %a_row_load_41 ; [#uses=2 type=float]
  %a_row_load_10 = select i1 %tmp_3, float %a_1_load_2, float %a_row_load_40 ; [#uses=2 type=float]
  %a_row_load_9 = select i1 %tmp_3, float %a_1_load_1, float %a_row_load_39 ; [#uses=2 type=float]
  %a_row_load_8 = select i1 %tmp_3, float %a_1_load, float %a_row_load_38 ; [#uses=2 type=float]
  %a_row_load_7 = select i1 %tmp_3, float %a_0_load_7, float %a_row_load_37 ; [#uses=2 type=float]
  %a_row_load_6 = select i1 %tmp_3, float %a_0_load_6, float %a_row_load_36 ; [#uses=2 type=float]
  %a_row_load_5 = select i1 %tmp_3, float %a_0_load_5, float %a_row_load_35 ; [#uses=2 type=float]
  %a_row_load_4 = select i1 %tmp_3, float %a_0_load_4, float %a_row_load_34 ; [#uses=2 type=float]
  %a_row_load_3 = select i1 %tmp_3, float %a_0_load_3, float %a_row_load_33 ; [#uses=2 type=float]
  %a_row_load_2 = select i1 %tmp_3, float %a_0_load_2, float %a_row_load_32 ; [#uses=2 type=float]
  %a_row_load_1 = select i1 %tmp_3, float %a_0_load_1, float %a_row_load_31 ; [#uses=2 type=float]
  %a_row_load = select i1 %tmp_3, float %a_0_load, float %a_row_load_30 ; [#uses=2 type=float]
  store float %a_row_load_15, float* %a_row_load_s
  store float %a_row_load_14, float* %a_row_load_16
  store float %a_row_load_13, float* %a_row_load_17
  store float %a_row_load_12, float* %a_row_load_18
  store float %a_row_load_11, float* %a_row_load_19
  store float %a_row_load_10, float* %a_row_load_20
  store float %a_row_load_9, float* %a_row_load_21
  store float %a_row_load_8, float* %a_row_load_22
  store float %a_row_load_7, float* %a_row_load_23
  store float %a_row_load_6, float* %a_row_load_24
  store float %a_row_load_5, float* %a_row_load_25
  store float %a_row_load_4, float* %a_row_load_26
  store float %a_row_load_3, float* %a_row_load_27
  store float %a_row_load_2, float* %a_row_load_28
  store float %a_row_load_1, float* %a_row_load_29
  store float %a_row_load, float* %a_row_load_015
  br i1 %tmp_mid2, label %.preheader.preheader, label %.loopexit, !dbg !100 ; [debug line = 36:4]

; <label>:1                                       ; preds = %.preheader7
  ret void, !dbg !108                             ; [debug line = 49:1]
}

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=16]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i9 @_ssdm_op_BitConcatenate.i9.i5.i4(i5, i4) nounwind readnone {
entry:
  %empty = zext i5 %0 to i9                       ; [#uses=1 type=i9]
  %empty_4 = zext i4 %1 to i9                     ; [#uses=1 type=i9]
  %empty_5 = shl i9 %empty, 4                     ; [#uses=1 type=i9]
  %empty_6 = or i9 %empty_5, %empty_4             ; [#uses=1 type=i9]
  ret i9 %empty_6
}

; [#uses=1]
define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8                       ; [#uses=1 type=i8]
  %empty_7 = zext i3 %1 to i8                     ; [#uses=1 type=i8]
  %empty_8 = shl i8 %empty, 3                     ; [#uses=1 type=i8]
  %empty_9 = or i8 %empty_8, %empty_7             ; [#uses=1 type=i8]
  ret i8 %empty_9
}

; [#uses=3]
define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59, i5) nounwind readnone {
entry:
  %empty = zext i59 %0 to i64                     ; [#uses=1 type=i64]
  %empty_10 = zext i5 %1 to i64                   ; [#uses=1 type=i64]
  %empty_11 = shl i64 %empty, 5                   ; [#uses=1 type=i64]
  %empty_12 = or i64 %empty_11, %empty_10         ; [#uses=1 type=i64]
  ret i64 %empty_12
}

; [#uses=7]
define weak i64 @_ssdm_op_BitConcatenate.i64.i56.i8(i56, i8) nounwind readnone {
entry:
  %empty = zext i56 %0 to i64                     ; [#uses=1 type=i64]
  %empty_13 = zext i8 %1 to i64                   ; [#uses=1 type=i64]
  %empty_14 = shl i64 %empty, 8                   ; [#uses=1 type=i64]
  %empty_15 = or i64 %empty_14, %empty_13         ; [#uses=1 type=i64]
  ret i64 %empty_15
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type [16]*", metadata !"mat_type [16]*", metadata !"mat_type [16]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"c"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"b", metadata !11, metadata !"float", i32 0, i32 31}
!11 = metadata !{metadata !12, metadata !13}
!12 = metadata !{i32 8, i32 15, i32 1}
!13 = metadata !{i32 0, i32 15, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"b", metadata !18, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !19, metadata !13}
!19 = metadata !{i32 0, i32 7, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"a", metadata !24, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !13, metadata !12}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"a", metadata !29, metadata !"float", i32 0, i32 31}
!29 = metadata !{metadata !13, metadata !19}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"c", metadata !34, metadata !"float", i32 0, i32 31}
!34 = metadata !{metadata !13, metadata !13}
!35 = metadata !{i32 790531, metadata !36, metadata !"a[0]", null, i32 4, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!36 = metadata !{i32 786689, metadata !37, metadata !"a", null, i32 4, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 786478, i32 0, metadata !38, metadata !"matmul_hw", metadata !"matmul_hw", metadata !"", metadata !38, i32 4, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !47, i32 5} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786473, metadata !"matmul.c", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/matrix1_float", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !41, metadata !41, metadata !41}
!41 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !43, metadata !45, i32 0, i32 0} ; [ DW_TAG_array_type ]
!43 = metadata !{i32 786454, null, metadata !"mat_type", metadata !38, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ]
!44 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !43, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{metadata !46, metadata !46}
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 32, i32 0, i32 0, metadata !43, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{i32 4, i32 25, metadata !37, null}
!53 = metadata !{i32 790531, metadata !36, metadata !"a[1]", null, i32 4, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!54 = metadata !{i32 790531, metadata !55, metadata !"b[0]", null, i32 4, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!55 = metadata !{i32 786689, metadata !37, metadata !"b", null, i32 4, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 4, i32 140, metadata !37, null}
!57 = metadata !{i32 790531, metadata !55, metadata !"b[1]", null, i32 4, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!58 = metadata !{i32 786689, metadata !37, metadata !"c", null, i32 4, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 4, i32 0, metadata !37, null}
!60 = metadata !{i32 6, i32 1, metadata !61, null}
!61 = metadata !{i32 786443, metadata !37, i32 5, i32 1, metadata !38, i32 0} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 786688, metadata !61, metadata !"b_copy[0]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !43, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!64 = metadata !{i32 18, i32 11, metadata !61, null}
!65 = metadata !{i32 786688, metadata !61, metadata !"b_copy[1]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786688, metadata !61, metadata !"b_copy[2]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!67 = metadata !{i32 786688, metadata !61, metadata !"b_copy[3]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 786688, metadata !61, metadata !"b_copy[4]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 786688, metadata !61, metadata !"b_copy[5]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 786688, metadata !61, metadata !"b_copy[6]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786688, metadata !61, metadata !"b_copy[7]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786688, metadata !61, metadata !"b_copy[8]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 786688, metadata !61, metadata !"b_copy[9]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 786688, metadata !61, metadata !"b_copy[10]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786688, metadata !61, metadata !"b_copy[11]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 786688, metadata !61, metadata !"b_copy[12]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 786688, metadata !61, metadata !"b_copy[13]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786688, metadata !61, metadata !"b_copy[14]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 786688, metadata !61, metadata !"b_copy[15]", null, i32 18, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 21, i32 15, metadata !81, null}
!81 = metadata !{i32 786443, metadata !61, i32 21, i32 2, metadata !38, i32 1} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786688, metadata !81, metadata !"i", metadata !38, i32 21, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 21, i32 59, metadata !81, null}
!85 = metadata !{i32 38, i32 7, metadata !86, null}
!86 = metadata !{i32 786443, metadata !87, i32 37, i32 106, metadata !38, i32 10} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !88, i32 37, i32 16, metadata !38, i32 9} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 786443, metadata !89, i32 36, i32 16, metadata !38, i32 8} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !90, i32 23, i32 69, metadata !38, i32 4} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !91, i32 23, i32 7, metadata !38, i32 3} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !81, i32 21, i32 64, metadata !38, i32 2} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 43, i32 4, metadata !93, null}
!93 = metadata !{i32 786443, metadata !94, i32 42, i32 104, metadata !38, i32 12} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !89, i32 42, i32 14, metadata !38, i32 11} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 46, i32 5, metadata !89, null}
!96 = metadata !{i32 47, i32 3, metadata !89, null}
!97 = metadata !{i32 23, i32 64, metadata !90, null}
!98 = metadata !{i32 786688, metadata !90, metadata !"j", metadata !38, i32 23, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 23, i32 20, metadata !90, null}
!100 = metadata !{i32 36, i32 4, metadata !89, null}
!101 = metadata !{i32 23, i32 70, metadata !89, null}
!102 = metadata !{i32 25, i32 1, metadata !89, null}
!103 = metadata !{i32 30, i32 5, metadata !89, null}
!104 = metadata !{i32 32, i32 6, metadata !105, null}
!105 = metadata !{i32 786443, metadata !106, i32 32, i32 6, metadata !38, i32 7} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !107, i32 31, i32 15, metadata !38, i32 6} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 786443, metadata !89, i32 30, i32 17, metadata !38, i32 5} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 49, i32 1, metadata !61, null}