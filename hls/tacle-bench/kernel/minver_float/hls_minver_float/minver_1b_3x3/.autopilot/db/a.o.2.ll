; ModuleID = '/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float/hls_minver_float/minver_1b_3x3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@minver_hwa.str = internal unnamed_addr constant [11 x i8] c"minver_hwa\00" ; [#uses=1 type=[11 x i8]*]
@minver_hw = common global [3 x [3 x float]] zeroinitializer, align 16 ; [#uses=0 type=[3 x [3 x float]]*]
@.str9 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str2 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=25 type=[1 x i8]*]

; [#uses=0]
define i32 @minver_hwa([3 x [3 x float]]* %a) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x float]]* %a) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @minver_hwa.str) nounwind
  %work = alloca [500 x i3], align 1              ; [#uses=5 type=[500 x i3]*]
  call void @llvm.dbg.value(metadata !{[3 x [3 x float]]* %a}, i64 0, metadata !59), !dbg !68 ; [debug line = 35:25] [debug variable = a]
  call void (...)* @_ssdm_op_SpecMemCore([3 x [3 x float]]* %a, [1 x i8]* @.str, [12 x i8]* @.str1, [1 x i8]* @.str, i32 -1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([3 x [3 x float]]* %a, [5 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @.str3, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !69 ; [debug line = 39:1]
  call void @llvm.dbg.declare(metadata !{[500 x i3]* %work}, metadata !71), !dbg !75 ; [debug line = 41:6] [debug variable = work]
  br label %1, !dbg !76                           ; [debug line = 50:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i2 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=4 type=i2]
  %exitcond7 = icmp eq i2 %i, -1, !dbg !76        ; [#uses=1 type=i1] [debug line = 50:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond7, label %.preheader13.preheader, label %3, !dbg !76 ; [debug line = 50:9]

.preheader13.preheader:                           ; preds = %1
  br label %.preheader13, !dbg !78                ; [debug line = 59:11]

; <label>:3                                       ; preds = %1
  %tmp.6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str4) nounwind, !dbg !82 ; [#uses=1 type=i32] [debug line = 50:30]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !84 ; [debug line = 51:1]
  %tmp = zext i2 %i to i64, !dbg !85              ; [#uses=1 type=i64] [debug line = 52:2]
  %work.addr = getelementptr [500 x i3]* %work, i64 0, i64 %tmp, !dbg !85 ; [#uses=1 type=i3*] [debug line = 52:2]
  %i.cast7.cast = zext i2 %i to i3, !dbg !85      ; [#uses=1 type=i3] [debug line = 52:2]
  store i3 %i.cast7.cast, i3* %work.addr, align 1, !dbg !85 ; [debug line = 52:2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str4, i32 %tmp.6) nounwind, !dbg !86 ; [#uses=0 type=i32] [debug line = 53:3]
  %i.1 = add i2 %i, 1, !dbg !87                   ; [#uses=1 type=i2] [debug line = 50:23]
  call void @llvm.dbg.value(metadata !{i2 %i.1}, i64 0, metadata !88), !dbg !87 ; [debug line = 50:23] [debug variable = i]
  br label %1, !dbg !87                           ; [debug line = 50:23]

.preheader13:                                     ; preds = %25, %.preheader13.preheader
  %r = phi i32 [ %r.1.lcssa, %25 ], [ 0, %.preheader13.preheader ] ; [#uses=1 type=i32]
  %i.5 = phi i2 [ %k, %25 ], [ 0, %.preheader13.preheader ] ; [#uses=8 type=i2]
  %i.5.cast6 = zext i2 %i.5 to i32, !dbg !78      ; [#uses=2 type=i32] [debug line = 59:11]
  call void @llvm.dbg.value(metadata !{i2 %i.5}, i64 0, metadata !88), !dbg !78 ; [debug line = 59:11] [debug variable = i]
  %tmp.2 = icmp eq i2 %i.5, -1, !dbg !89          ; [#uses=1 type=i1] [debug line = 56:9]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 2) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.2, label %.preheader8.preheader, label %.preheader12.preheader, !dbg !89 ; [debug line = 56:9]

.preheader8.preheader:                            ; preds = %.preheader13
  br label %.preheader8, !dbg !90                 ; [debug line = 109:9]

.preheader12.preheader:                           ; preds = %.preheader13
  %tmp.3 = zext i2 %i.5 to i64, !dbg !92          ; [#uses=11 type=i64] [debug line = 61:6]
  br label %.preheader12, !dbg !78                ; [debug line = 59:11]

.preheader12:                                     ; preds = %_ifconv, %.preheader12.preheader
  %wmax = phi float [ %wmax.1, %_ifconv ], [ 0.000000e+00, %.preheader12.preheader ] ; [#uses=3 type=float]
  %r.1 = phi i32 [ %r.2, %_ifconv ], [ %r, %.preheader12.preheader ] ; [#uses=2 type=i32]
  %r.3 = phi i32 [ %i.6, %_ifconv ], [ %i.5.cast6, %.preheader12.preheader ] ; [#uses=4 type=i32]
  %exitcond6 = icmp eq i32 %r.3, 3, !dbg !78      ; [#uses=1 type=i1] [debug line = 59:11]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 3, i64 0) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond6, label %_ifconv1, label %_ifconv, !dbg !78 ; [debug line = 59:11]

_ifconv:                                          ; preds = %.preheader12
  %tmp.21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str5) nounwind, !dbg !94 ; [#uses=1 type=i32] [debug line = 59:32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !95 ; [debug line = 60:1]
  %tmp.7 = sext i32 %r.3 to i64, !dbg !92         ; [#uses=1 type=i64] [debug line = 61:6]
  %a.addr.1 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.7, i64 %tmp.3, !dbg !92 ; [#uses=1 type=float*] [debug line = 61:6]
  %n.assign.1 = load float* %a.addr.1, align 4, !dbg !92 ; [#uses=4 type=float] [debug line = 61:6]
  call void @llvm.dbg.value(metadata !{float %n.assign.1}, i64 0, metadata !96), !dbg !102 ; [debug line = 8:31@61:6] [debug variable = n]
  %n.assign.1_to_int = bitcast float %n.assign.1 to i32 ; [#uses=2 type=i32]
  %tmp.36 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n.assign.1_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.37 = trunc i32 %n.assign.1_to_int to i23   ; [#uses=1 type=i23]
  %notlhs = icmp ne i8 %tmp.36, -1                ; [#uses=1 type=i1]
  %notrhs = icmp eq i23 %tmp.37, 0                ; [#uses=1 type=i1]
  %tmp.38 = or i1 %notrhs, %notlhs                ; [#uses=1 type=i1]
  %tmp.39 = fcmp oge float %n.assign.1, 0.000000e+00, !dbg !103 ; [#uses=1 type=i1] [debug line = 11:3@61:6]
  %tmp.40 = and i1 %tmp.38, %tmp.39, !dbg !103    ; [#uses=1 type=i1] [debug line = 11:3@61:6]
  %f_to_int.i = bitcast float %n.assign.1 to i32, !dbg !105 ; [#uses=1 type=i32] [debug line = 14:5@61:6]
  %f_neg.i = xor i32 %f_to_int.i, -2147483648, !dbg !105 ; [#uses=1 type=i32] [debug line = 14:5@61:6]
  %f.1 = bitcast i32 %f_neg.i to float, !dbg !105 ; [#uses=1 type=float] [debug line = 14:5@61:6]
  call void @llvm.dbg.value(metadata !{float %f.1}, i64 0, metadata !106), !dbg !105 ; [debug line = 14:5@61:6] [debug variable = f]
  %w.3 = select i1 %tmp.40, float %n.assign.1, float %f.1, !dbg !107 ; [#uses=3 type=float] [debug line = 63:9]
  call void @llvm.dbg.value(metadata !{float %w.3}, i64 0, metadata !109), !dbg !92 ; [debug line = 61:6] [debug variable = w]
  %w.3_to_int = bitcast float %w.3 to i32         ; [#uses=2 type=i32]
  %tmp.41 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w.3_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.42 = trunc i32 %w.3_to_int to i23          ; [#uses=1 type=i23]
  %wmax_to_int = bitcast float %wmax to i32       ; [#uses=2 type=i32]
  %tmp.43 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wmax_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.44 = trunc i32 %wmax_to_int to i23         ; [#uses=1 type=i23]
  %notlhs3 = icmp ne i8 %tmp.41, -1               ; [#uses=1 type=i1]
  %notrhs3 = icmp eq i23 %tmp.42, 0               ; [#uses=1 type=i1]
  %tmp.45 = or i1 %notrhs3, %notlhs3              ; [#uses=1 type=i1]
  %notlhs4 = icmp ne i8 %tmp.43, -1               ; [#uses=1 type=i1]
  %notrhs4 = icmp eq i23 %tmp.44, 0               ; [#uses=1 type=i1]
  %tmp.46 = or i1 %notrhs4, %notlhs4              ; [#uses=1 type=i1]
  %tmp.47 = and i1 %tmp.45, %tmp.46               ; [#uses=1 type=i1]
  %tmp.48 = fcmp ogt float %w.3, %wmax, !dbg !110 ; [#uses=1 type=i1] [debug line = 62:7]
  %tmp.49 = and i1 %tmp.47, %tmp.48, !dbg !110    ; [#uses=2 type=i1] [debug line = 62:7]
  call void @llvm.dbg.value(metadata !{float %w.3}, i64 0, metadata !111), !dbg !107 ; [debug line = 63:9] [debug variable = wmax]
  call void @llvm.dbg.value(metadata !{i32 %r.3}, i64 0, metadata !112), !dbg !113 ; [debug line = 64:9] [debug variable = r]
  %wmax.1 = select i1 %tmp.49, float %w.3, float %wmax, !dbg !110 ; [#uses=1 type=float] [debug line = 62:7]
  call void @llvm.dbg.value(metadata !{float %wmax.1}, i64 0, metadata !111), !dbg !110 ; [debug line = 62:7] [debug variable = wmax]
  %r.2 = select i1 %tmp.49, i32 %r.3, i32 %r.1, !dbg !110 ; [#uses=1 type=i32] [debug line = 62:7]
  call void @llvm.dbg.value(metadata !{i32 %r.2}, i64 0, metadata !112), !dbg !110 ; [debug line = 62:7] [debug variable = r]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str5, i32 %tmp.21) nounwind, !dbg !114 ; [#uses=0 type=i32] [debug line = 66:5]
  %i.6 = add nsw i32 %r.3, 1, !dbg !115           ; [#uses=1 type=i32] [debug line = 59:25]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !88), !dbg !115 ; [debug line = 59:25] [debug variable = i]
  br label %.preheader12, !dbg !115               ; [debug line = 59:25]

_ifconv1:                                         ; preds = %.preheader12
  %r.1.lcssa = phi i32 [ %r.1, %.preheader12 ]    ; [#uses=3 type=i32]
  %tmp.4 = sext i32 %r.1.lcssa to i64, !dbg !116  ; [#uses=3 type=i64] [debug line = 68:5]
  %a.addr = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.4, i64 %tmp.3, !dbg !116 ; [#uses=1 type=float*] [debug line = 68:5]
  %pivot = load float* %a.addr, align 4, !dbg !117 ; [#uses=7 type=float] [debug line = 105:5]
  call void @llvm.dbg.value(metadata !{float %pivot}, i64 0, metadata !118), !dbg !116 ; [debug line = 68:5] [debug variable = pivot]
  call void @llvm.dbg.value(metadata !{float %pivot}, i64 0, metadata !119), !dbg !121 ; [debug line = 8:31@69:11] [debug variable = n]
  %pivot_to_int = bitcast float %pivot to i32     ; [#uses=2 type=i32]
  %tmp.9 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pivot_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.17 = trunc i32 %pivot_to_int to i23        ; [#uses=1 type=i23]
  %notlhs1 = icmp ne i8 %tmp.9, -1                ; [#uses=1 type=i1]
  %notrhs1 = icmp eq i23 %tmp.17, 0               ; [#uses=1 type=i1]
  %tmp.20 = or i1 %notrhs1, %notlhs1              ; [#uses=1 type=i1]
  %tmp.29 = fcmp oge float %pivot, 0.000000e+00, !dbg !122 ; [#uses=1 type=i1] [debug line = 11:3@69:11]
  %tmp.30 = and i1 %tmp.20, %tmp.29, !dbg !122    ; [#uses=1 type=i1] [debug line = 11:3@69:11]
  %f_to_int.i1 = bitcast float %pivot to i32, !dbg !123 ; [#uses=1 type=i32] [debug line = 14:5@69:11]
  %f_neg.i1 = xor i32 %f_to_int.i1, -2147483648, !dbg !123 ; [#uses=1 type=i32] [debug line = 14:5@69:11]
  %f = bitcast i32 %f_neg.i1 to float, !dbg !123  ; [#uses=1 type=float] [debug line = 14:5@69:11]
  call void @llvm.dbg.value(metadata !{float %f}, i64 0, metadata !124), !dbg !123 ; [debug line = 14:5@69:11] [debug variable = f]
  %api = select i1 %tmp.30, float %pivot, float %f, !dbg !120 ; [#uses=1 type=float] [debug line = 69:11]
  call void @llvm.dbg.value(metadata !{float %api}, i64 0, metadata !125), !dbg !120 ; [debug line = 69:11] [debug variable = api]
  %tmp.5 = fpext float %api to double, !dbg !126  ; [#uses=2 type=double] [debug line = 70:5]
  %tmp.5_to_int = bitcast double %tmp.5 to i64    ; [#uses=2 type=i64]
  %tmp.31 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp.5_to_int, i32 52, i32 62) ; [#uses=1 type=i11]
  %tmp.32 = trunc i64 %tmp.5_to_int to i52        ; [#uses=1 type=i52]
  %notlhs2 = icmp ne i11 %tmp.31, -1              ; [#uses=1 type=i1]
  %notrhs2 = icmp eq i52 %tmp.32, 0               ; [#uses=1 type=i1]
  %tmp.33 = or i1 %notrhs2, %notlhs2              ; [#uses=1 type=i1]
  %tmp.34 = fcmp ole double %tmp.5, 1.000000e-06, !dbg !126 ; [#uses=1 type=i1] [debug line = 70:5]
  %tmp.35 = and i1 %tmp.33, %tmp.34, !dbg !126    ; [#uses=1 type=i1] [debug line = 70:5]
  br i1 %tmp.35, label %.loopexit.loopexit34, label %8, !dbg !126 ; [debug line = 70:5]

; <label>:8                                       ; preds = %_ifconv1
  %tmp.1 = icmp eq i32 %r.1.lcssa, %i.5.cast6, !dbg !127 ; [#uses=1 type=i1] [debug line = 75:5]
  br i1 %tmp.1, label %.loopexit11, label %9, !dbg !127 ; [debug line = 75:5]

; <label>:9                                       ; preds = %8
  %work.addr.3 = getelementptr [500 x i3]* %work, i64 0, i64 %tmp.3, !dbg !128 ; [#uses=2 type=i3*] [debug line = 77:7]
  %work.load.2 = load i3* %work.addr.3, align 1   ; [#uses=1 type=i3]
  %work.addr.4 = getelementptr [500 x i3]* %work, i64 0, i64 %tmp.4, !dbg !130 ; [#uses=2 type=i3*] [debug line = 78:7]
  %work.load.3 = load i3* %work.addr.4, align 1   ; [#uses=1 type=i3]
  store i3 %work.load.3, i3* %work.addr.3, align 1, !dbg !130 ; [debug line = 78:7]
  store i3 %work.load.2, i3* %work.addr.4, align 1, !dbg !131 ; [debug line = 79:7]
  br label %10, !dbg !132                         ; [debug line = 80:13]

; <label>:10                                      ; preds = %12, %9
  %j = phi i2 [ 0, %9 ], [ %j.1, %12 ]            ; [#uses=3 type=i2]
  %exitcond5 = icmp eq i2 %j, -1, !dbg !132       ; [#uses=1 type=i1] [debug line = 80:13]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond5, label %.loopexit11.loopexit, label %12, !dbg !132 ; [debug line = 80:13]

; <label>:12                                      ; preds = %10
  %tmp.23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str6) nounwind, !dbg !134 ; [#uses=1 type=i32] [debug line = 80:34]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !136 ; [debug line = 81:1]
  %tmp.11 = zext i2 %j to i64, !dbg !137          ; [#uses=2 type=i64] [debug line = 82:2]
  %a.addr.4 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.3, i64 %tmp.11, !dbg !137 ; [#uses=2 type=float*] [debug line = 82:2]
  %w = load float* %a.addr.4, align 4, !dbg !137  ; [#uses=1 type=float] [debug line = 82:2]
  call void @llvm.dbg.value(metadata !{float %w}, i64 0, metadata !109), !dbg !137 ; [debug line = 82:2] [debug variable = w]
  %a.addr.5 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.4, i64 %tmp.11, !dbg !138 ; [#uses=2 type=float*] [debug line = 83:9]
  %a.load.2 = load float* %a.addr.5, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 83:9]
  store float %a.load.2, float* %a.addr.4, align 4, !dbg !138 ; [debug line = 83:9]
  store float %w, float* %a.addr.5, align 4, !dbg !139 ; [debug line = 84:9]
  %13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str6, i32 %tmp.23) nounwind, !dbg !140 ; [#uses=0 type=i32] [debug line = 85:7]
  %j.1 = add i2 %j, 1, !dbg !141                  ; [#uses=1 type=i2] [debug line = 80:27]
  call void @llvm.dbg.value(metadata !{i2 %j.1}, i64 0, metadata !142), !dbg !141 ; [debug line = 80:27] [debug variable = j]
  br label %10, !dbg !141                         ; [debug line = 80:27]

.loopexit11.loopexit:                             ; preds = %10
  br label %.loopexit11

.loopexit11:                                      ; preds = %.loopexit11.loopexit, %8
  br label %14, !dbg !143                         ; [debug line = 88:11]

; <label>:14                                      ; preds = %16, %.loopexit11
  %i.2 = phi i2 [ 0, %.loopexit11 ], [ %i.8, %16 ] ; [#uses=3 type=i2]
  %exitcond4 = icmp eq i2 %i.2, -1, !dbg !143     ; [#uses=1 type=i1] [debug line = 88:11]
  %15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond4, label %.preheader10.preheader, label %16, !dbg !143 ; [debug line = 88:11]

.preheader10.preheader:                           ; preds = %14
  %tmp.26 = icmp eq i2 %i.5, 0, !dbg !145         ; [#uses=1 type=i1] [debug line = 99:13]
  %tmp.20.1 = icmp eq i2 %i.5, 1, !dbg !145       ; [#uses=1 type=i1] [debug line = 99:13]
  %tmp.20.2 = icmp eq i2 %i.5, -2, !dbg !145      ; [#uses=1 type=i1] [debug line = 99:13]
  %a.addr.13 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.3, i64 2, !dbg !152 ; [#uses=1 type=float*] [debug line = 99:27]
  %a.addr.11 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.3, i64 1, !dbg !152 ; [#uses=1 type=float*] [debug line = 99:27]
  %a.addr.9 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.3, i64 0, !dbg !152 ; [#uses=1 type=float*] [debug line = 99:27]
  br label %.preheader10, !dbg !153               ; [debug line = 93:11]

; <label>:16                                      ; preds = %14
  %tmp.24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str7) nounwind, !dbg !154 ; [#uses=1 type=i32] [debug line = 88:32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !156 ; [debug line = 89:1]
  %tmp.12 = zext i2 %i.2 to i64, !dbg !157        ; [#uses=1 type=i64] [debug line = 90:2]
  %a.addr.6 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.3, i64 %tmp.12, !dbg !157 ; [#uses=2 type=float*] [debug line = 90:2]
  %a.load.5 = load float* %a.addr.6, align 4, !dbg !157 ; [#uses=1 type=float] [debug line = 90:2]
  %tmp.13 = fdiv float %a.load.5, %pivot, !dbg !157 ; [#uses=1 type=float] [debug line = 90:2]
  store float %tmp.13, float* %a.addr.6, align 4, !dbg !157 ; [debug line = 90:2]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str7, i32 %tmp.24) nounwind, !dbg !158 ; [#uses=0 type=i32] [debug line = 91:5]
  %i.8 = add i2 %i.2, 1, !dbg !159                ; [#uses=1 type=i2] [debug line = 88:25]
  call void @llvm.dbg.value(metadata !{i2 %i.8}, i64 0, metadata !88), !dbg !159 ; [debug line = 88:25] [debug variable = i]
  br label %14, !dbg !159                         ; [debug line = 88:25]

.preheader10:                                     ; preds = %._crit_edge, %.preheader10.preheader
  %i.3 = phi i2 [ %i.9, %._crit_edge ], [ 0, %.preheader10.preheader ] ; [#uses=4 type=i2]
  %exitcond3 = icmp eq i2 %i.3, -1, !dbg !153     ; [#uses=1 type=i1] [debug line = 93:11]
  %18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond3, label %25, label %19, !dbg !153 ; [debug line = 93:11]

; <label>:19                                      ; preds = %.preheader10
  %tmp.25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str8) nounwind, !dbg !160 ; [#uses=1 type=i32] [debug line = 93:32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !161 ; [debug line = 94:1]
  %tmp.15 = icmp eq i2 %i.3, %i.5, !dbg !162      ; [#uses=1 type=i1] [debug line = 95:2]
  br i1 %tmp.15, label %._crit_edge, label %20, !dbg !162 ; [debug line = 95:2]

; <label>:20                                      ; preds = %19
  %tmp.16 = zext i2 %i.3 to i64, !dbg !163        ; [#uses=4 type=i64] [debug line = 96:9]
  %a.addr.8 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.16, i64 %tmp.3, !dbg !163 ; [#uses=2 type=float*] [debug line = 96:9]
  %w.2 = load float* %a.addr.8, align 4, !dbg !163 ; [#uses=6 type=float] [debug line = 96:9]
  call void @llvm.dbg.value(metadata !{float %w.2}, i64 0, metadata !109), !dbg !163 ; [debug line = 96:9] [debug variable = w]
  %w.2_to_int = bitcast float %w.2 to i32         ; [#uses=2 type=i32]
  %tmp.50 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w.2_to_int, i32 23, i32 30) ; [#uses=1 type=i8]
  %tmp.51 = trunc i32 %w.2_to_int to i23          ; [#uses=1 type=i23]
  %notlhs5 = icmp ne i8 %tmp.50, -1               ; [#uses=1 type=i1]
  %notrhs5 = icmp eq i23 %tmp.51, 0               ; [#uses=1 type=i1]
  %tmp.52 = or i1 %notrhs5, %notlhs5              ; [#uses=1 type=i1]
  %tmp.53 = fcmp oeq float %w.2, 0.000000e+00, !dbg !164 ; [#uses=1 type=i1] [debug line = 97:9]
  %tmp.54 = and i1 %tmp.52, %tmp.53, !dbg !164    ; [#uses=1 type=i1] [debug line = 97:9]
  br i1 %tmp.54, label %._crit_edge18, label %.preheader9.0, !dbg !164 ; [debug line = 97:9]

.preheader9.0:                                    ; preds = %20
  br i1 %tmp.26, label %.preheader9.1, label %21, !dbg !145 ; [debug line = 99:13]

; <label>:21                                      ; preds = %.preheader9.0
  %a.load.9 = load float* %a.addr.9, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %tmp.27 = fmul float %w.2, %a.load.9, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %a.addr.10 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.16, i64 0, !dbg !152 ; [#uses=2 type=float*] [debug line = 99:27]
  %a.load.10 = load float* %a.addr.10, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %tmp.28 = fsub float %a.load.10, %tmp.27, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  store float %tmp.28, float* %a.addr.10, align 4, !dbg !152 ; [debug line = 99:27]
  br label %.preheader9.1, !dbg !152              ; [debug line = 99:27]

.preheader9.1:                                    ; preds = %21, %.preheader9.0
  br i1 %tmp.20.1, label %.preheader9.2, label %22, !dbg !145 ; [debug line = 99:13]

; <label>:22                                      ; preds = %.preheader9.1
  %a.load.11 = load float* %a.addr.11, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %tmp.22.1 = fmul float %w.2, %a.load.11, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %a.addr.12 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.16, i64 1, !dbg !152 ; [#uses=2 type=float*] [debug line = 99:27]
  %a.load.12 = load float* %a.addr.12, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %tmp.23.1 = fsub float %a.load.12, %tmp.22.1, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  store float %tmp.23.1, float* %a.addr.12, align 4, !dbg !152 ; [debug line = 99:27]
  br label %.preheader9.2, !dbg !152              ; [debug line = 99:27]

.preheader9.2:                                    ; preds = %22, %.preheader9.1
  br i1 %tmp.20.2, label %.preheader9.3, label %23, !dbg !145 ; [debug line = 99:13]

; <label>:23                                      ; preds = %.preheader9.2
  %a.load.13 = load float* %a.addr.13, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %tmp.22.2 = fmul float %w.2, %a.load.13, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %a.addr.14 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.16, i64 2, !dbg !152 ; [#uses=2 type=float*] [debug line = 99:27]
  %a.load.14 = load float* %a.addr.14, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  %tmp.23.2 = fsub float %a.load.14, %tmp.22.2, !dbg !152 ; [#uses=1 type=float] [debug line = 99:27]
  store float %tmp.23.2, float* %a.addr.14, align 4, !dbg !152 ; [debug line = 99:27]
  br label %.preheader9.3, !dbg !152              ; [debug line = 99:27]

.preheader9.3:                                    ; preds = %23, %.preheader9.2
  %tmp.18_to_int = bitcast float %w.2 to i32, !dbg !165 ; [#uses=1 type=i32] [debug line = 101:11]
  %tmp.18_neg = xor i32 %tmp.18_to_int, -2147483648, !dbg !165 ; [#uses=1 type=i32] [debug line = 101:11]
  %tmp.18 = bitcast i32 %tmp.18_neg to float, !dbg !165 ; [#uses=1 type=float] [debug line = 101:11]
  %tmp.19 = fdiv float %tmp.18, %pivot, !dbg !165 ; [#uses=1 type=float] [debug line = 101:11]
  store float %tmp.19, float* %a.addr.8, align 4, !dbg !165 ; [debug line = 101:11]
  br label %._crit_edge18, !dbg !166              ; [debug line = 102:9]

._crit_edge18:                                    ; preds = %.preheader9.3, %20
  br label %._crit_edge, !dbg !167                ; [debug line = 103:7]

._crit_edge:                                      ; preds = %._crit_edge18, %19
  %24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str8, i32 %tmp.25) nounwind, !dbg !168 ; [#uses=0 type=i32] [debug line = 104:5]
  %i.9 = add i2 %i.3, 1, !dbg !169                ; [#uses=1 type=i2] [debug line = 93:25]
  call void @llvm.dbg.value(metadata !{i2 %i.9}, i64 0, metadata !88), !dbg !169 ; [debug line = 93:25] [debug variable = i]
  br label %.preheader10, !dbg !169               ; [debug line = 93:25]

; <label>:25                                      ; preds = %.preheader10
  %tmp.14 = fdiv float 1.000000e+00, %pivot, !dbg !117 ; [#uses=1 type=float] [debug line = 105:5]
  %a.addr.7 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.3, i64 %tmp.3, !dbg !117 ; [#uses=1 type=float*] [debug line = 105:5]
  store float %tmp.14, float* %a.addr.7, align 4, !dbg !117 ; [debug line = 105:5]
  %k = add i2 %i.5, 1, !dbg !170                  ; [#uses=1 type=i2] [debug line = 56:23]
  call void @llvm.dbg.value(metadata !{i2 %k}, i64 0, metadata !171), !dbg !170 ; [debug line = 56:23] [debug variable = k]
  br label %.preheader13, !dbg !170               ; [debug line = 56:23]

.preheader8:                                      ; preds = %29, %.preheader8.preheader
  %i.4 = phi i2 [ %i.7, %29 ], [ 0, %.preheader8.preheader ] ; [#uses=4 type=i2]
  %i.4.cast2.cast = zext i2 %i.4 to i3, !dbg !90  ; [#uses=1 type=i3] [debug line = 109:9]
  %exitcond1 = icmp eq i2 %i.4, -1, !dbg !90      ; [#uses=1 type=i1] [debug line = 109:9]
  %26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1, label %.loopexit.loopexit, label %.preheader.preheader, !dbg !90 ; [debug line = 109:9]

.preheader.preheader:                             ; preds = %.preheader8
  %tmp. = zext i2 %i.4 to i64, !dbg !172          ; [#uses=2 type=i64] [debug line = 114:2]
  %work.addr.1 = getelementptr [500 x i3]* %work, i64 0, i64 %tmp., !dbg !172 ; [#uses=2 type=i3*] [debug line = 114:2]
  br label %.preheader, !dbg !175                 ; [debug line = 111:18]

.preheader:                                       ; preds = %27, %.preheader.preheader
  %tmp.22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str9) nounwind, !dbg !175 ; [#uses=1 type=i32] [debug line = 111:18]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !176 ; [debug line = 112:1]
  %work.load = load i3* %work.addr.1, align 1     ; [#uses=3 type=i3]
  %tmp.8 = icmp eq i3 %work.load, %i.4.cast2.cast, !dbg !177 ; [#uses=1 type=i1] [debug line = 116:7]
  br i1 %tmp.8, label %29, label %27, !dbg !177   ; [debug line = 116:7]

; <label>:27                                      ; preds = %.preheader
  %tmp.10 = sext i3 %work.load to i64, !dbg !178  ; [#uses=4 type=i64] [debug line = 118:7]
  %work.addr.2 = getelementptr [500 x i3]* %work, i64 0, i64 %tmp.10, !dbg !178 ; [#uses=2 type=i3*] [debug line = 118:7]
  %work.load.1 = load i3* %work.addr.2, align 1   ; [#uses=1 type=i3]
  store i3 %work.load, i3* %work.addr.2, align 1, !dbg !179 ; [debug line = 119:7]
  store i3 %work.load.1, i3* %work.addr.1, align 1, !dbg !180 ; [debug line = 120:7]
  %a.addr.2 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.10, i64 %tmp., !dbg !181 ; [#uses=6 type=float*] [debug line = 123:9]
  %a.addr.3 = getelementptr [3 x [3 x float]]* %a, i64 0, i64 %tmp.10, i64 %tmp.10, !dbg !184 ; [#uses=4 type=float*] [debug line = 124:9]
  %a.load = load float* %a.addr.2, align 4, !dbg !181 ; [#uses=2 type=float] [debug line = 123:9]
  %a.load.3 = load float* %a.addr.3, align 4, !dbg !184 ; [#uses=1 type=float] [debug line = 124:9]
  store float %a.load.3, float* %a.addr.2, align 4, !dbg !184 ; [debug line = 124:9]
  store float %a.load, float* %a.addr.3, align 4, !dbg !185 ; [debug line = 125:9]
  %a.load.4 = load float* %a.addr.2, align 4, !dbg !181 ; [#uses=2 type=float] [debug line = 123:9]
  store float %a.load, float* %a.addr.2, align 4, !dbg !184 ; [debug line = 124:9]
  store float %a.load.4, float* %a.addr.3, align 4, !dbg !185 ; [debug line = 125:9]
  %a.load.6 = load float* %a.addr.2, align 4, !dbg !181 ; [#uses=1 type=float] [debug line = 123:9]
  store float %a.load.4, float* %a.addr.2, align 4, !dbg !184 ; [debug line = 124:9]
  store float %a.load.6, float* %a.addr.3, align 4, !dbg !185 ; [debug line = 125:9]
  %28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str9, i32 %tmp.22) nounwind, !dbg !186 ; [#uses=0 type=i32] [debug line = 127:5]
  br label %.preheader, !dbg !186                 ; [debug line = 127:5]

; <label>:29                                      ; preds = %.preheader
  %i.7 = add i2 %i.4, 1, !dbg !187                ; [#uses=1 type=i2] [debug line = 129:5]
  call void @llvm.dbg.value(metadata !{i2 %i.7}, i64 0, metadata !88), !dbg !187 ; [debug line = 129:5] [debug variable = i]
  br label %.preheader8, !dbg !188                ; [debug line = 130:3]

.loopexit.loopexit:                               ; preds = %.preheader8
  br label %.loopexit

.loopexit.loopexit34:                             ; preds = %_ifconv1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit34, %.loopexit.loopexit
  ret i32 1, !dbg !189                            ; [debug line = 133:1]
}

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=7]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=5]
declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
declare i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7, !13, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!23}
!llvm.dbg.cu = !{!30}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type [3]*", metadata !"mat_type [3]*", metadata !"mat_type [3]*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"minver_a", metadata !"minver_b", metadata !"minver_c"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !2, metadata !21, metadata !4, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type [3]*"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"a"}
!23 = metadata !{metadata !24, [3 x [3 x float]]* @minver_hw}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"minver_hw", metadata !28, metadata !"float", i32 0, i32 31}
!28 = metadata !{metadata !29, metadata !29}
!29 = metadata !{i32 0, i32 2, i32 1}
!30 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float/hls_minver_float/minver_1b_3x3/.autopilot/db/minver.pragma.2.c", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !31} ; [ DW_TAG_compile_unit ]
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !33, metadata !41, metadata !44, metadata !45, metadata !46}
!33 = metadata !{i32 786484, i32 0, null, metadata !"minver_hw", metadata !"minver_hw", metadata !"", metadata !34, i32 55, metadata !35, i32 0, i32 1, [3 x [3 x float]]* @minver_hw} ; [ DW_TAG_variable ]
!34 = metadata !{i32 786473, metadata !"./minver.h", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float", null} ; [ DW_TAG_file_type ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !36, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{i32 786454, null, metadata !"mat_type", metadata !37, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ]
!37 = metadata !{i32 786473, metadata !"minver.c", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float", null} ; [ DW_TAG_file_type ]
!38 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!39 = metadata !{metadata !40, metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !42, i32 315, metadata !43, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float", null} ; [ DW_TAG_file_type ]
!43 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !42, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !42, i32 316, metadata !43, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !42, i32 317, metadata !43, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !47, i32 26, metadata !48, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float", null} ; [ DW_TAG_file_type ]
!48 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"a", metadata !28, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"return", metadata !57, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 1, i32 0}
!59 = metadata !{i32 786689, metadata !60, metadata !"a", null, i32 35, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786478, i32 0, metadata !37, metadata !"minver_hwa", metadata !"minver_hwa", metadata !"", metadata !37, i32 35, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 36} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !48, metadata !63}
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !36, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !40}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!68 = metadata !{i32 35, i32 25, metadata !60, null}
!69 = metadata !{i32 39, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !60, i32 36, i32 1, metadata !37, i32 0} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786688, metadata !70, metadata !"work", metadata !37, i32 41, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 16000, i64 32, i32 0, i32 0, metadata !48, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 499}      ; [ DW_TAG_subrange_type ]
!75 = metadata !{i32 41, i32 6, metadata !70, null}
!76 = metadata !{i32 50, i32 9, metadata !77, null}
!77 = metadata !{i32 786443, metadata !70, i32 50, i32 3, metadata !37, i32 1} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 59, i32 11, metadata !79, null}
!79 = metadata !{i32 786443, metadata !80, i32 59, i32 5, metadata !37, i32 5} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !81, i32 56, i32 29, metadata !37, i32 4} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !70, i32 56, i32 3, metadata !37, i32 3} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 50, i32 30, metadata !83, null}
!83 = metadata !{i32 786443, metadata !77, i32 50, i32 29, metadata !37, i32 2} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 51, i32 1, metadata !83, null}
!85 = metadata !{i32 52, i32 2, metadata !83, null}
!86 = metadata !{i32 53, i32 3, metadata !83, null}
!87 = metadata !{i32 50, i32 23, metadata !77, null}
!88 = metadata !{i32 786688, metadata !70, metadata !"i", metadata !37, i32 41, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 56, i32 9, metadata !81, null}
!90 = metadata !{i32 109, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !70, i32 109, i32 3, metadata !37, i32 20} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 61, i32 6, metadata !93, null}
!93 = metadata !{i32 786443, metadata !79, i32 59, i32 31, metadata !37, i32 6} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 59, i32 32, metadata !93, null}
!95 = metadata !{i32 60, i32 1, metadata !93, null}
!96 = metadata !{i32 786689, metadata !97, metadata !"n", metadata !98, i32 16777224, metadata !101, i32 0, metadata !92} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 786478, i32 0, metadata !98, metadata !"minver_fabs", metadata !"minver_fabs", metadata !"", metadata !98, i32 8, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !66, i32 8} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786473, metadata !"minver_lib.c", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float", null} ; [ DW_TAG_file_type ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !101, metadata !101}
!101 = metadata !{i32 786454, null, metadata !"mat_type", metadata !98, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ]
!102 = metadata !{i32 8, i32 31, metadata !97, metadata !92}
!103 = metadata !{i32 11, i32 3, metadata !104, metadata !92}
!104 = metadata !{i32 786443, metadata !97, i32 8, i32 34, metadata !98, i32 0} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 14, i32 5, metadata !104, metadata !92}
!106 = metadata !{i32 786688, metadata !104, metadata !"f", metadata !98, i32 9, metadata !101, i32 0, metadata !92} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 63, i32 9, metadata !108, null}
!108 = metadata !{i32 786443, metadata !93, i32 62, i32 23, metadata !37, i32 7} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 786688, metadata !70, metadata !"w", metadata !37, i32 43, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 62, i32 7, metadata !93, null}
!111 = metadata !{i32 786688, metadata !70, metadata !"wmax", metadata !37, i32 43, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 786688, metadata !70, metadata !"r", metadata !37, i32 42, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!113 = metadata !{i32 64, i32 9, metadata !108, null}
!114 = metadata !{i32 66, i32 5, metadata !93, null}
!115 = metadata !{i32 59, i32 25, metadata !79, null}
!116 = metadata !{i32 68, i32 5, metadata !80, null}
!117 = metadata !{i32 105, i32 5, metadata !80, null}
!118 = metadata !{i32 786688, metadata !70, metadata !"pivot", metadata !37, i32 43, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 786689, metadata !97, metadata !"n", metadata !98, i32 16777224, metadata !101, i32 0, metadata !120} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 69, i32 11, metadata !80, null}
!121 = metadata !{i32 8, i32 31, metadata !97, metadata !120}
!122 = metadata !{i32 11, i32 3, metadata !104, metadata !120}
!123 = metadata !{i32 14, i32 5, metadata !104, metadata !120}
!124 = metadata !{i32 786688, metadata !104, metadata !"f", metadata !98, i32 9, metadata !101, i32 0, metadata !120} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 786688, metadata !70, metadata !"api", metadata !37, i32 43, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 70, i32 5, metadata !80, null}
!127 = metadata !{i32 75, i32 5, metadata !80, null}
!128 = metadata !{i32 77, i32 7, metadata !129, null}
!129 = metadata !{i32 786443, metadata !80, i32 75, i32 19, metadata !37, i32 9} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 78, i32 7, metadata !129, null}
!131 = metadata !{i32 79, i32 7, metadata !129, null}
!132 = metadata !{i32 80, i32 13, metadata !133, null}
!133 = metadata !{i32 786443, metadata !129, i32 80, i32 7, metadata !37, i32 10} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 80, i32 34, metadata !135, null}
!135 = metadata !{i32 786443, metadata !133, i32 80, i32 33, metadata !37, i32 11} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 81, i32 1, metadata !135, null}
!137 = metadata !{i32 82, i32 2, metadata !135, null}
!138 = metadata !{i32 83, i32 9, metadata !135, null}
!139 = metadata !{i32 84, i32 9, metadata !135, null}
!140 = metadata !{i32 85, i32 7, metadata !135, null}
!141 = metadata !{i32 80, i32 27, metadata !133, null}
!142 = metadata !{i32 786688, metadata !70, metadata !"j", metadata !37, i32 41, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 88, i32 11, metadata !144, null}
!144 = metadata !{i32 786443, metadata !80, i32 88, i32 5, metadata !37, i32 12} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 99, i32 13, metadata !146, null}
!146 = metadata !{i32 786443, metadata !147, i32 98, i32 37, metadata !37, i32 19} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786443, metadata !148, i32 98, i32 11, metadata !37, i32 18} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !149, i32 97, i32 25, metadata !37, i32 17} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !150, i32 95, i32 16, metadata !37, i32 16} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !151, i32 93, i32 31, metadata !37, i32 15} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786443, metadata !80, i32 93, i32 5, metadata !37, i32 14} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 99, i32 27, metadata !146, null}
!153 = metadata !{i32 93, i32 11, metadata !151, null}
!154 = metadata !{i32 88, i32 32, metadata !155, null}
!155 = metadata !{i32 786443, metadata !144, i32 88, i32 31, metadata !37, i32 13} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 89, i32 1, metadata !155, null}
!157 = metadata !{i32 90, i32 2, metadata !155, null}
!158 = metadata !{i32 91, i32 5, metadata !155, null}
!159 = metadata !{i32 88, i32 25, metadata !144, null}
!160 = metadata !{i32 93, i32 32, metadata !150, null}
!161 = metadata !{i32 94, i32 1, metadata !150, null}
!162 = metadata !{i32 95, i32 2, metadata !150, null}
!163 = metadata !{i32 96, i32 9, metadata !149, null}
!164 = metadata !{i32 97, i32 9, metadata !149, null}
!165 = metadata !{i32 101, i32 11, metadata !148, null}
!166 = metadata !{i32 102, i32 9, metadata !148, null}
!167 = metadata !{i32 103, i32 7, metadata !149, null}
!168 = metadata !{i32 104, i32 5, metadata !150, null}
!169 = metadata !{i32 93, i32 25, metadata !151, null}
!170 = metadata !{i32 56, i32 23, metadata !81, null}
!171 = metadata !{i32 786688, metadata !70, metadata !"k", metadata !37, i32 41, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 114, i32 2, metadata !173, null}
!173 = metadata !{i32 786443, metadata !174, i32 111, i32 17, metadata !37, i32 22} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786443, metadata !91, i32 109, i32 25, metadata !37, i32 21} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 111, i32 18, metadata !173, null}
!176 = metadata !{i32 112, i32 1, metadata !173, null}
!177 = metadata !{i32 116, i32 7, metadata !173, null}
!178 = metadata !{i32 118, i32 7, metadata !173, null}
!179 = metadata !{i32 119, i32 7, metadata !173, null}
!180 = metadata !{i32 120, i32 7, metadata !173, null}
!181 = metadata !{i32 123, i32 9, metadata !182, null}
!182 = metadata !{i32 786443, metadata !183, i32 122, i32 33, metadata !37, i32 24} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 786443, metadata !173, i32 122, i32 7, metadata !37, i32 23} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 124, i32 9, metadata !182, null}
!185 = metadata !{i32 125, i32 9, metadata !182, null}
!186 = metadata !{i32 127, i32 5, metadata !173, null}
!187 = metadata !{i32 129, i32 5, metadata !174, null}
!188 = metadata !{i32 130, i32 3, metadata !174, null}
!189 = metadata !{i32 133, i32 1, metadata !70, null}