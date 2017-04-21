; ModuleID = '/home/patmos/github/bachelor_project_HLS/hls/misc/matmul_float/hls_matmul_float/matmul_3b/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmul_hw_str = internal unnamed_addr constant [10 x i8] c"matmul_hw\00" ; [#uses=1 type=[10 x i8]*]
@L_col_str = internal unnamed_addr constant [6 x i8] c"L_col\00" ; [#uses=1 type=[6 x i8]*]
@p_str5 = private unnamed_addr constant [4 x i8] c"col\00", align 1 ; [#uses=3 type=[4 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=20 type=[1 x i8]*]

; [#uses=0]
define void @matmul_hw([16 x float]* %a_0, [16 x float]* %a_1, [16 x float]* %a_2) {
  %a_row_load_s = alloca float                    ; [#uses=2 type=float*]
  %a_row_load_9 = alloca float                    ; [#uses=2 type=float*]
  %a_row_load_8 = alloca float                    ; [#uses=2 type=float*]
  %a_row_load_7 = alloca float                    ; [#uses=2 type=float*]
  %b_copy_0_3_11 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_0_3_11}, metadata !7) ; [debug variable = b_copy[0][3]]
  %b_copy_0_3_8 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_0_3_8}, metadata !7) ; [debug variable = b_copy[0][3]]
  %b_copy_0_3_12 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_0_3_12}, metadata !7) ; [debug variable = b_copy[0][3]]
  %b_copy_0_3_1 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_0_3_1}, metadata !7) ; [debug variable = b_copy[0][3]]
  %b_copy_1_3_11 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_1_3_11}, metadata !25) ; [debug variable = b_copy[1][3]]
  %b_copy_1_3_8 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_1_3_8}, metadata !25) ; [debug variable = b_copy[1][3]]
  %b_copy_1_3_12 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_1_3_12}, metadata !25) ; [debug variable = b_copy[1][3]]
  %b_copy_1_3_1 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_1_3_1}, metadata !25) ; [debug variable = b_copy[1][3]]
  %b_copy_2_3_11 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_2_3_11}, metadata !27) ; [debug variable = b_copy[2][3]]
  %b_copy_2_3_8 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_2_3_8}, metadata !27) ; [debug variable = b_copy[2][3]]
  %b_copy_2_3_12 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_2_3_12}, metadata !27) ; [debug variable = b_copy[2][3]]
  %b_copy_2_3_1 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_2_3_1}, metadata !27) ; [debug variable = b_copy[2][3]]
  %b_copy_3_3_11 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_3_3_11}, metadata !29) ; [debug variable = b_copy[3][3]]
  %b_copy_3_3_8 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_3_3_8}, metadata !29) ; [debug variable = b_copy[3][3]]
  %b_copy_3_3_12 = alloca float                   ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_3_3_12}, metadata !29) ; [debug variable = b_copy[3][3]]
  %b_copy_3_3_1 = alloca float                    ; [#uses=2 type=float*]
  call void @llvm.dbg.declare(metadata !{float* %b_copy_3_3_1}, metadata !29) ; [debug variable = b_copy[3][3]]
  call void (...)* @_ssdm_op_SpecBitsMap([16 x float]* %a_2), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap([16 x float]* %a_1), !map !38
  call void (...)* @_ssdm_op_SpecBitsMap([16 x float]* %a_0), !map !44
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @matmul_hw_str) nounwind
  call void @llvm.dbg.value(metadata !{[16 x float]* %a_0}, i64 0, metadata !49), !dbg !55 ; [debug line = 4:25] [debug variable = a[0]]
  call void @llvm.dbg.value(metadata !{[16 x float]* %a_1}, i64 0, metadata !56), !dbg !55 ; [debug line = 4:25] [debug variable = a[1]]
  call void @llvm.dbg.value(metadata !{[16 x float]* %a_2}, i64 0, metadata !57), !dbg !55 ; [debug line = 4:25] [debug variable = a[2]]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !58 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface([16 x float]* %a_0, [16 x float]* %a_1, [16 x float]* %a_2, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([16 x float]* %a_0, [16 x float]* %a_1, [16 x float]* %a_2, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %.preheader7, !dbg !59                 ; [debug line = 19:15]

.preheader7:                                      ; preds = %.preheader7.preheader, %0
  %indvar_flatten = phi i5 [ 0, %0 ], [ %indvar_flatten_next, %.preheader7.preheader ] ; [#uses=2 type=i5]
  %i = phi i3 [ 0, %0 ], [ %i2_mid2_v, %.preheader7.preheader ] ; [#uses=3 type=i3]
  %j = phi i3 [ 0, %0 ], [ %j_1, %.preheader7.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !61), !dbg !63 ; [debug line = 19:24] [debug variable = i]
  %exitcond_flatten = icmp eq i5 %indvar_flatten, -16 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i5 %indvar_flatten, 1 ; [#uses=1 type=i5]
  br i1 %exitcond_flatten, label %1, label %.preheader7.preheader

.preheader7.preheader:                            ; preds = %.preheader7
  %a_row_load_4 = load float* %a_row_load_s       ; [#uses=1 type=float]
  %a_row_load_5 = load float* %a_row_load_9       ; [#uses=1 type=float]
  %a_row_load_6 = load float* %a_row_load_8       ; [#uses=1 type=float]
  %a_row_load_10 = load float* %a_row_load_7      ; [#uses=1 type=float]
  %b_copy_0_3_11_load = load float* %b_copy_0_3_11 ; [#uses=2 type=float]
  %b_copy_0_3_8_load = load float* %b_copy_0_3_8  ; [#uses=3 type=float]
  %b_copy_0_3_12_load = load float* %b_copy_0_3_12 ; [#uses=4 type=float]
  %b_copy_0_3_1_load = load float* %b_copy_0_3_1  ; [#uses=4 type=float]
  %b_copy_1_3_11_load = load float* %b_copy_1_3_11 ; [#uses=2 type=float]
  %b_copy_1_3_8_load = load float* %b_copy_1_3_8  ; [#uses=3 type=float]
  %b_copy_1_3_12_load = load float* %b_copy_1_3_12 ; [#uses=4 type=float]
  %b_copy_1_3_1_load = load float* %b_copy_1_3_1  ; [#uses=4 type=float]
  %b_copy_2_3_11_load = load float* %b_copy_2_3_11 ; [#uses=2 type=float]
  %b_copy_2_3_8_load = load float* %b_copy_2_3_8  ; [#uses=3 type=float]
  %b_copy_2_3_12_load = load float* %b_copy_2_3_12 ; [#uses=4 type=float]
  %b_copy_2_3_1_load = load float* %b_copy_2_3_1  ; [#uses=4 type=float]
  %b_copy_3_3_11_load = load float* %b_copy_3_3_11 ; [#uses=2 type=float]
  %b_copy_3_3_8_load = load float* %b_copy_3_3_8  ; [#uses=3 type=float]
  %b_copy_3_3_12_load = load float* %b_copy_3_3_12 ; [#uses=4 type=float]
  %b_copy_3_3_1_load = load float* %b_copy_3_3_1  ; [#uses=4 type=float]
  %i_1 = add i3 1, %i, !dbg !63                   ; [#uses=2 type=i3] [debug line = 19:24]
  call void @llvm.dbg.value(metadata !{i3 %i_1}, i64 0, metadata !61), !dbg !63 ; [debug line = 19:24] [debug variable = i]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @L_col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  %exitcond = icmp eq i3 %j, -4, !dbg !64         ; [#uses=3 type=i1] [debug line = 20:20]
  %j_mid2 = select i1 %exitcond, i3 0, i3 %j      ; [#uses=8 type=i3]
  %tmp_mid1 = icmp eq i3 %i_1, 0, !dbg !67        ; [#uses=1 type=i1] [debug line = 31:4]
  %tmp1 = icmp eq i3 %i, 0, !dbg !67              ; [#uses=1 type=i1] [debug line = 31:4]
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp1, !dbg !67 ; [#uses=16 type=i1] [debug line = 31:4]
  %i2_mid2_v = select i1 %exitcond, i3 %i_1, i3 %i ; [#uses=2 type=i3]
  %tmp_7 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i2_mid2_v, i2 0) ; [#uses=5 type=i5]
  %tmp_10 = zext i5 %tmp_7 to i64                 ; [#uses=1 type=i64]
  %tmp_10_cast = zext i5 %tmp_7 to i6             ; [#uses=1 type=i6]
  %a_0_addr = getelementptr [16 x float]* %a_0, i64 0, i64 %tmp_10 ; [#uses=1 type=float*]
  %tmp_11 = or i5 %tmp_7, 1                       ; [#uses=1 type=i5]
  %tmp_12 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 0, i5 %tmp_11) ; [#uses=1 type=i64]
  %a_0_addr_1 = getelementptr [16 x float]* %a_0, i64 0, i64 %tmp_12 ; [#uses=1 type=float*]
  %tmp_13 = or i5 %tmp_7, 2                       ; [#uses=1 type=i5]
  %tmp_14 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 0, i5 %tmp_13) ; [#uses=1 type=i64]
  %a_0_addr_2 = getelementptr [16 x float]* %a_0, i64 0, i64 %tmp_14 ; [#uses=1 type=float*]
  %tmp_15 = or i5 %tmp_7, 3                       ; [#uses=1 type=i5]
  %tmp_16 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 0, i5 %tmp_15) ; [#uses=1 type=i64]
  %a_0_addr_3 = getelementptr [16 x float]* %a_0, i64 0, i64 %tmp_16 ; [#uses=1 type=float*]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str5) nounwind, !dbg !69 ; [debug line = 20:35]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str5) nounwind, !dbg !69 ; [#uses=1 type=i32] [debug line = 20:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !70 ; [debug line = 21:1]
  %tmp_5 = icmp eq i3 %j_mid2, 0, !dbg !71        ; [#uses=4 type=i1] [debug line = 25:5]
  %a_0_load = load float* %a_0_addr, align 4, !dbg !72 ; [#uses=1 type=float] [debug line = 27:6]
  %a_0_load_1 = load float* %a_0_addr_1, align 4, !dbg !72 ; [#uses=1 type=float] [debug line = 27:6]
  %a_0_load_2 = load float* %a_0_addr_2, align 4, !dbg !72 ; [#uses=1 type=float] [debug line = 27:6]
  %a_0_load_3 = load float* %a_0_addr_3, align 4, !dbg !72 ; [#uses=1 type=float] [debug line = 27:6]
  %a_row_load_3 = select i1 %tmp_5, float %a_0_load_3, float %a_row_load_10 ; [#uses=2 type=float]
  %a_row_load_2 = select i1 %tmp_5, float %a_0_load_2, float %a_row_load_6 ; [#uses=2 type=float]
  %a_row_load_1 = select i1 %tmp_5, float %a_0_load_1, float %a_row_load_5 ; [#uses=2 type=float]
  %a_row_load = select i1 %tmp_5, float %a_0_load, float %a_row_load_4 ; [#uses=2 type=float]
  %tmp_8 = zext i3 %j_mid2 to i64, !dbg !76       ; [#uses=1 type=i64] [debug line = 33:7]
  %tmp_8_cast6 = zext i3 %j_mid2 to i6            ; [#uses=1 type=i6]
  %tmp_8_cast5 = zext i3 %j_mid2 to i5            ; [#uses=1 type=i5]
  %tmp_8_cast = zext i3 %j_mid2 to i4             ; [#uses=1 type=i4]
  %a_1_addr = getelementptr [16 x float]* %a_1, i64 0, i64 %tmp_8 ; [#uses=1 type=float*]
  %tmp_17 = add i4 4, %tmp_8_cast                 ; [#uses=1 type=i4]
  %tmp_17_cast = zext i4 %tmp_17 to i64           ; [#uses=1 type=i64]
  %a_1_addr_1 = getelementptr [16 x float]* %a_1, i64 0, i64 %tmp_17_cast ; [#uses=1 type=float*]
  %tmp_18 = call i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61 1, i3 %j_mid2) ; [#uses=1 type=i64]
  %a_1_addr_2 = getelementptr [16 x float]* %a_1, i64 0, i64 %tmp_18 ; [#uses=1 type=float*]
  %tmp_19 = add i5 12, %tmp_8_cast5               ; [#uses=1 type=i5]
  %tmp_19_cast = zext i5 %tmp_19 to i64           ; [#uses=1 type=i64]
  %a_1_addr_3 = getelementptr [16 x float]* %a_1, i64 0, i64 %tmp_19_cast ; [#uses=1 type=float*]
  %tmp_20 = add i6 %tmp_10_cast, %tmp_8_cast6     ; [#uses=1 type=i6]
  %tmp_20_cast = zext i6 %tmp_20 to i64           ; [#uses=1 type=i64]
  %a_2_addr = getelementptr [16 x float]* %a_2, i64 0, i64 %tmp_20_cast ; [#uses=1 type=float*]
  %b_copy_0_3_19 = load float* %a_1_addr, align 4, !dbg !76 ; [#uses=4 type=float] [debug line = 33:7]
  %tmp = trunc i3 %j_mid2 to i2                   ; [#uses=7 type=i2]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_19}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_19}, i64 0, metadata !80), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][0]]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_19}, i64 0, metadata !81), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][1]]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_19}, i64 0, metadata !82), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][2]]
  %sel_tmp = icmp eq i2 %tmp, -2                  ; [#uses=8 type=i1]
  %b_copy_0_3 = select i1 %sel_tmp, float %b_copy_0_3_1_load, float %b_copy_0_3_19 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %sel_tmp2 = icmp eq i2 %tmp, 1                  ; [#uses=12 type=i1]
  %b_copy_0_3_4 = select i1 %sel_tmp2, float %b_copy_0_3_1_load, float %b_copy_0_3 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_4}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %sel_tmp4 = icmp eq i2 %tmp, 0                  ; [#uses=16 type=i1]
  %b_copy_0_3_2 = select i1 %sel_tmp4, float %b_copy_0_3_1_load, float %b_copy_0_3_4 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_2}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_5 = select i1 %sel_tmp, float %b_copy_0_3_19, float %b_copy_0_3_12_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_5}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_6 = select i1 %sel_tmp2, float %b_copy_0_3_12_load, float %b_copy_0_3_5 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_6}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_7 = select i1 %sel_tmp4, float %b_copy_0_3_12_load, float %b_copy_0_3_6 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_7}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_9 = select i1 %sel_tmp2, float %b_copy_0_3_19, float %b_copy_0_3_8_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_9}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_14 = select i1 %sel_tmp4, float %b_copy_0_3_8_load, float %b_copy_0_3_9 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_14}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_15 = select i1 %sel_tmp4, float %b_copy_0_3_19, float %b_copy_0_3_11_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_15}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_1_3_19 = load float* %a_1_addr_1, align 4, !dbg !76 ; [#uses=4 type=float] [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_19}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_19}, i64 0, metadata !83), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][0]]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_19}, i64 0, metadata !84), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][1]]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_19}, i64 0, metadata !85), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][2]]
  %b_copy_1_3 = select i1 %sel_tmp, float %b_copy_1_3_1_load, float %b_copy_1_3_19 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_4 = select i1 %sel_tmp2, float %b_copy_1_3_1_load, float %b_copy_1_3 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_4}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_2 = select i1 %sel_tmp4, float %b_copy_1_3_1_load, float %b_copy_1_3_4 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_2}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_5 = select i1 %sel_tmp, float %b_copy_1_3_19, float %b_copy_1_3_12_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_5}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_6 = select i1 %sel_tmp2, float %b_copy_1_3_12_load, float %b_copy_1_3_5 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_6}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_7 = select i1 %sel_tmp4, float %b_copy_1_3_12_load, float %b_copy_1_3_6 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_7}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_9 = select i1 %sel_tmp2, float %b_copy_1_3_19, float %b_copy_1_3_8_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_9}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_14 = select i1 %sel_tmp4, float %b_copy_1_3_8_load, float %b_copy_1_3_9 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_14}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_15 = select i1 %sel_tmp4, float %b_copy_1_3_19, float %b_copy_1_3_11_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_15}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_2_3_19 = load float* %a_1_addr_2, align 4, !dbg !76 ; [#uses=4 type=float] [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_19}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_19}, i64 0, metadata !86), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][0]]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_19}, i64 0, metadata !87), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][1]]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_19}, i64 0, metadata !88), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][2]]
  %b_copy_2_3 = select i1 %sel_tmp, float %b_copy_2_3_1_load, float %b_copy_2_3_19 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_4 = select i1 %sel_tmp2, float %b_copy_2_3_1_load, float %b_copy_2_3 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_4}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_2 = select i1 %sel_tmp4, float %b_copy_2_3_1_load, float %b_copy_2_3_4 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_2}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_5 = select i1 %sel_tmp, float %b_copy_2_3_19, float %b_copy_2_3_12_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_5}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_6 = select i1 %sel_tmp2, float %b_copy_2_3_12_load, float %b_copy_2_3_5 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_6}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_7 = select i1 %sel_tmp4, float %b_copy_2_3_12_load, float %b_copy_2_3_6 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_7}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_9 = select i1 %sel_tmp2, float %b_copy_2_3_19, float %b_copy_2_3_8_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_9}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_14 = select i1 %sel_tmp4, float %b_copy_2_3_8_load, float %b_copy_2_3_9 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_14}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_15 = select i1 %sel_tmp4, float %b_copy_2_3_19, float %b_copy_2_3_11_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_15}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_3_3_19 = load float* %a_1_addr_3, align 4, !dbg !76 ; [#uses=4 type=float] [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_19}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_19}, i64 0, metadata !89), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][0]]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_19}, i64 0, metadata !90), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][1]]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_19}, i64 0, metadata !91), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][2]]
  %b_copy_3_3 = select i1 %sel_tmp, float %b_copy_3_3_1_load, float %b_copy_3_3_19 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_4 = select i1 %sel_tmp2, float %b_copy_3_3_1_load, float %b_copy_3_3 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_4}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_2 = select i1 %sel_tmp4, float %b_copy_3_3_1_load, float %b_copy_3_3_4 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_2}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_5 = select i1 %sel_tmp, float %b_copy_3_3_19, float %b_copy_3_3_12_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_5}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_6 = select i1 %sel_tmp2, float %b_copy_3_3_12_load, float %b_copy_3_3_5 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_6}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_7 = select i1 %sel_tmp4, float %b_copy_3_3_12_load, float %b_copy_3_3_6 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_7}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_9 = select i1 %sel_tmp2, float %b_copy_3_3_19, float %b_copy_3_3_8_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_9}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_14 = select i1 %sel_tmp4, float %b_copy_3_3_8_load, float %b_copy_3_3_9 ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_14}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_15 = select i1 %sel_tmp4, float %b_copy_3_3_19, float %b_copy_3_3_11_load ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_15}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_3 = select i1 %tmp_mid2, float %b_copy_3_3_2, float %b_copy_3_3_1_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_3}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_16 = select i1 %tmp_mid2, float %b_copy_3_3_7, float %b_copy_3_3_12_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_16}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_17 = select i1 %tmp_mid2, float %b_copy_3_3_14, float %b_copy_3_3_8_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_17}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_3_3_18 = select i1 %tmp_mid2, float %b_copy_3_3_15, float %b_copy_3_3_11_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_3_3_18}, i64 0, metadata !29), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[3][3]]
  %b_copy_2_3_3 = select i1 %tmp_mid2, float %b_copy_2_3_2, float %b_copy_2_3_1_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_3}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_16 = select i1 %tmp_mid2, float %b_copy_2_3_7, float %b_copy_2_3_12_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_16}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_17 = select i1 %tmp_mid2, float %b_copy_2_3_14, float %b_copy_2_3_8_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_17}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_2_3_18 = select i1 %tmp_mid2, float %b_copy_2_3_15, float %b_copy_2_3_11_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_2_3_18}, i64 0, metadata !27), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[2][3]]
  %b_copy_1_3_3 = select i1 %tmp_mid2, float %b_copy_1_3_2, float %b_copy_1_3_1_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_3}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_16 = select i1 %tmp_mid2, float %b_copy_1_3_7, float %b_copy_1_3_12_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_16}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_17 = select i1 %tmp_mid2, float %b_copy_1_3_14, float %b_copy_1_3_8_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_17}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_1_3_18 = select i1 %tmp_mid2, float %b_copy_1_3_15, float %b_copy_1_3_11_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_1_3_18}, i64 0, metadata !25), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[1][3]]
  %b_copy_0_3_3 = select i1 %tmp_mid2, float %b_copy_0_3_2, float %b_copy_0_3_1_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_3}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_16 = select i1 %tmp_mid2, float %b_copy_0_3_7, float %b_copy_0_3_12_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_16}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_17 = select i1 %tmp_mid2, float %b_copy_0_3_14, float %b_copy_0_3_8_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_17}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %b_copy_0_3_18 = select i1 %tmp_mid2, float %b_copy_0_3_15, float %b_copy_0_3_11_load ; [#uses=2 type=float]
  call void @llvm.dbg.value(metadata !{float %b_copy_0_3_18}, i64 0, metadata !7), !dbg !76 ; [debug line = 33:7] [debug variable = b_copy[0][3]]
  %tmp_2 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %b_copy_0_3_18, float %b_copy_0_3_17, float %b_copy_0_3_16, float %b_copy_0_3_3, i2 %tmp) ; [#uses=1 type=float]
  %tmp_s = fmul float %a_row_load, %tmp_2, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  %tmp_9 = fadd float %tmp_s, 0.000000e+00, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  %tmp_3 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %b_copy_1_3_18, float %b_copy_1_3_17, float %b_copy_1_3_16, float %b_copy_1_3_3, i2 %tmp) ; [#uses=1 type=float]
  %tmp_11_1 = fmul float %a_row_load_1, %tmp_3, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  %tmp_12_1 = fadd float %tmp_9, %tmp_11_1, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  %tmp_4 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %b_copy_2_3_18, float %b_copy_2_3_17, float %b_copy_2_3_16, float %b_copy_2_3_3, i2 %tmp) ; [#uses=1 type=float]
  %tmp_11_2 = fmul float %a_row_load_2, %tmp_4, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  %tmp_12_2 = fadd float %tmp_12_1, %tmp_11_2, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  %tmp_6 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %b_copy_3_3_18, float %b_copy_3_3_17, float %b_copy_3_3_16, float %b_copy_3_3_3, i2 %tmp) ; [#uses=1 type=float]
  %tmp_11_3 = fmul float %a_row_load_3, %tmp_6, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  %tmp_12_3 = fadd float %tmp_12_2, %tmp_11_3, !dbg !92 ; [#uses=1 type=float] [debug line = 38:4]
  store float %tmp_12_3, float* %a_2_addr, align 4, !dbg !95 ; [debug line = 41:5]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str5, i32 %tmp_1) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 42:3]
  %j_1 = add i3 1, %j_mid2, !dbg !97              ; [#uses=1 type=i3] [debug line = 20:29]
  call void @llvm.dbg.value(metadata !{i3 %j_1}, i64 0, metadata !98), !dbg !97 ; [debug line = 20:29] [debug variable = j]
  store float %b_copy_3_3_3, float* %b_copy_3_3_1
  store float %b_copy_3_3_16, float* %b_copy_3_3_12
  store float %b_copy_3_3_17, float* %b_copy_3_3_8
  store float %b_copy_3_3_18, float* %b_copy_3_3_11
  store float %b_copy_2_3_3, float* %b_copy_2_3_1
  store float %b_copy_2_3_16, float* %b_copy_2_3_12
  store float %b_copy_2_3_17, float* %b_copy_2_3_8
  store float %b_copy_2_3_18, float* %b_copy_2_3_11
  store float %b_copy_1_3_3, float* %b_copy_1_3_1
  store float %b_copy_1_3_16, float* %b_copy_1_3_12
  store float %b_copy_1_3_17, float* %b_copy_1_3_8
  store float %b_copy_1_3_18, float* %b_copy_1_3_11
  store float %b_copy_0_3_3, float* %b_copy_0_3_1
  store float %b_copy_0_3_16, float* %b_copy_0_3_12
  store float %b_copy_0_3_17, float* %b_copy_0_3_8
  store float %b_copy_0_3_18, float* %b_copy_0_3_11
  store float %a_row_load_3, float* %a_row_load_7
  store float %a_row_load_2, float* %a_row_load_8
  store float %a_row_load_1, float* %a_row_load_9
  store float %a_row_load, float* %a_row_load_s
  br label %.preheader7, !dbg !97                 ; [debug line = 20:29]

; <label>:1                                       ; preds = %.preheader7
  ret void, !dbg !99                              ; [debug line = 44:1]
}

; [#uses=74]
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

; [#uses=1]
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

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=4]
define weak float @_ssdm_op_Mux.ap_auto.4float.i2(float, float, float, float, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi float [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ] ; [#uses=1 type=float]
  ret float %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

; [#uses=1]
define weak i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61, i3) nounwind readnone {
entry:
  %empty = zext i61 %0 to i64                     ; [#uses=1 type=i64]
  %empty_4 = zext i3 %1 to i64                    ; [#uses=1 type=i64]
  %empty_5 = shl i64 %empty, 3                    ; [#uses=1 type=i64]
  %empty_6 = or i64 %empty_5, %empty_4            ; [#uses=1 type=i64]
  ret i64 %empty_6
}

; [#uses=3]
define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59, i5) nounwind readnone {
entry:
  %empty = zext i59 %0 to i64                     ; [#uses=1 type=i64]
  %empty_7 = zext i5 %1 to i64                    ; [#uses=1 type=i64]
  %empty_8 = shl i64 %empty, 5                    ; [#uses=1 type=i64]
  %empty_9 = or i64 %empty_8, %empty_7            ; [#uses=1 type=i64]
  ret i64 %empty_9
}

; [#uses=1]
define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5                       ; [#uses=1 type=i5]
  %empty_10 = zext i2 %1 to i5                    ; [#uses=1 type=i5]
  %empty_11 = shl i5 %empty, 2                    ; [#uses=1 type=i5]
  %empty_12 = or i5 %empty_11, %empty_10          ; [#uses=1 type=i5]
  ret i5 %empty_12
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type [4]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{i32 790529, metadata !8, metadata !"b_copy[0][3]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!8 = metadata !{i32 786688, metadata !9, metadata !"b_copy[0]", null, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!9 = metadata !{i32 786443, metadata !10, i32 5, i32 1, metadata !11, i32 0} ; [ DW_TAG_lexical_block ]
!10 = metadata !{i32 786478, i32 0, metadata !11, metadata !"matmul_hw", metadata !"matmul_hw", metadata !"_Z9matmul_hwPA4_f", metadata !11, i32 4, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 5} ; [ DW_TAG_subprogram ]
!11 = metadata !{i32 786473, metadata !"matmul.cpp", metadata !"/home/patmos/github/bachelor_project_HLS/hls/misc/matmul_float", null} ; [ DW_TAG_file_type ]
!12 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!13 = metadata !{null, metadata !14}
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ]
!15 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !16, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ]
!16 = metadata !{i32 786454, null, metadata !"mat_type", metadata !11, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !16, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!23 = metadata !{metadata !19, metadata !19}
!24 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32, i64 32, i32 0, i32 0, metadata !16, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ]
!25 = metadata !{i32 790529, metadata !26, metadata !"b_copy[1][3]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!26 = metadata !{i32 786688, metadata !9, metadata !"b_copy[1]", null, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!27 = metadata !{i32 790529, metadata !28, metadata !"b_copy[2][3]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!28 = metadata !{i32 786688, metadata !9, metadata !"b_copy[2]", null, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!29 = metadata !{i32 790529, metadata !30, metadata !"b_copy[3][3]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!30 = metadata !{i32 786688, metadata !9, metadata !"b_copy[3]", null, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"a", metadata !35, metadata !"float", i32 0, i32 31}
!35 = metadata !{metadata !36, metadata !37}
!36 = metadata !{i32 8, i32 11, i32 1}
!37 = metadata !{i32 0, i32 3, i32 1}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"a", metadata !42, metadata !"float", i32 0, i32 31}
!42 = metadata !{metadata !43, metadata !37}
!43 = metadata !{i32 4, i32 7, i32 1}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"a", metadata !48, metadata !"float", i32 0, i32 31}
!48 = metadata !{metadata !37, metadata !37}
!49 = metadata !{i32 790531, metadata !50, metadata !"a[0]", null, i32 4, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!50 = metadata !{i32 786689, metadata !10, metadata !"a", null, i32 4, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536, i64 32, i32 0, i32 0, metadata !16, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!52 = metadata !{metadata !53, metadata !19}
!53 = metadata !{i32 786465, i64 0, i64 11}       ; [ DW_TAG_subrange_type ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 512, i64 32, i32 0, i32 0, metadata !16, metadata !52, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{i32 4, i32 25, metadata !10, null}
!56 = metadata !{i32 790531, metadata !50, metadata !"a[1]", null, i32 4, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!57 = metadata !{i32 790531, metadata !50, metadata !"a[2]", null, i32 4, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!58 = metadata !{i32 6, i32 1, metadata !9, null}
!59 = metadata !{i32 19, i32 15, metadata !60, null}
!60 = metadata !{i32 786443, metadata !9, i32 19, i32 2, metadata !11, i32 1} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786688, metadata !60, metadata !"i", metadata !11, i32 19, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!63 = metadata !{i32 19, i32 24, metadata !60, null}
!64 = metadata !{i32 20, i32 20, metadata !65, null}
!65 = metadata !{i32 786443, metadata !66, i32 20, i32 7, metadata !11, i32 3} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 786443, metadata !60, i32 19, i32 29, metadata !11, i32 2} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 31, i32 4, metadata !68, null}
!68 = metadata !{i32 786443, metadata !65, i32 20, i32 34, metadata !11, i32 4} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 20, i32 35, metadata !68, null}
!70 = metadata !{i32 21, i32 1, metadata !68, null}
!71 = metadata !{i32 25, i32 5, metadata !68, null}
!72 = metadata !{i32 27, i32 6, metadata !73, null}
!73 = metadata !{i32 786443, metadata !74, i32 27, i32 6, metadata !11, i32 7} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 786443, metadata !75, i32 26, i32 15, metadata !11, i32 6} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !68, i32 25, i32 17, metadata !11, i32 5} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 33, i32 7, metadata !77, null}
!77 = metadata !{i32 786443, metadata !78, i32 32, i32 43, metadata !11, i32 10} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !79, i32 32, i32 16, metadata !11, i32 9} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786443, metadata !68, i32 31, i32 16, metadata !11, i32 8} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 790529, metadata !8, metadata !"b_copy[0][0]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!81 = metadata !{i32 790529, metadata !8, metadata !"b_copy[0][1]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!82 = metadata !{i32 790529, metadata !8, metadata !"b_copy[0][2]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!83 = metadata !{i32 790529, metadata !26, metadata !"b_copy[1][0]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!84 = metadata !{i32 790529, metadata !26, metadata !"b_copy[1][1]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!85 = metadata !{i32 790529, metadata !26, metadata !"b_copy[1][2]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!86 = metadata !{i32 790529, metadata !28, metadata !"b_copy[2][0]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!87 = metadata !{i32 790529, metadata !28, metadata !"b_copy[2][1]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!88 = metadata !{i32 790529, metadata !28, metadata !"b_copy[2][2]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!89 = metadata !{i32 790529, metadata !30, metadata !"b_copy[3][0]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!90 = metadata !{i32 790529, metadata !30, metadata !"b_copy[3][1]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!91 = metadata !{i32 790529, metadata !30, metadata !"b_copy[3][2]", null, i32 14, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!92 = metadata !{i32 38, i32 4, metadata !93, null}
!93 = metadata !{i32 786443, metadata !94, i32 37, i32 41, metadata !11, i32 12} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !68, i32 37, i32 14, metadata !11, i32 11} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 41, i32 5, metadata !68, null}
!96 = metadata !{i32 42, i32 3, metadata !68, null}
!97 = metadata !{i32 20, i32 29, metadata !65, null}
!98 = metadata !{i32 786688, metadata !65, metadata !"j", metadata !11, i32 20, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 44, i32 1, metadata !9, null}