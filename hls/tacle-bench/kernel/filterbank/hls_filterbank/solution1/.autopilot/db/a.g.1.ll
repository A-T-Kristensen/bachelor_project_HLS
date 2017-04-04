; ModuleID = '/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/filterbank/hls_filterbank/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memset_Vect_Up.str = internal unnamed_addr constant [15 x i8] c"memset_Vect_Up\00" ; [#uses=1 type=[15 x i8]*]
@memset_Vect_H.str = internal unnamed_addr constant [14 x i8] c"memset_Vect_H\00" ; [#uses=1 type=[14 x i8]*]
@memset_Vect_F.str = internal unnamed_addr constant [14 x i8] c"memset_Vect_F\00" ; [#uses=1 type=[14 x i8]*]
@filterbank_core_hwa.str = internal unnamed_addr constant [20 x i8] c"filterbank_core_hwa\00" ; [#uses=1 type=[20 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str7 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]

; [#uses=13]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=4]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @filterbank_core_hwa(float* %r, float* %y, [32 x float]* %H, [32 x float]* %F) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([20 x i8]* @filterbank_core_hwa.str) nounwind
  %Vect_H = alloca [256 x float], align 16        ; [#uses=3 type=[256 x float]*]
  call void @llvm.dbg.declare(metadata !{[256 x float]* %Vect_H}, metadata !34), !dbg !41 ; [debug line = 60:10] [debug variable = Vect_H]
  %Vect_Dn = alloca [32 x float], align 16        ; [#uses=2 type=[32 x float]*]
  call void @llvm.dbg.declare(metadata !{[32 x float]* %Vect_Dn}, metadata !42), !dbg !43 ; [debug line = 61:10] [debug variable = Vect_Dn]
  %Vect_Up = alloca [256 x float], align 16       ; [#uses=3 type=[256 x float]*]
  call void @llvm.dbg.declare(metadata !{[256 x float]* %Vect_Up}, metadata !44), !dbg !45 ; [debug line = 62:10] [debug variable = Vect_Up]
  %Vect_F = alloca [256 x float], align 16        ; [#uses=3 type=[256 x float]*]
  call void @llvm.dbg.declare(metadata !{[256 x float]* %Vect_F}, metadata !46), !dbg !47 ; [debug line = 63:10] [debug variable = Vect_F]
  call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !48), !dbg !49 ; [debug line = 33:33] [debug variable = r]
  call void @llvm.dbg.value(metadata !{float* %y}, i64 0, metadata !50), !dbg !51 ; [debug line = 34:9] [debug variable = y]
  call void @llvm.dbg.value(metadata !{[32 x float]* %H}, i64 0, metadata !52), !dbg !53 ; [debug line = 35:9] [debug variable = H]
  call void @llvm.dbg.value(metadata !{[32 x float]* %F}, i64 0, metadata !54), !dbg !55 ; [debug line = 36:9] [debug variable = F]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %r, i32 256) nounwind, !dbg !56 ; [debug line = 37:2]
  call void (...)* @_ssdm_SpecArrayDimSize([32 x float]* %F, i32 8) nounwind, !dbg !57 ; [debug line = 37:32]
  call void (...)* @_ssdm_SpecArrayDimSize([32 x float]* %H, i32 8) nounwind, !dbg !58 ; [debug line = 37:60]
  call void (...)* @_ssdm_SpecArrayDimSize(float* %y, i32 256) nounwind, !dbg !59 ; [debug line = 37:88]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !60 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecResource(float* %r, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !61 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %r, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !62 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecResource(float* %y, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !63 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %y, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !64 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecResource([32 x float]* %H, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface([32 x float]* %H, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !66 ; [debug line = 46:1]
  call void (...)* @_ssdm_op_SpecResource([32 x float]* %F, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !67 ; [debug line = 48:1]
  call void (...)* @_ssdm_op_SpecInterface([32 x float]* %F, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !68 ; [debug line = 49:1]
  br label %1, !dbg !69                           ; [debug line = 53:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond6 = icmp eq i32 %i, 256, !dbg !69      ; [#uses=1 type=i1] [debug line = 53:9]
  br i1 %exitcond6, label %.preheader13.preheader, label %2, !dbg !69 ; [debug line = 53:9]

.preheader13.preheader:                           ; preds = %1
  br label %.preheader13, !dbg !71                ; [debug line = 59:9]

; <label>:2                                       ; preds = %1
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 53:32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !74 ; [debug line = 54:1]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 55:1]
  %tmp = sext i32 %i to i64, !dbg !76             ; [#uses=1 type=i64] [debug line = 56:2]
  %y.addr = getelementptr inbounds float* %y, i64 %tmp, !dbg !76 ; [#uses=1 type=float*] [debug line = 56:2]
  store float 0.000000e+00, float* %y.addr, align 4, !dbg !76 ; [debug line = 56:2]
  %rend29 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !77 ; [#uses=0 type=i32] [debug line = 57:3]
  %i.2 = add nsw i32 %i, 1, !dbg !78              ; [#uses=1 type=i32] [debug line = 53:25]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !79), !dbg !78 ; [debug line = 53:25] [debug variable = i]
  br label %1, !dbg !78                           ; [debug line = 53:25]

.preheader13:                                     ; preds = %15, %.preheader13.preheader
  %i.1 = phi i32 [ %i.3, %15 ], [ 0, %.preheader13.preheader ] ; [#uses=3 type=i32]
  %exitcond5 = icmp eq i32 %i.1, 8, !dbg !71      ; [#uses=1 type=i1] [debug line = 59:9]
  br i1 %exitcond5, label %16, label %meminst.preheader, !dbg !71 ; [debug line = 59:9]

meminst.preheader:                                ; preds = %.preheader13
  br label %meminst, !dbg !80                     ; [debug line = 60:32]

meminst:                                          ; preds = %meminst, %meminst.preheader
  %invdar = phi i32 [ %indvarinc, %meminst ], [ 0, %meminst.preheader ], !dbg !80 ; [#uses=3 type=i32] [debug line = 60:32]
  %indvarinc = add i32 %invdar, 1, !dbg !80       ; [#uses=1 type=i32] [debug line = 60:32]
  %tmp.2 = sext i32 %invdar to i64, !dbg !80      ; [#uses=1 type=i64] [debug line = 60:32]
  %Vect_H.addr = getelementptr [256 x float]* %Vect_H, i64 0, i64 %tmp.2, !dbg !80 ; [#uses=1 type=float*] [debug line = 60:32]
  store float 0.000000e+00, float* %Vect_H.addr, align 4, !dbg !80 ; [debug line = 60:32]
  %tmp.3 = icmp eq i32 %invdar, 255, !dbg !80     ; [#uses=1 type=i1] [debug line = 60:32]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_Vect_H.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.3, label %meminst14.preheader, label %meminst, !dbg !80 ; [debug line = 60:32]

meminst14.preheader:                              ; preds = %meminst
  br label %meminst14, !dbg !81                   ; [debug line = 62:33]

meminst14:                                        ; preds = %meminst14, %meminst14.preheader
  %invdar1 = phi i32 [ %indvarinc1, %meminst14 ], [ 0, %meminst14.preheader ], !dbg !81 ; [#uses=3 type=i32] [debug line = 62:33]
  %indvarinc1 = add i32 %invdar1, 1, !dbg !81     ; [#uses=1 type=i32] [debug line = 62:33]
  %tmp.4 = sext i32 %invdar1 to i64, !dbg !81     ; [#uses=1 type=i64] [debug line = 62:33]
  %Vect_Up.addr = getelementptr [256 x float]* %Vect_Up, i64 0, i64 %tmp.4, !dbg !81 ; [#uses=1 type=float*] [debug line = 62:33]
  store float 0.000000e+00, float* %Vect_Up.addr, align 4, !dbg !81 ; [debug line = 62:33]
  %tmp.5 = icmp eq i32 %invdar1, 255, !dbg !81    ; [#uses=1 type=i1] [debug line = 62:33]
  %4 = call i32 (...)* @_ssdm_op_SpecLoopName([15 x i8]* @memset_Vect_Up.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.5, label %meminst17.preheader, label %meminst14, !dbg !81 ; [debug line = 62:33]

meminst17.preheader:                              ; preds = %meminst14
  br label %meminst17, !dbg !82                   ; [debug line = 63:32]

meminst17:                                        ; preds = %meminst17, %meminst17.preheader
  %invdar2 = phi i32 [ %indvarinc2, %meminst17 ], [ 0, %meminst17.preheader ], !dbg !82 ; [#uses=3 type=i32] [debug line = 63:32]
  %indvarinc2 = add i32 %invdar2, 1, !dbg !82     ; [#uses=1 type=i32] [debug line = 63:32]
  %tmp.6 = sext i32 %invdar2 to i64, !dbg !82     ; [#uses=1 type=i64] [debug line = 63:32]
  %Vect_F.addr = getelementptr [256 x float]* %Vect_F, i64 0, i64 %tmp.6, !dbg !82 ; [#uses=1 type=float*] [debug line = 63:32]
  store float 0.000000e+00, float* %Vect_F.addr, align 4, !dbg !82 ; [debug line = 63:32]
  %tmp.7 = icmp eq i32 %invdar2, 255, !dbg !82    ; [#uses=1 type=i1] [debug line = 63:32]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopName([14 x i8]* @memset_Vect_F.str) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.7, label %6, label %meminst17, !dbg !82 ; [debug line = 63:32]

; <label>:6                                       ; preds = %meminst17
  %tmp.8 = sext i32 %i.1 to i64, !dbg !83         ; [#uses=2 type=i64] [debug line = 71:2]
  br label %7, !dbg !88                           ; [debug line = 67:11]

; <label>:7                                       ; preds = %.critedge, %6
  %j = phi i32 [ 0, %6 ], [ %j.6, %.critedge ]    ; [#uses=4 type=i32]
  %exitcond4 = icmp eq i32 %j, 256, !dbg !88      ; [#uses=1 type=i1] [debug line = 67:11]
  br i1 %exitcond4, label %.preheader11.preheader, label %.preheader12.preheader, !dbg !88 ; [debug line = 67:11]

.preheader11.preheader:                           ; preds = %7
  br label %.preheader11, !dbg !89                ; [debug line = 75:11]

.preheader12.preheader:                           ; preds = %7
  %tmp.9 = sext i32 %j to i64, !dbg !83           ; [#uses=1 type=i64] [debug line = 71:2]
  %Vect_H.addr.1 = getelementptr inbounds [256 x float]* %Vect_H, i64 0, i64 %tmp.9, !dbg !83 ; [#uses=2 type=float*] [debug line = 71:2]
  br label %.preheader12, !dbg !91                ; [debug line = 68:13]

.preheader12:                                     ; preds = %9, %.preheader12.preheader
  %k = phi i32 [ %k.2, %9 ], [ 0, %.preheader12.preheader ] ; [#uses=4 type=i32]
  %tmp.10 = icmp slt i32 %k, 32, !dbg !91         ; [#uses=1 type=i1] [debug line = 68:13]
  br i1 %tmp.10, label %8, label %.critedge, !dbg !91 ; [debug line = 68:13]

; <label>:8                                       ; preds = %.preheader12
  %tmp.15 = sub nsw i32 %j, %k, !dbg !91          ; [#uses=2 type=i32] [debug line = 68:13]
  %tmp.16 = icmp sgt i32 %tmp.15, -1, !dbg !91    ; [#uses=1 type=i1] [debug line = 68:13]
  br i1 %tmp.16, label %9, label %.critedge

; <label>:9                                       ; preds = %8
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 70:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !93 ; [debug line = 69:1]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !94 ; [debug line = 70:1]
  %tmp.18 = sext i32 %k to i64, !dbg !83          ; [#uses=1 type=i64] [debug line = 71:2]
  %H.addr = getelementptr inbounds [32 x float]* %H, i64 %tmp.8, i64 %tmp.18, !dbg !83 ; [#uses=1 type=float*] [debug line = 71:2]
  %H.load = load float* %H.addr, align 4, !dbg !83 ; [#uses=2 type=float] [debug line = 71:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %H.load) nounwind
  %tmp.19 = sext i32 %tmp.15 to i64, !dbg !83     ; [#uses=1 type=i64] [debug line = 71:2]
  %r.addr = getelementptr inbounds float* %r, i64 %tmp.19, !dbg !83 ; [#uses=1 type=float*] [debug line = 71:2]
  %r.load = load float* %r.addr, align 4, !dbg !83 ; [#uses=2 type=float] [debug line = 71:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %r.load) nounwind
  %tmp.20 = fmul float %H.load, %r.load, !dbg !83 ; [#uses=1 type=float] [debug line = 71:2]
  %Vect_H.load.1 = load float* %Vect_H.addr.1, align 4, !dbg !83 ; [#uses=2 type=float] [debug line = 71:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %Vect_H.load.1) nounwind
  %tmp.21 = fadd float %Vect_H.load.1, %tmp.20, !dbg !83 ; [#uses=1 type=float] [debug line = 71:2]
  store float %tmp.21, float* %Vect_H.addr.1, align 4, !dbg !83 ; [debug line = 71:2]
  %rend21 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !95 ; [#uses=0 type=i32] [debug line = 71:40]
  %k.2 = add nsw i32 %k, 1, !dbg !96              ; [#uses=1 type=i32] [debug line = 68:58]
  call void @llvm.dbg.value(metadata !{i32 %k.2}, i64 0, metadata !97), !dbg !96 ; [debug line = 68:58] [debug variable = k]
  br label %.preheader12, !dbg !96                ; [debug line = 68:58]

.critedge:                                        ; preds = %8, %.preheader12
  %j.6 = add nsw i32 %j, 1, !dbg !98              ; [#uses=1 type=i32] [debug line = 67:27]
  call void @llvm.dbg.value(metadata !{i32 %j.6}, i64 0, metadata !99), !dbg !98 ; [debug line = 67:27] [debug variable = j]
  br label %7, !dbg !98                           ; [debug line = 67:27]

.preheader11:                                     ; preds = %10, %.preheader11.preheader
  %j.1 = phi i32 [ %j.5, %10 ], [ 0, %.preheader11.preheader ] ; [#uses=4 type=i32]
  %exitcond3 = icmp eq i32 %j.1, 32, !dbg !89     ; [#uses=1 type=i1] [debug line = 75:11]
  br i1 %exitcond3, label %.preheader10.preheader, label %10, !dbg !89 ; [debug line = 75:11]

.preheader10.preheader:                           ; preds = %.preheader11
  br label %.preheader10, !dbg !100               ; [debug line = 83:11]

; <label>:10                                      ; preds = %.preheader11
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 75:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !104 ; [debug line = 76:1]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !105 ; [debug line = 77:1]
  %tmp.11 = shl nsw i32 %j.1, 3, !dbg !106        ; [#uses=1 type=i32] [debug line = 78:2]
  %tmp.12 = sext i32 %tmp.11 to i64, !dbg !106    ; [#uses=1 type=i64] [debug line = 78:2]
  %Vect_H.addr.2 = getelementptr inbounds [256 x float]* %Vect_H, i64 0, i64 %tmp.12, !dbg !106 ; [#uses=1 type=float*] [debug line = 78:2]
  %Vect_H.load = load float* %Vect_H.addr.2, align 16, !dbg !106 ; [#uses=2 type=float] [debug line = 78:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %Vect_H.load) nounwind
  %tmp.13 = sext i32 %j.1 to i64, !dbg !106       ; [#uses=1 type=i64] [debug line = 78:2]
  %Vect_Dn.addr = getelementptr inbounds [32 x float]* %Vect_Dn, i64 0, i64 %tmp.13, !dbg !106 ; [#uses=1 type=float*] [debug line = 78:2]
  store float %Vect_H.load, float* %Vect_Dn.addr, align 4, !dbg !106 ; [debug line = 78:2]
  %rend27 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !107 ; [#uses=0 type=i32] [debug line = 79:5]
  %j.5 = add nsw i32 %j.1, 1, !dbg !108           ; [#uses=1 type=i32] [debug line = 75:26]
  call void @llvm.dbg.value(metadata !{i32 %j.5}, i64 0, metadata !99), !dbg !108 ; [debug line = 75:26] [debug variable = j]
  br label %.preheader11, !dbg !108               ; [debug line = 75:26]

.preheader10:                                     ; preds = %11, %.preheader10.preheader
  %j.2 = phi i32 [ %j.7, %11 ], [ 0, %.preheader10.preheader ] ; [#uses=4 type=i32]
  %exitcond2 = icmp eq i32 %j.2, 32, !dbg !100    ; [#uses=1 type=i1] [debug line = 83:11]
  br i1 %exitcond2, label %.preheader9.preheader, label %11, !dbg !100 ; [debug line = 83:11]

.preheader9.preheader:                            ; preds = %.preheader10
  br label %.preheader9, !dbg !109                ; [debug line = 91:11]

; <label>:11                                      ; preds = %.preheader10
  %rbegin4 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !111 ; [#uses=1 type=i32] [debug line = 83:33]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !113 ; [debug line = 84:1]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !114 ; [debug line = 85:1]
  %tmp.23 = sext i32 %j.2 to i64, !dbg !115       ; [#uses=1 type=i64] [debug line = 86:2]
  %Vect_Dn.addr.1 = getelementptr inbounds [32 x float]* %Vect_Dn, i64 0, i64 %tmp.23, !dbg !115 ; [#uses=1 type=float*] [debug line = 86:2]
  %Vect_Dn.load = load float* %Vect_Dn.addr.1, align 4, !dbg !115 ; [#uses=2 type=float] [debug line = 86:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %Vect_Dn.load) nounwind
  %tmp.24 = shl nsw i32 %j.2, 3, !dbg !115        ; [#uses=1 type=i32] [debug line = 86:2]
  %tmp.25 = sext i32 %tmp.24 to i64, !dbg !115    ; [#uses=1 type=i64] [debug line = 86:2]
  %Vect_Up.addr.1 = getelementptr inbounds [256 x float]* %Vect_Up, i64 0, i64 %tmp.25, !dbg !115 ; [#uses=1 type=float*] [debug line = 86:2]
  store float %Vect_Dn.load, float* %Vect_Up.addr.1, align 16, !dbg !115 ; [debug line = 86:2]
  %rend23 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i32 %rbegin4) nounwind, !dbg !116 ; [#uses=0 type=i32] [debug line = 87:5]
  %j.7 = add nsw i32 %j.2, 1, !dbg !117           ; [#uses=1 type=i32] [debug line = 83:26]
  call void @llvm.dbg.value(metadata !{i32 %j.7}, i64 0, metadata !99), !dbg !117 ; [debug line = 83:26] [debug variable = j]
  br label %.preheader10, !dbg !117               ; [debug line = 83:26]

.preheader9:                                      ; preds = %.critedge7, %.preheader9.preheader
  %j.3 = phi i32 [ %j.9, %.critedge7 ], [ 0, %.preheader9.preheader ] ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j.3, 256, !dbg !109   ; [#uses=1 type=i1] [debug line = 91:11]
  br i1 %exitcond1, label %.preheader.preheader, label %.preheader8.preheader, !dbg !109 ; [debug line = 91:11]

.preheader.preheader:                             ; preds = %.preheader9
  br label %.preheader, !dbg !118                 ; [debug line = 100:11]

.preheader8.preheader:                            ; preds = %.preheader9
  %tmp.27 = sext i32 %j.3 to i64, !dbg !120       ; [#uses=1 type=i64] [debug line = 95:2]
  %Vect_F.addr.1 = getelementptr inbounds [256 x float]* %Vect_F, i64 0, i64 %tmp.27, !dbg !120 ; [#uses=2 type=float*] [debug line = 95:2]
  br label %.preheader8, !dbg !124                ; [debug line = 92:13]

.preheader8:                                      ; preds = %13, %.preheader8.preheader
  %k.1 = phi i32 [ %k.3, %13 ], [ 0, %.preheader8.preheader ] ; [#uses=4 type=i32]
  %tmp.28 = icmp slt i32 %k.1, 32, !dbg !124      ; [#uses=1 type=i1] [debug line = 92:13]
  br i1 %tmp.28, label %12, label %.critedge7, !dbg !124 ; [debug line = 92:13]

; <label>:12                                      ; preds = %.preheader8
  %tmp.33 = sub nsw i32 %j.3, %k.1, !dbg !124     ; [#uses=2 type=i32] [debug line = 92:13]
  %tmp.34 = icmp sgt i32 %tmp.33, -1, !dbg !124   ; [#uses=1 type=i1] [debug line = 92:13]
  br i1 %tmp.34, label %13, label %.critedge7

; <label>:13                                      ; preds = %12
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0)) nounwind, !dbg !125 ; [#uses=1 type=i32] [debug line = 94:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !126 ; [debug line = 93:1]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !127 ; [debug line = 94:1]
  %tmp.36 = sext i32 %k.1 to i64, !dbg !120       ; [#uses=1 type=i64] [debug line = 95:2]
  %F.addr = getelementptr inbounds [32 x float]* %F, i64 %tmp.8, i64 %tmp.36, !dbg !120 ; [#uses=1 type=float*] [debug line = 95:2]
  %F.load = load float* %F.addr, align 4, !dbg !120 ; [#uses=2 type=float] [debug line = 95:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %F.load) nounwind
  %tmp.37 = sext i32 %tmp.33 to i64, !dbg !120    ; [#uses=1 type=i64] [debug line = 95:2]
  %Vect_Up.addr.2 = getelementptr inbounds [256 x float]* %Vect_Up, i64 0, i64 %tmp.37, !dbg !120 ; [#uses=1 type=float*] [debug line = 95:2]
  %Vect_Up.load = load float* %Vect_Up.addr.2, align 4, !dbg !120 ; [#uses=2 type=float] [debug line = 95:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %Vect_Up.load) nounwind
  %tmp.38 = fmul float %F.load, %Vect_Up.load, !dbg !120 ; [#uses=1 type=float] [debug line = 95:2]
  %Vect_F.load.1 = load float* %Vect_F.addr.1, align 4, !dbg !120 ; [#uses=2 type=float] [debug line = 95:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %Vect_F.load.1) nounwind
  %tmp.39 = fadd float %Vect_F.load.1, %tmp.38, !dbg !120 ; [#uses=1 type=float] [debug line = 95:2]
  store float %tmp.39, float* %Vect_F.addr.1, align 4, !dbg !120 ; [debug line = 95:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !128 ; [#uses=0 type=i32] [debug line = 95:46]
  %k.3 = add nsw i32 %k.1, 1, !dbg !129           ; [#uses=1 type=i32] [debug line = 92:58]
  call void @llvm.dbg.value(metadata !{i32 %k.3}, i64 0, metadata !97), !dbg !129 ; [debug line = 92:58] [debug variable = k]
  br label %.preheader8, !dbg !129                ; [debug line = 92:58]

.critedge7:                                       ; preds = %12, %.preheader8
  %j.9 = add nsw i32 %j.3, 1, !dbg !130           ; [#uses=1 type=i32] [debug line = 91:27]
  call void @llvm.dbg.value(metadata !{i32 %j.9}, i64 0, metadata !99), !dbg !130 ; [debug line = 91:27] [debug variable = j]
  br label %.preheader9, !dbg !130                ; [debug line = 91:27]

.preheader:                                       ; preds = %14, %.preheader.preheader
  %j.4 = phi i32 [ %j.8, %14 ], [ 0, %.preheader.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j.4, 256, !dbg !118    ; [#uses=1 type=i1] [debug line = 100:11]
  br i1 %exitcond, label %15, label %14, !dbg !118 ; [debug line = 100:11]

; <label>:14                                      ; preds = %.preheader
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) nounwind, !dbg !131 ; [#uses=1 type=i32] [debug line = 100:34]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !133 ; [debug line = 101:1]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !134 ; [debug line = 102:1]
  %tmp.30 = sext i32 %j.4 to i64, !dbg !135       ; [#uses=2 type=i64] [debug line = 103:2]
  %Vect_F.addr.2 = getelementptr inbounds [256 x float]* %Vect_F, i64 0, i64 %tmp.30, !dbg !135 ; [#uses=1 type=float*] [debug line = 103:2]
  %Vect_F.load = load float* %Vect_F.addr.2, align 4, !dbg !135 ; [#uses=2 type=float] [debug line = 103:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %Vect_F.load) nounwind
  %y.addr.1 = getelementptr inbounds float* %y, i64 %tmp.30, !dbg !135 ; [#uses=2 type=float*] [debug line = 103:2]
  %y.load = load float* %y.addr.1, align 4, !dbg !135 ; [#uses=2 type=float] [debug line = 103:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %y.load) nounwind
  %tmp.31 = fadd float %y.load, %Vect_F.load, !dbg !135 ; [#uses=1 type=float] [debug line = 103:2]
  store float %tmp.31, float* %y.addr.1, align 4, !dbg !135 ; [debug line = 103:2]
  %rend25 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !136 ; [#uses=0 type=i32] [debug line = 104:5]
  %j.8 = add nsw i32 %j.4, 1, !dbg !137           ; [#uses=1 type=i32] [debug line = 100:27]
  call void @llvm.dbg.value(metadata !{i32 %j.8}, i64 0, metadata !99), !dbg !137 ; [debug line = 100:27] [debug variable = j]
  br label %.preheader, !dbg !137                 ; [debug line = 100:27]

; <label>:15                                      ; preds = %.preheader
  %i.3 = add nsw i32 %i.1, 1, !dbg !138           ; [#uses=1 type=i32] [debug line = 59:23]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !79), !dbg !138 ; [debug line = 59:23] [debug variable = i]
  br label %.preheader13, !dbg !138               ; [debug line = 59:23]

; <label>:16                                      ; preds = %.preheader13
  ret void, !dbg !139                             ; [debug line = 106:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=6]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=6]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare i32 @_ssdm_op_SpecLoopName(...)

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=6]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=10]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=4]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!27}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/filterbank/hls_filterbank/solution1/.autopilot/db/filterbank.pragma.2.c", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/filterbank", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !17} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"filterbank_core_hwa", metadata !"filterbank_core_hwa", metadata !"", metadata !6, i32 33, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, float*, [32 x float]*, [32 x float]*)* @filterbank_core_hwa, null, null, metadata !15, i32 37} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"filterbank.c", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/filterbank", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11, metadata !11}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !10, metadata !13, i32 0, i32 0} ; [ DW_TAG_array_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !19, metadata !22, metadata !23, metadata !24}
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !20, i32 315, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/filterbank", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !20, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!22 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !20, i32 316, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !20, i32 317, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !25, i32 26, metadata !26, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/filterbank", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{void (float*, float*, [32 x float]*, [32 x float]*)* @filterbank_core_hwa, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float [32]*", metadata !"float [32]*"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"r", metadata !"y", metadata !"H", metadata !"F"}
!33 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!34 = metadata !{i32 786688, metadata !35, metadata !"Vect_H", metadata !6, i32 60, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 786443, metadata !36, i32 59, i32 29, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786443, metadata !37, i32 59, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !5, i32 37, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !10, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!41 = metadata !{i32 60, i32 10, metadata !35, null}
!42 = metadata !{i32 786688, metadata !35, metadata !"Vect_Dn", metadata !6, i32 61, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 61, i32 10, metadata !35, null}
!44 = metadata !{i32 786688, metadata !35, metadata !"Vect_Up", metadata !6, i32 62, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 62, i32 10, metadata !35, null}
!46 = metadata !{i32 786688, metadata !35, metadata !"Vect_F", metadata !6, i32 63, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 63, i32 10, metadata !35, null}
!48 = metadata !{i32 786689, metadata !5, metadata !"r", metadata !6, i32 16777249, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 33, i32 33, metadata !5, null}
!50 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554466, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 34, i32 9, metadata !5, null}
!52 = metadata !{i32 786689, metadata !5, metadata !"H", metadata !6, i32 50331683, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 35, i32 9, metadata !5, null}
!54 = metadata !{i32 786689, metadata !5, metadata !"F", metadata !6, i32 67108900, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 36, i32 9, metadata !5, null}
!56 = metadata !{i32 37, i32 2, metadata !37, null}
!57 = metadata !{i32 37, i32 32, metadata !37, null}
!58 = metadata !{i32 37, i32 60, metadata !37, null}
!59 = metadata !{i32 37, i32 88, metadata !37, null}
!60 = metadata !{i32 38, i32 1, metadata !37, null}
!61 = metadata !{i32 39, i32 1, metadata !37, null}
!62 = metadata !{i32 40, i32 1, metadata !37, null}
!63 = metadata !{i32 42, i32 1, metadata !37, null}
!64 = metadata !{i32 43, i32 1, metadata !37, null}
!65 = metadata !{i32 45, i32 1, metadata !37, null}
!66 = metadata !{i32 46, i32 1, metadata !37, null}
!67 = metadata !{i32 48, i32 1, metadata !37, null}
!68 = metadata !{i32 49, i32 1, metadata !37, null}
!69 = metadata !{i32 53, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !37, i32 53, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 59, i32 9, metadata !36, null}
!72 = metadata !{i32 53, i32 32, metadata !73, null}
!73 = metadata !{i32 786443, metadata !70, i32 53, i32 31, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 54, i32 1, metadata !73, null}
!75 = metadata !{i32 55, i32 1, metadata !73, null}
!76 = metadata !{i32 56, i32 2, metadata !73, null}
!77 = metadata !{i32 57, i32 3, metadata !73, null}
!78 = metadata !{i32 53, i32 25, metadata !70, null}
!79 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !6, i32 51, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 60, i32 32, metadata !35, null}
!81 = metadata !{i32 62, i32 33, metadata !35, null}
!82 = metadata !{i32 63, i32 32, metadata !35, null}
!83 = metadata !{i32 71, i32 2, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 70, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 68, i32 7, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 67, i32 33, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786443, metadata !35, i32 67, i32 5, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 67, i32 11, metadata !87, null}
!89 = metadata !{i32 75, i32 11, metadata !90, null}
!90 = metadata !{i32 786443, metadata !35, i32 75, i32 5, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 68, i32 13, metadata !85, null}
!92 = metadata !{i32 70, i32 2, metadata !84, null}
!93 = metadata !{i32 69, i32 1, metadata !84, null}
!94 = metadata !{i32 70, i32 1, metadata !84, null}
!95 = metadata !{i32 71, i32 40, metadata !84, null}
!96 = metadata !{i32 68, i32 58, metadata !85, null}
!97 = metadata !{i32 786688, metadata !37, metadata !"k", metadata !6, i32 51, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 67, i32 27, metadata !87, null}
!99 = metadata !{i32 786688, metadata !37, metadata !"j", metadata !6, i32 51, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 83, i32 11, metadata !101, null}
!101 = metadata !{i32 786443, metadata !35, i32 83, i32 5, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 75, i32 33, metadata !103, null}
!103 = metadata !{i32 786443, metadata !90, i32 75, i32 32, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 76, i32 1, metadata !103, null}
!105 = metadata !{i32 77, i32 1, metadata !103, null}
!106 = metadata !{i32 78, i32 2, metadata !103, null}
!107 = metadata !{i32 79, i32 5, metadata !103, null}
!108 = metadata !{i32 75, i32 26, metadata !90, null}
!109 = metadata !{i32 91, i32 11, metadata !110, null}
!110 = metadata !{i32 786443, metadata !35, i32 91, i32 5, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 83, i32 33, metadata !112, null}
!112 = metadata !{i32 786443, metadata !101, i32 83, i32 32, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 84, i32 1, metadata !112, null}
!114 = metadata !{i32 85, i32 1, metadata !112, null}
!115 = metadata !{i32 86, i32 2, metadata !112, null}
!116 = metadata !{i32 87, i32 5, metadata !112, null}
!117 = metadata !{i32 83, i32 26, metadata !101, null}
!118 = metadata !{i32 100, i32 11, metadata !119, null}
!119 = metadata !{i32 786443, metadata !35, i32 100, i32 5, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 95, i32 2, metadata !121, null}
!121 = metadata !{i32 786443, metadata !122, i32 94, i32 1, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !123, i32 92, i32 7, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 786443, metadata !110, i32 91, i32 33, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 92, i32 13, metadata !122, null}
!125 = metadata !{i32 94, i32 2, metadata !121, null}
!126 = metadata !{i32 93, i32 1, metadata !121, null}
!127 = metadata !{i32 94, i32 1, metadata !121, null}
!128 = metadata !{i32 95, i32 46, metadata !121, null}
!129 = metadata !{i32 92, i32 58, metadata !122, null}
!130 = metadata !{i32 91, i32 27, metadata !110, null}
!131 = metadata !{i32 100, i32 34, metadata !132, null}
!132 = metadata !{i32 786443, metadata !119, i32 100, i32 33, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!133 = metadata !{i32 101, i32 1, metadata !132, null}
!134 = metadata !{i32 102, i32 1, metadata !132, null}
!135 = metadata !{i32 103, i32 2, metadata !132, null}
!136 = metadata !{i32 104, i32 5, metadata !132, null}
!137 = metadata !{i32 100, i32 27, metadata !119, null}
!138 = metadata !{i32 59, i32 23, metadata !36, null}
!139 = metadata !{i32 106, i32 1, metadata !37, null}