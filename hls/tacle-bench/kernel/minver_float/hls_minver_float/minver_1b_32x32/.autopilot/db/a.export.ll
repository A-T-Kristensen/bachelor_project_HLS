; ModuleID = '/home/patmos/github/bachelor_project_HLS/hls/tacle-bench/kernel/minver_float/hls_minver_float/minver_1b_32x32/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@minver_hwa_str = internal unnamed_addr constant [11 x i8] c"minver_hwa\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str3 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define i32 @minver_hwa([1024 x float]* %a) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x float]* %a) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @minver_hwa_str) nounwind
  %work = alloca [500 x i6], align 1
  call void (...)* @_ssdm_op_SpecMemCore([1024 x float]* %a, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([1024 x float]* %a, [5 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i6 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond7 = icmp eq i6 %i, -32
  %i_1 = add i6 %i, 1
  br i1 %exitcond7, label %.preheader13.preheader, label %2

.preheader13.preheader:                           ; preds = %1
  %r = alloca i32
  store i32 0, i32* %r
  br label %.preheader13

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp = zext i6 %i to i64
  %work_addr = getelementptr [500 x i6]* %work, i64 0, i64 %tmp
  store i6 %i, i6* %work_addr, align 1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_6) nounwind
  br label %1

.preheader13:                                     ; preds = %.preheader13.preheader, %43
  %i_5 = phi i6 [ %k, %43 ], [ 0, %.preheader13.preheader ]
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_5, i32 5)
  %k = add i6 %i_5, 1
  br i1 %tmp_2, label %.preheader8.preheader, label %.preheader12.preheader

.preheader8.preheader:                            ; preds = %.preheader13
  br label %.preheader8

.preheader12.preheader:                           ; preds = %.preheader13
  %i_5_cast6 = zext i6 %i_5 to i32
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 32, i64 16) nounwind
  %tmp_3 = zext i6 %i_5 to i64
  %tmp_3_cast = zext i6 %i_5 to i12
  %tmp_7 = call i11 @_ssdm_op_BitConcatenate.i11.i6.i5(i6 %i_5, i5 0)
  %tmp_11 = zext i11 %tmp_7 to i64
  %tmp_16_cast = zext i11 %tmp_7 to i12
  %tmp_12 = or i11 %tmp_7, 31
  %tmp_16 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_12)
  %a_addr_71 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_16
  %tmp_17 = or i11 %tmp_7, 30
  %tmp_32 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_17)
  %a_addr_69 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_32
  %tmp_37 = or i11 %tmp_7, 29
  %tmp_42 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_37)
  %a_addr_67 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_42
  %tmp_44 = or i11 %tmp_7, 28
  %tmp_51 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_44)
  %a_addr_65 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_51
  %tmp_55 = or i11 %tmp_7, 27
  %tmp_56 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_55)
  %a_addr_63 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_56
  %tmp_57 = or i11 %tmp_7, 26
  %tmp_58 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_57)
  %a_addr_61 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_58
  %tmp_59 = or i11 %tmp_7, 25
  %tmp_60 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_59)
  %a_addr_59 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_60
  %tmp_61 = or i11 %tmp_7, 24
  %tmp_62 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_61)
  %a_addr_57 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_62
  %tmp_63 = or i11 %tmp_7, 23
  %tmp_64 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_63)
  %a_addr_55 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_64
  %tmp_65 = or i11 %tmp_7, 22
  %tmp_66 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_65)
  %a_addr_53 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_66
  %tmp_67 = or i11 %tmp_7, 21
  %tmp_68 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_67)
  %a_addr_51 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_68
  %tmp_69 = or i11 %tmp_7, 20
  %tmp_70 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_69)
  %a_addr_49 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_70
  %tmp_71 = or i11 %tmp_7, 19
  %tmp_72 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_71)
  %a_addr_47 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_72
  %tmp_73 = or i11 %tmp_7, 18
  %tmp_74 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_73)
  %a_addr_45 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_74
  %tmp_75 = or i11 %tmp_7, 17
  %tmp_76 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_75)
  %a_addr_43 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_76
  %tmp_77 = or i11 %tmp_7, 16
  %tmp_78 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_77)
  %a_addr_41 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_78
  %tmp_79 = or i11 %tmp_7, 15
  %tmp_80 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_79)
  %a_addr_39 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_80
  %tmp_81 = or i11 %tmp_7, 14
  %tmp_82 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_81)
  %a_addr_37 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_82
  %tmp_83 = or i11 %tmp_7, 13
  %tmp_84 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_83)
  %a_addr_35 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_84
  %tmp_85 = or i11 %tmp_7, 12
  %tmp_86 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_85)
  %a_addr_33 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_86
  %tmp_87 = or i11 %tmp_7, 11
  %tmp_88 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_87)
  %a_addr_31 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_88
  %tmp_89 = or i11 %tmp_7, 10
  %tmp_90 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_89)
  %a_addr_29 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_90
  %tmp_91 = or i11 %tmp_7, 9
  %tmp_92 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_91)
  %a_addr_27 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_92
  %tmp_93 = or i11 %tmp_7, 8
  %tmp_94 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_93)
  %a_addr_25 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_94
  %tmp_95 = or i11 %tmp_7, 7
  %tmp_96 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_95)
  %a_addr_23 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_96
  %tmp_97 = or i11 %tmp_7, 6
  %tmp_98 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_97)
  %a_addr_21 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_98
  %tmp_99 = or i11 %tmp_7, 5
  %tmp_100 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_99)
  %a_addr_19 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_100
  %tmp_101 = or i11 %tmp_7, 4
  %tmp_102 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_101)
  %a_addr_17 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_102
  %tmp_103 = or i11 %tmp_7, 3
  %tmp_104 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_103)
  %a_addr_15 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_104
  %tmp_105 = or i11 %tmp_7, 2
  %tmp_106 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_105)
  %a_addr_13 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_106
  %tmp_107 = or i11 %tmp_7, 1
  %tmp_108 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_107)
  %a_addr_11 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_108
  %a_addr_9 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_11
  %tmp_109 = add i12 %tmp_3_cast, %tmp_16_cast
  %tmp_117_cast = zext i12 %tmp_109 to i64
  %a_addr_7 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_117_cast
  br label %.preheader12

.preheader12:                                     ; preds = %_ifconv, %.preheader12.preheader
  %wmax = phi float [ %wmax_1, %_ifconv ], [ 0.000000e+00, %.preheader12.preheader ]
  %r_1 = phi i32 [ %i_6, %_ifconv ], [ %i_5_cast6, %.preheader12.preheader ]
  %exitcond6 = icmp eq i32 %r_1, 32
  br i1 %exitcond6, label %_ifconv1, label %_ifconv

_ifconv:                                          ; preds = %.preheader12
  %r_load_1 = load i32* %r
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 32, i64 0) nounwind
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_114 = trunc i32 %r_1 to i7
  %tmp_122_cast = call i12 @_ssdm_op_BitConcatenate.i12.i7.i5(i7 %tmp_114, i5 0)
  %tmp_115 = add i12 %tmp_122_cast, %tmp_3_cast
  %tmp_123_cast = sext i12 %tmp_115 to i64
  %a_addr_1 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_123_cast
  %a_load_36 = load float* %a_addr_1, align 4
  %n_assign_1_to_int = bitcast float %a_load_36 to i32
  %tmp_36 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %n_assign_1_to_int, i32 23, i32 30)
  %tmp_116 = trunc i32 %n_assign_1_to_int to i23
  %notlhs = icmp ne i8 %tmp_36, -1
  %notrhs = icmp eq i23 %tmp_116, 0
  %tmp_38 = or i1 %notrhs, %notlhs
  %tmp_39 = fcmp oge float %a_load_36, 0.000000e+00
  %tmp_40 = and i1 %tmp_38, %tmp_39
  %f_neg_i = xor i32 %n_assign_1_to_int, -2147483648
  %f_1 = bitcast i32 %f_neg_i to float
  %w_3 = select i1 %tmp_40, float %a_load_36, float %f_1
  %w_3_to_int = bitcast float %w_3 to i32
  %tmp_41 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w_3_to_int, i32 23, i32 30)
  %tmp_117 = trunc i32 %w_3_to_int to i23
  %wmax_to_int = bitcast float %wmax to i32
  %tmp_43 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %wmax_to_int, i32 23, i32 30)
  %tmp_118 = trunc i32 %wmax_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_41, -1
  %notrhs3 = icmp eq i23 %tmp_117, 0
  %tmp_45 = or i1 %notrhs3, %notlhs3
  %notlhs4 = icmp ne i8 %tmp_43, -1
  %notrhs4 = icmp eq i23 %tmp_118, 0
  %tmp_46 = or i1 %notrhs4, %notlhs4
  %tmp_47 = and i1 %tmp_45, %tmp_46
  %tmp_48 = fcmp ogt float %w_3, %wmax
  %tmp_49 = and i1 %tmp_47, %tmp_48
  %wmax_1 = select i1 %tmp_49, float %w_3, float %wmax
  %r_2 = select i1 %tmp_49, i32 %r_1, i32 %r_load_1
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_21) nounwind
  %i_6 = add nsw i32 1, %r_1
  store i32 %r_2, i32* %r
  br label %.preheader12

_ifconv1:                                         ; preds = %.preheader12
  %r_load = load i32* %r
  %tmp_4 = sext i32 %r_load to i64
  %tmp_110 = trunc i32 %r_load to i7
  %tmp_119_cast = call i12 @_ssdm_op_BitConcatenate.i12.i7.i5(i7 %tmp_110, i5 0)
  %tmp_111 = add i12 %tmp_119_cast, %tmp_3_cast
  %tmp_120_cast = sext i12 %tmp_111 to i64
  %a_addr = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_120_cast
  %pivot = load float* %a_addr, align 4
  %pivot_to_int = bitcast float %pivot to i32
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pivot_to_int, i32 23, i32 30)
  %tmp_112 = trunc i32 %pivot_to_int to i23
  %notlhs1 = icmp ne i8 %tmp_9, -1
  %notrhs1 = icmp eq i23 %tmp_112, 0
  %tmp_20 = or i1 %notrhs1, %notlhs1
  %tmp_29 = fcmp oge float %pivot, 0.000000e+00
  %tmp_30 = and i1 %tmp_20, %tmp_29
  %f_neg_i1 = xor i32 %pivot_to_int, -2147483648
  %f = bitcast i32 %f_neg_i1 to float
  %api = select i1 %tmp_30, float %pivot, float %f
  %tmp_5 = fpext float %api to double
  %tmp_5_to_int = bitcast double %tmp_5 to i64
  %tmp_31 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_5_to_int, i32 52, i32 62)
  %tmp_113 = trunc i64 %tmp_5_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_31, -1
  %notrhs2 = icmp eq i52 %tmp_113, 0
  %tmp_33 = or i1 %notrhs2, %notlhs2
  %tmp_34 = fcmp ole double %tmp_5, 1.000000e-06
  %tmp_35 = and i1 %tmp_33, %tmp_34
  br i1 %tmp_35, label %.loopexit.loopexit19, label %3

; <label>:3                                       ; preds = %_ifconv1
  %tmp_1 = icmp eq i32 %r_load, %i_5_cast6
  br i1 %tmp_1, label %.loopexit11, label %4

; <label>:4                                       ; preds = %3
  %work_addr_3 = getelementptr [500 x i6]* %work, i64 0, i64 %tmp_3
  %work_load_2 = load i6* %work_addr_3, align 1
  %work_addr_4 = getelementptr [500 x i6]* %work, i64 0, i64 %tmp_4
  %work_load_3 = load i6* %work_addr_4, align 1
  store i6 %work_load_3, i6* %work_addr_3, align 1
  store i6 %work_load_2, i6* %work_addr_4, align 1
  br label %5

; <label>:5                                       ; preds = %6, %4
  %j = phi i6 [ 0, %4 ], [ %j_1, %6 ]
  %exitcond5 = icmp eq i6 %j, -32
  %j_1 = add i6 %j, 1
  br i1 %exitcond5, label %.loopexit11.loopexit, label %6

; <label>:6                                       ; preds = %5
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_11_cast = zext i6 %j to i12
  %tmp_123 = add i12 %tmp_16_cast, %tmp_11_cast
  %tmp_128_cast = zext i12 %tmp_123 to i64
  %a_addr_4 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_128_cast
  %tmp_124 = add i12 %tmp_119_cast, %tmp_11_cast
  %tmp_129_cast = sext i12 %tmp_124 to i64
  %a_addr_5 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_129_cast
  %w = load float* %a_addr_4, align 4
  %a_load_2 = load float* %a_addr_5, align 4
  store float %a_load_2, float* %a_addr_4, align 4
  store float %w, float* %a_addr_5, align 4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_23) nounwind
  br label %5

.loopexit11.loopexit:                             ; preds = %5
  br label %.loopexit11

.loopexit11:                                      ; preds = %.loopexit11.loopexit, %3
  br label %7

; <label>:7                                       ; preds = %8, %.loopexit11
  %i_2 = phi i6 [ 0, %.loopexit11 ], [ %i_8, %8 ]
  %exitcond4 = icmp eq i6 %i_2, -32
  %i_8 = add i6 %i_2, 1
  br i1 %exitcond4, label %.preheader10.preheader, label %8

.preheader10.preheader:                           ; preds = %7
  %tmp_26 = icmp eq i6 %i_5, 0
  %tmp_20_1 = icmp eq i6 %i_5, 1
  %tmp_20_2 = icmp eq i6 %i_5, 2
  %tmp_20_3 = icmp eq i6 %i_5, 3
  %tmp_20_4 = icmp eq i6 %i_5, 4
  %tmp_20_5 = icmp eq i6 %i_5, 5
  %tmp_20_6 = icmp eq i6 %i_5, 6
  %tmp_20_7 = icmp eq i6 %i_5, 7
  %tmp_20_8 = icmp eq i6 %i_5, 8
  %tmp_20_9 = icmp eq i6 %i_5, 9
  %tmp_20_s = icmp eq i6 %i_5, 10
  %tmp_20_10 = icmp eq i6 %i_5, 11
  %tmp_20_11 = icmp eq i6 %i_5, 12
  %tmp_20_12 = icmp eq i6 %i_5, 13
  %tmp_20_13 = icmp eq i6 %i_5, 14
  %tmp_20_14 = icmp eq i6 %i_5, 15
  %tmp_20_15 = icmp eq i6 %i_5, 16
  %tmp_20_16 = icmp eq i6 %i_5, 17
  %tmp_20_17 = icmp eq i6 %i_5, 18
  %tmp_20_18 = icmp eq i6 %i_5, 19
  %tmp_20_19 = icmp eq i6 %i_5, 20
  %tmp_20_20 = icmp eq i6 %i_5, 21
  %tmp_20_21 = icmp eq i6 %i_5, 22
  %tmp_20_22 = icmp eq i6 %i_5, 23
  %tmp_20_23 = icmp eq i6 %i_5, 24
  %tmp_20_24 = icmp eq i6 %i_5, 25
  %tmp_20_25 = icmp eq i6 %i_5, 26
  %tmp_20_26 = icmp eq i6 %i_5, 27
  %tmp_20_27 = icmp eq i6 %i_5, 28
  %tmp_20_28 = icmp eq i6 %i_5, 29
  %tmp_20_29 = icmp eq i6 %i_5, 30
  %tmp_20_30 = icmp eq i6 %i_5, 31
  br label %.preheader10

; <label>:8                                       ; preds = %7
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_12_cast = zext i6 %i_2 to i12
  %tmp_125 = add i12 %tmp_16_cast, %tmp_12_cast
  %tmp_130_cast = zext i12 %tmp_125 to i64
  %a_addr_6 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_130_cast
  %a_load_5 = load float* %a_addr_6, align 4
  %tmp_13 = fdiv float %a_load_5, %pivot
  store float %tmp_13, float* %a_addr_6, align 4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_24) nounwind
  br label %7

.preheader10:                                     ; preds = %._crit_edge, %.preheader10.preheader
  %i_3 = phi i6 [ %i_9, %._crit_edge ], [ 0, %.preheader10.preheader ]
  %exitcond3 = icmp eq i6 %i_3, -32
  %i_9 = add i6 %i_3, 1
  br i1 %exitcond3, label %43, label %9

; <label>:9                                       ; preds = %.preheader10
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_15 = icmp eq i6 %i_3, %i_5
  br i1 %tmp_15, label %._crit_edge, label %10

; <label>:10                                      ; preds = %9
  %tmp_126 = call i11 @_ssdm_op_BitConcatenate.i11.i6.i5(i6 %i_3, i5 0)
  %tmp_127 = zext i11 %tmp_126 to i64
  %tmp_132_cast = zext i11 %tmp_126 to i12
  %tmp_128 = add i12 %tmp_132_cast, %tmp_3_cast
  %tmp_133_cast = zext i12 %tmp_128 to i64
  %a_addr_8 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_133_cast
  %a_addr_10 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_127
  %tmp_129 = or i11 %tmp_126, 1
  %tmp_130 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_129)
  %a_addr_12 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_130
  %tmp_131 = or i11 %tmp_126, 2
  %tmp_132 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_131)
  %a_addr_14 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_132
  %tmp_133 = or i11 %tmp_126, 3
  %tmp_134 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_133)
  %a_addr_16 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_134
  %tmp_135 = or i11 %tmp_126, 4
  %tmp_136 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_135)
  %a_addr_18 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_136
  %tmp_137 = or i11 %tmp_126, 5
  %tmp_138 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_137)
  %a_addr_20 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_138
  %tmp_139 = or i11 %tmp_126, 6
  %tmp_140 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_139)
  %a_addr_22 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_140
  %tmp_141 = or i11 %tmp_126, 7
  %tmp_142 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_141)
  %a_addr_24 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_142
  %tmp_143 = or i11 %tmp_126, 8
  %tmp_144 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_143)
  %a_addr_26 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_144
  %tmp_145 = or i11 %tmp_126, 9
  %tmp_146 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_145)
  %a_addr_28 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_146
  %tmp_147 = or i11 %tmp_126, 10
  %tmp_148 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_147)
  %a_addr_30 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_148
  %tmp_149 = or i11 %tmp_126, 11
  %tmp_150 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_149)
  %a_addr_32 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_150
  %tmp_151 = or i11 %tmp_126, 12
  %tmp_152 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_151)
  %a_addr_34 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_152
  %tmp_153 = or i11 %tmp_126, 13
  %tmp_154 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_153)
  %a_addr_36 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_154
  %tmp_155 = or i11 %tmp_126, 14
  %tmp_156 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_155)
  %a_addr_38 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_156
  %tmp_157 = or i11 %tmp_126, 15
  %tmp_158 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_157)
  %a_addr_40 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_158
  %tmp_159 = or i11 %tmp_126, 16
  %tmp_160 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_159)
  %a_addr_42 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_160
  %tmp_161 = or i11 %tmp_126, 17
  %tmp_162 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_161)
  %a_addr_44 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_162
  %tmp_163 = or i11 %tmp_126, 18
  %tmp_164 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_163)
  %a_addr_46 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_164
  %tmp_165 = or i11 %tmp_126, 19
  %tmp_166 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_165)
  %a_addr_48 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_166
  %tmp_167 = or i11 %tmp_126, 20
  %tmp_168 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_167)
  %a_addr_50 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_168
  %tmp_169 = or i11 %tmp_126, 21
  %tmp_170 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_169)
  %a_addr_52 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_170
  %tmp_171 = or i11 %tmp_126, 22
  %tmp_172 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_171)
  %a_addr_54 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_172
  %tmp_173 = or i11 %tmp_126, 23
  %tmp_174 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_173)
  %a_addr_56 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_174
  %tmp_175 = or i11 %tmp_126, 24
  %tmp_176 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_175)
  %a_addr_58 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_176
  %tmp_177 = or i11 %tmp_126, 25
  %tmp_178 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_177)
  %a_addr_60 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_178
  %tmp_179 = or i11 %tmp_126, 26
  %tmp_180 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_179)
  %a_addr_62 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_180
  %tmp_181 = or i11 %tmp_126, 27
  %tmp_182 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_181)
  %a_addr_64 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_182
  %tmp_183 = or i11 %tmp_126, 28
  %tmp_184 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_183)
  %a_addr_66 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_184
  %tmp_185 = or i11 %tmp_126, 29
  %tmp_186 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_185)
  %a_addr_68 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_186
  %tmp_187 = or i11 %tmp_126, 30
  %tmp_188 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_187)
  %a_addr_70 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_188
  %tmp_189 = or i11 %tmp_126, 31
  %tmp_190 = call i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53 0, i11 %tmp_189)
  %a_addr_72 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_190
  %w_2 = load float* %a_addr_8, align 4
  %w_2_to_int = bitcast float %w_2 to i32
  %tmp_50 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %w_2_to_int, i32 23, i32 30)
  %tmp_191 = trunc i32 %w_2_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_50, -1
  %notrhs5 = icmp eq i23 %tmp_191, 0
  %tmp_52 = or i1 %notrhs5, %notlhs5
  %tmp_53 = fcmp oeq float %w_2, 0.000000e+00
  %tmp_54 = and i1 %tmp_52, %tmp_53
  br i1 %tmp_54, label %._crit_edge18, label %.preheader9.0

.preheader9.0:                                    ; preds = %10
  br i1 %tmp_26, label %.preheader9.1, label %11

; <label>:11                                      ; preds = %.preheader9.0
  %a_load_38 = load float* %a_addr_9, align 4
  %tmp_27 = fmul float %w_2, %a_load_38
  %a_load_39 = load float* %a_addr_10, align 4
  %tmp_28 = fsub float %a_load_39, %tmp_27
  store float %tmp_28, float* %a_addr_10, align 4
  br label %.preheader9.1

.preheader9.1:                                    ; preds = %11, %.preheader9.0
  br i1 %tmp_20_1, label %.preheader9.2, label %12

; <label>:12                                      ; preds = %.preheader9.1
  %a_load_40 = load float* %a_addr_11, align 4
  %tmp_22_1 = fmul float %w_2, %a_load_40
  %a_load_41 = load float* %a_addr_12, align 4
  %tmp_23_1 = fsub float %a_load_41, %tmp_22_1
  store float %tmp_23_1, float* %a_addr_12, align 4
  br label %.preheader9.2

.preheader9.2:                                    ; preds = %12, %.preheader9.1
  br i1 %tmp_20_2, label %.preheader9.3, label %13

; <label>:13                                      ; preds = %.preheader9.2
  %a_load_42 = load float* %a_addr_13, align 4
  %tmp_22_2 = fmul float %w_2, %a_load_42
  %a_load_43 = load float* %a_addr_14, align 4
  %tmp_23_2 = fsub float %a_load_43, %tmp_22_2
  store float %tmp_23_2, float* %a_addr_14, align 4
  br label %.preheader9.3

.preheader9.3:                                    ; preds = %13, %.preheader9.2
  br i1 %tmp_20_3, label %.preheader9.4, label %14

; <label>:14                                      ; preds = %.preheader9.3
  %a_load_44 = load float* %a_addr_15, align 4
  %tmp_22_3 = fmul float %w_2, %a_load_44
  %a_load_45 = load float* %a_addr_16, align 4
  %tmp_23_3 = fsub float %a_load_45, %tmp_22_3
  store float %tmp_23_3, float* %a_addr_16, align 4
  br label %.preheader9.4

.preheader9.4:                                    ; preds = %14, %.preheader9.3
  br i1 %tmp_20_4, label %.preheader9.5, label %15

; <label>:15                                      ; preds = %.preheader9.4
  %a_load_46 = load float* %a_addr_17, align 4
  %tmp_22_4 = fmul float %w_2, %a_load_46
  %a_load_47 = load float* %a_addr_18, align 4
  %tmp_23_4 = fsub float %a_load_47, %tmp_22_4
  store float %tmp_23_4, float* %a_addr_18, align 4
  br label %.preheader9.5

.preheader9.5:                                    ; preds = %15, %.preheader9.4
  br i1 %tmp_20_5, label %.preheader9.6, label %16

; <label>:16                                      ; preds = %.preheader9.5
  %a_load_48 = load float* %a_addr_19, align 4
  %tmp_22_5 = fmul float %w_2, %a_load_48
  %a_load_49 = load float* %a_addr_20, align 4
  %tmp_23_5 = fsub float %a_load_49, %tmp_22_5
  store float %tmp_23_5, float* %a_addr_20, align 4
  br label %.preheader9.6

.preheader9.6:                                    ; preds = %16, %.preheader9.5
  br i1 %tmp_20_6, label %.preheader9.7, label %17

; <label>:17                                      ; preds = %.preheader9.6
  %a_load_50 = load float* %a_addr_21, align 4
  %tmp_22_6 = fmul float %w_2, %a_load_50
  %a_load_51 = load float* %a_addr_22, align 4
  %tmp_23_6 = fsub float %a_load_51, %tmp_22_6
  store float %tmp_23_6, float* %a_addr_22, align 4
  br label %.preheader9.7

.preheader9.7:                                    ; preds = %17, %.preheader9.6
  br i1 %tmp_20_7, label %.preheader9.8, label %18

; <label>:18                                      ; preds = %.preheader9.7
  %a_load_52 = load float* %a_addr_23, align 4
  %tmp_22_7 = fmul float %w_2, %a_load_52
  %a_load_53 = load float* %a_addr_24, align 4
  %tmp_23_7 = fsub float %a_load_53, %tmp_22_7
  store float %tmp_23_7, float* %a_addr_24, align 4
  br label %.preheader9.8

.preheader9.8:                                    ; preds = %18, %.preheader9.7
  br i1 %tmp_20_8, label %.preheader9.9, label %19

; <label>:19                                      ; preds = %.preheader9.8
  %a_load_54 = load float* %a_addr_25, align 4
  %tmp_22_8 = fmul float %w_2, %a_load_54
  %a_load_55 = load float* %a_addr_26, align 4
  %tmp_23_8 = fsub float %a_load_55, %tmp_22_8
  store float %tmp_23_8, float* %a_addr_26, align 4
  br label %.preheader9.9

.preheader9.9:                                    ; preds = %19, %.preheader9.8
  br i1 %tmp_20_9, label %.preheader9.10, label %20

; <label>:20                                      ; preds = %.preheader9.9
  %a_load_56 = load float* %a_addr_27, align 4
  %tmp_22_9 = fmul float %w_2, %a_load_56
  %a_load_57 = load float* %a_addr_28, align 4
  %tmp_23_9 = fsub float %a_load_57, %tmp_22_9
  store float %tmp_23_9, float* %a_addr_28, align 4
  br label %.preheader9.10

.preheader9.10:                                   ; preds = %20, %.preheader9.9
  br i1 %tmp_20_s, label %.preheader9.11, label %21

; <label>:21                                      ; preds = %.preheader9.10
  %a_load_58 = load float* %a_addr_29, align 4
  %tmp_22_s = fmul float %w_2, %a_load_58
  %a_load_59 = load float* %a_addr_30, align 4
  %tmp_23_s = fsub float %a_load_59, %tmp_22_s
  store float %tmp_23_s, float* %a_addr_30, align 4
  br label %.preheader9.11

.preheader9.11:                                   ; preds = %21, %.preheader9.10
  br i1 %tmp_20_10, label %.preheader9.12, label %22

; <label>:22                                      ; preds = %.preheader9.11
  %a_load_60 = load float* %a_addr_31, align 4
  %tmp_22_10 = fmul float %w_2, %a_load_60
  %a_load_61 = load float* %a_addr_32, align 4
  %tmp_23_10 = fsub float %a_load_61, %tmp_22_10
  store float %tmp_23_10, float* %a_addr_32, align 4
  br label %.preheader9.12

.preheader9.12:                                   ; preds = %22, %.preheader9.11
  br i1 %tmp_20_11, label %.preheader9.13, label %23

; <label>:23                                      ; preds = %.preheader9.12
  %a_load_62 = load float* %a_addr_33, align 4
  %tmp_22_11 = fmul float %w_2, %a_load_62
  %a_load_63 = load float* %a_addr_34, align 4
  %tmp_23_11 = fsub float %a_load_63, %tmp_22_11
  store float %tmp_23_11, float* %a_addr_34, align 4
  br label %.preheader9.13

.preheader9.13:                                   ; preds = %23, %.preheader9.12
  br i1 %tmp_20_12, label %.preheader9.14, label %24

; <label>:24                                      ; preds = %.preheader9.13
  %a_load_64 = load float* %a_addr_35, align 4
  %tmp_22_12 = fmul float %w_2, %a_load_64
  %a_load_65 = load float* %a_addr_36, align 4
  %tmp_23_12 = fsub float %a_load_65, %tmp_22_12
  store float %tmp_23_12, float* %a_addr_36, align 4
  br label %.preheader9.14

.preheader9.14:                                   ; preds = %24, %.preheader9.13
  br i1 %tmp_20_13, label %.preheader9.15, label %25

; <label>:25                                      ; preds = %.preheader9.14
  %a_load_66 = load float* %a_addr_37, align 4
  %tmp_22_13 = fmul float %w_2, %a_load_66
  %a_load_67 = load float* %a_addr_38, align 4
  %tmp_23_13 = fsub float %a_load_67, %tmp_22_13
  store float %tmp_23_13, float* %a_addr_38, align 4
  br label %.preheader9.15

.preheader9.15:                                   ; preds = %25, %.preheader9.14
  br i1 %tmp_20_14, label %.preheader9.16, label %26

; <label>:26                                      ; preds = %.preheader9.15
  %a_load_68 = load float* %a_addr_39, align 4
  %tmp_22_14 = fmul float %w_2, %a_load_68
  %a_load_69 = load float* %a_addr_40, align 4
  %tmp_23_14 = fsub float %a_load_69, %tmp_22_14
  store float %tmp_23_14, float* %a_addr_40, align 4
  br label %.preheader9.16

.preheader9.16:                                   ; preds = %26, %.preheader9.15
  br i1 %tmp_20_15, label %.preheader9.17, label %27

; <label>:27                                      ; preds = %.preheader9.16
  %a_load_70 = load float* %a_addr_41, align 4
  %tmp_22_15 = fmul float %w_2, %a_load_70
  %a_load_71 = load float* %a_addr_42, align 4
  %tmp_23_15 = fsub float %a_load_71, %tmp_22_15
  store float %tmp_23_15, float* %a_addr_42, align 4
  br label %.preheader9.17

.preheader9.17:                                   ; preds = %27, %.preheader9.16
  br i1 %tmp_20_16, label %.preheader9.18, label %28

; <label>:28                                      ; preds = %.preheader9.17
  %a_load_72 = load float* %a_addr_43, align 4
  %tmp_22_16 = fmul float %w_2, %a_load_72
  %a_load_73 = load float* %a_addr_44, align 4
  %tmp_23_16 = fsub float %a_load_73, %tmp_22_16
  store float %tmp_23_16, float* %a_addr_44, align 4
  br label %.preheader9.18

.preheader9.18:                                   ; preds = %28, %.preheader9.17
  br i1 %tmp_20_17, label %.preheader9.19, label %29

; <label>:29                                      ; preds = %.preheader9.18
  %a_load_74 = load float* %a_addr_45, align 4
  %tmp_22_17 = fmul float %w_2, %a_load_74
  %a_load_75 = load float* %a_addr_46, align 4
  %tmp_23_17 = fsub float %a_load_75, %tmp_22_17
  store float %tmp_23_17, float* %a_addr_46, align 4
  br label %.preheader9.19

.preheader9.19:                                   ; preds = %29, %.preheader9.18
  br i1 %tmp_20_18, label %.preheader9.20, label %30

; <label>:30                                      ; preds = %.preheader9.19
  %a_load_76 = load float* %a_addr_47, align 4
  %tmp_22_18 = fmul float %w_2, %a_load_76
  %a_load_77 = load float* %a_addr_48, align 4
  %tmp_23_18 = fsub float %a_load_77, %tmp_22_18
  store float %tmp_23_18, float* %a_addr_48, align 4
  br label %.preheader9.20

.preheader9.20:                                   ; preds = %30, %.preheader9.19
  br i1 %tmp_20_19, label %.preheader9.21, label %31

; <label>:31                                      ; preds = %.preheader9.20
  %a_load_78 = load float* %a_addr_49, align 4
  %tmp_22_19 = fmul float %w_2, %a_load_78
  %a_load_79 = load float* %a_addr_50, align 4
  %tmp_23_19 = fsub float %a_load_79, %tmp_22_19
  store float %tmp_23_19, float* %a_addr_50, align 4
  br label %.preheader9.21

.preheader9.21:                                   ; preds = %31, %.preheader9.20
  br i1 %tmp_20_20, label %.preheader9.22, label %32

; <label>:32                                      ; preds = %.preheader9.21
  %a_load_80 = load float* %a_addr_51, align 4
  %tmp_22_20 = fmul float %w_2, %a_load_80
  %a_load_81 = load float* %a_addr_52, align 4
  %tmp_23_20 = fsub float %a_load_81, %tmp_22_20
  store float %tmp_23_20, float* %a_addr_52, align 4
  br label %.preheader9.22

.preheader9.22:                                   ; preds = %32, %.preheader9.21
  br i1 %tmp_20_21, label %.preheader9.23, label %33

; <label>:33                                      ; preds = %.preheader9.22
  %a_load_82 = load float* %a_addr_53, align 4
  %tmp_22_21 = fmul float %w_2, %a_load_82
  %a_load_83 = load float* %a_addr_54, align 4
  %tmp_23_21 = fsub float %a_load_83, %tmp_22_21
  store float %tmp_23_21, float* %a_addr_54, align 4
  br label %.preheader9.23

.preheader9.23:                                   ; preds = %33, %.preheader9.22
  br i1 %tmp_20_22, label %.preheader9.24, label %34

; <label>:34                                      ; preds = %.preheader9.23
  %a_load_84 = load float* %a_addr_55, align 4
  %tmp_22_22 = fmul float %w_2, %a_load_84
  %a_load_85 = load float* %a_addr_56, align 4
  %tmp_23_22 = fsub float %a_load_85, %tmp_22_22
  store float %tmp_23_22, float* %a_addr_56, align 4
  br label %.preheader9.24

.preheader9.24:                                   ; preds = %34, %.preheader9.23
  br i1 %tmp_20_23, label %.preheader9.25, label %35

; <label>:35                                      ; preds = %.preheader9.24
  %a_load_86 = load float* %a_addr_57, align 4
  %tmp_22_23 = fmul float %w_2, %a_load_86
  %a_load_87 = load float* %a_addr_58, align 4
  %tmp_23_23 = fsub float %a_load_87, %tmp_22_23
  store float %tmp_23_23, float* %a_addr_58, align 4
  br label %.preheader9.25

.preheader9.25:                                   ; preds = %35, %.preheader9.24
  br i1 %tmp_20_24, label %.preheader9.26, label %36

; <label>:36                                      ; preds = %.preheader9.25
  %a_load_88 = load float* %a_addr_59, align 4
  %tmp_22_24 = fmul float %w_2, %a_load_88
  %a_load_89 = load float* %a_addr_60, align 4
  %tmp_23_24 = fsub float %a_load_89, %tmp_22_24
  store float %tmp_23_24, float* %a_addr_60, align 4
  br label %.preheader9.26

.preheader9.26:                                   ; preds = %36, %.preheader9.25
  br i1 %tmp_20_25, label %.preheader9.27, label %37

; <label>:37                                      ; preds = %.preheader9.26
  %a_load_90 = load float* %a_addr_61, align 4
  %tmp_22_25 = fmul float %w_2, %a_load_90
  %a_load_91 = load float* %a_addr_62, align 4
  %tmp_23_25 = fsub float %a_load_91, %tmp_22_25
  store float %tmp_23_25, float* %a_addr_62, align 4
  br label %.preheader9.27

.preheader9.27:                                   ; preds = %37, %.preheader9.26
  br i1 %tmp_20_26, label %.preheader9.28, label %38

; <label>:38                                      ; preds = %.preheader9.27
  %a_load_92 = load float* %a_addr_63, align 4
  %tmp_22_26 = fmul float %w_2, %a_load_92
  %a_load_93 = load float* %a_addr_64, align 4
  %tmp_23_26 = fsub float %a_load_93, %tmp_22_26
  store float %tmp_23_26, float* %a_addr_64, align 4
  br label %.preheader9.28

.preheader9.28:                                   ; preds = %38, %.preheader9.27
  br i1 %tmp_20_27, label %.preheader9.29, label %39

; <label>:39                                      ; preds = %.preheader9.28
  %a_load_94 = load float* %a_addr_65, align 4
  %tmp_22_27 = fmul float %w_2, %a_load_94
  %a_load_95 = load float* %a_addr_66, align 4
  %tmp_23_27 = fsub float %a_load_95, %tmp_22_27
  store float %tmp_23_27, float* %a_addr_66, align 4
  br label %.preheader9.29

.preheader9.29:                                   ; preds = %39, %.preheader9.28
  br i1 %tmp_20_28, label %.preheader9.30, label %40

; <label>:40                                      ; preds = %.preheader9.29
  %a_load_96 = load float* %a_addr_67, align 4
  %tmp_22_28 = fmul float %w_2, %a_load_96
  %a_load_97 = load float* %a_addr_68, align 4
  %tmp_23_28 = fsub float %a_load_97, %tmp_22_28
  store float %tmp_23_28, float* %a_addr_68, align 4
  br label %.preheader9.30

.preheader9.30:                                   ; preds = %40, %.preheader9.29
  br i1 %tmp_20_29, label %.preheader9.31, label %41

; <label>:41                                      ; preds = %.preheader9.30
  %a_load_98 = load float* %a_addr_69, align 4
  %tmp_22_29 = fmul float %w_2, %a_load_98
  %a_load_99 = load float* %a_addr_70, align 4
  %tmp_23_29 = fsub float %a_load_99, %tmp_22_29
  store float %tmp_23_29, float* %a_addr_70, align 4
  br label %.preheader9.31

.preheader9.31:                                   ; preds = %41, %.preheader9.30
  br i1 %tmp_20_30, label %.preheader9.32, label %42

; <label>:42                                      ; preds = %.preheader9.31
  %a_load_100 = load float* %a_addr_71, align 4
  %tmp_22_30 = fmul float %w_2, %a_load_100
  %a_load_101 = load float* %a_addr_72, align 4
  %tmp_23_30 = fsub float %a_load_101, %tmp_22_30
  store float %tmp_23_30, float* %a_addr_72, align 4
  br label %.preheader9.32

.preheader9.32:                                   ; preds = %42, %.preheader9.31
  %tmp_18_neg = xor i32 %w_2_to_int, -2147483648
  %tmp_18 = bitcast i32 %tmp_18_neg to float
  %tmp_19 = fdiv float %tmp_18, %pivot
  store float %tmp_19, float* %a_addr_8, align 4
  br label %._crit_edge18

._crit_edge18:                                    ; preds = %.preheader9.32, %10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge18, %9
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_25) nounwind
  br label %.preheader10

; <label>:43                                      ; preds = %.preheader10
  %tmp_14 = fdiv float 1.000000e+00, %pivot
  store float %tmp_14, float* %a_addr_7, align 4
  br label %.preheader13

.preheader8.loopexit:                             ; preds = %.preheader
  br label %.preheader8

.preheader8:                                      ; preds = %.preheader8.preheader, %.preheader8.loopexit
  %i_4 = phi i6 [ %i_7, %.preheader8.loopexit ], [ 0, %.preheader8.preheader ]
  %exitcond1 = icmp eq i6 %i_4, -32
  %i_7 = add i6 %i_4, 1
  br i1 %exitcond1, label %.loopexit.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader8
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %tmp_s = zext i6 %i_4 to i64
  %tmp_cast = zext i6 %i_4 to i12
  %work_addr_1 = getelementptr [500 x i6]* %work, i64 0, i64 %tmp_s
  br label %.preheader

.preheader:                                       ; preds = %44, %.preheader.preheader
  %work_load = load i6* %work_addr_1, align 1
  %tmp_8 = icmp eq i6 %work_load, %i_4
  br i1 %tmp_8, label %.preheader8.loopexit, label %44

; <label>:44                                      ; preds = %.preheader
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_10 = zext i6 %work_load to i64
  %tmp_10_cast = zext i6 %work_load to i12
  %tmp_119 = call i11 @_ssdm_op_BitConcatenate.i11.i6.i5(i6 %work_load, i5 0)
  %tmp_120 = zext i11 %tmp_119 to i12
  %tmp_121 = add i12 %tmp_120, %tmp_cast
  %tmp_126_cast = sext i12 %tmp_121 to i64
  %a_addr_2 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_126_cast
  %tmp_122 = add i12 %tmp_120, %tmp_10_cast
  %tmp_127_cast = sext i12 %tmp_122 to i64
  %a_addr_3 = getelementptr [1024 x float]* %a, i64 0, i64 %tmp_127_cast
  %work_addr_2 = getelementptr [500 x i6]* %work, i64 0, i64 %tmp_10
  %work_load_1 = load i6* %work_addr_2, align 1
  store i6 %work_load, i6* %work_addr_2, align 1
  store i6 %work_load_1, i6* %work_addr_1, align 1
  %a_load = load float* %a_addr_2, align 4
  %a_load_3 = load float* %a_addr_3, align 4
  store float %a_load_3, float* %a_addr_2, align 4
  store float %a_load, float* %a_addr_3, align 4
  %a_load_4 = load float* %a_addr_2, align 4
  store float %a_load, float* %a_addr_2, align 4
  store float %a_load_4, float* %a_addr_3, align 4
  %a_load_6 = load float* %a_addr_2, align 4
  store float %a_load_4, float* %a_addr_2, align 4
  store float %a_load_6, float* %a_addr_3, align 4
  %a_load_7 = load float* %a_addr_2, align 4
  store float %a_load_6, float* %a_addr_2, align 4
  store float %a_load_7, float* %a_addr_3, align 4
  %a_load_8 = load float* %a_addr_2, align 4
  store float %a_load_7, float* %a_addr_2, align 4
  store float %a_load_8, float* %a_addr_3, align 4
  %a_load_9 = load float* %a_addr_2, align 4
  store float %a_load_8, float* %a_addr_2, align 4
  store float %a_load_9, float* %a_addr_3, align 4
  %a_load_10 = load float* %a_addr_2, align 4
  store float %a_load_9, float* %a_addr_2, align 4
  store float %a_load_10, float* %a_addr_3, align 4
  %a_load_11 = load float* %a_addr_2, align 4
  store float %a_load_10, float* %a_addr_2, align 4
  store float %a_load_11, float* %a_addr_3, align 4
  %a_load_12 = load float* %a_addr_2, align 4
  store float %a_load_11, float* %a_addr_2, align 4
  store float %a_load_12, float* %a_addr_3, align 4
  %a_load_13 = load float* %a_addr_2, align 4
  store float %a_load_12, float* %a_addr_2, align 4
  store float %a_load_13, float* %a_addr_3, align 4
  %a_load_14 = load float* %a_addr_2, align 4
  store float %a_load_13, float* %a_addr_2, align 4
  store float %a_load_14, float* %a_addr_3, align 4
  %a_load_15 = load float* %a_addr_2, align 4
  store float %a_load_14, float* %a_addr_2, align 4
  store float %a_load_15, float* %a_addr_3, align 4
  %a_load_16 = load float* %a_addr_2, align 4
  store float %a_load_15, float* %a_addr_2, align 4
  store float %a_load_16, float* %a_addr_3, align 4
  %a_load_17 = load float* %a_addr_2, align 4
  store float %a_load_16, float* %a_addr_2, align 4
  store float %a_load_17, float* %a_addr_3, align 4
  %a_load_18 = load float* %a_addr_2, align 4
  store float %a_load_17, float* %a_addr_2, align 4
  store float %a_load_18, float* %a_addr_3, align 4
  %a_load_19 = load float* %a_addr_2, align 4
  store float %a_load_18, float* %a_addr_2, align 4
  store float %a_load_19, float* %a_addr_3, align 4
  %a_load_20 = load float* %a_addr_2, align 4
  store float %a_load_19, float* %a_addr_2, align 4
  store float %a_load_20, float* %a_addr_3, align 4
  %a_load_21 = load float* %a_addr_2, align 4
  store float %a_load_20, float* %a_addr_2, align 4
  store float %a_load_21, float* %a_addr_3, align 4
  %a_load_22 = load float* %a_addr_2, align 4
  store float %a_load_21, float* %a_addr_2, align 4
  store float %a_load_22, float* %a_addr_3, align 4
  %a_load_23 = load float* %a_addr_2, align 4
  store float %a_load_22, float* %a_addr_2, align 4
  store float %a_load_23, float* %a_addr_3, align 4
  %a_load_24 = load float* %a_addr_2, align 4
  store float %a_load_23, float* %a_addr_2, align 4
  store float %a_load_24, float* %a_addr_3, align 4
  %a_load_25 = load float* %a_addr_2, align 4
  store float %a_load_24, float* %a_addr_2, align 4
  store float %a_load_25, float* %a_addr_3, align 4
  %a_load_26 = load float* %a_addr_2, align 4
  store float %a_load_25, float* %a_addr_2, align 4
  store float %a_load_26, float* %a_addr_3, align 4
  %a_load_27 = load float* %a_addr_2, align 4
  store float %a_load_26, float* %a_addr_2, align 4
  store float %a_load_27, float* %a_addr_3, align 4
  %a_load_28 = load float* %a_addr_2, align 4
  store float %a_load_27, float* %a_addr_2, align 4
  store float %a_load_28, float* %a_addr_3, align 4
  %a_load_29 = load float* %a_addr_2, align 4
  store float %a_load_28, float* %a_addr_2, align 4
  store float %a_load_29, float* %a_addr_3, align 4
  %a_load_30 = load float* %a_addr_2, align 4
  store float %a_load_29, float* %a_addr_2, align 4
  store float %a_load_30, float* %a_addr_3, align 4
  %a_load_31 = load float* %a_addr_2, align 4
  store float %a_load_30, float* %a_addr_2, align 4
  store float %a_load_31, float* %a_addr_3, align 4
  %a_load_32 = load float* %a_addr_2, align 4
  store float %a_load_31, float* %a_addr_2, align 4
  store float %a_load_32, float* %a_addr_3, align 4
  %a_load_33 = load float* %a_addr_2, align 4
  store float %a_load_32, float* %a_addr_2, align 4
  store float %a_load_33, float* %a_addr_3, align 4
  %a_load_34 = load float* %a_addr_2, align 4
  store float %a_load_33, float* %a_addr_2, align 4
  store float %a_load_34, float* %a_addr_3, align 4
  %a_load_35 = load float* %a_addr_2, align 4
  store float %a_load_34, float* %a_addr_2, align 4
  store float %a_load_35, float* %a_addr_3, align 4
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp_22) nounwind
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader8
  br label %.loopexit

.loopexit.loopexit19:                             ; preds = %_ifconv1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit19, %.loopexit.loopexit
  ret i32 1
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

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

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_19 = trunc i32 %empty to i8
  ret i8 %empty_19
}

declare i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_20 = trunc i64 %empty to i11
  ret i11 %empty_20
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_21 = shl i6 1, %empty
  %empty_22 = and i6 %0, %empty_21
  %empty_23 = icmp ne i6 %empty_22, 0
  ret i1 %empty_23
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i53.i11(i53, i11) nounwind readnone {
entry:
  %empty = zext i53 %0 to i64
  %empty_24 = zext i11 %1 to i64
  %empty_25 = shl i64 %empty, 11
  %empty_26 = or i64 %empty_25, %empty_24
  ret i64 %empty_26
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i7.i5(i7, i5) nounwind readnone {
entry:
  %empty = zext i7 %0 to i12
  %empty_27 = zext i5 %1 to i12
  %empty_28 = shl i12 %empty, 5
  %empty_29 = or i12 %empty_28, %empty_27
  ret i12 %empty_29
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i6.i5(i6, i5) nounwind readnone {
entry:
  %empty = zext i6 %0 to i11
  %empty_30 = zext i5 %1 to i11
  %empty_31 = shl i11 %empty, 5
  %empty_32 = or i11 %empty_31, %empty_30
  ret i11 %empty_32
}

!opencl.kernels = !{!0, !7, !13, !17}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!10 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type [32]*", metadata !"mat_type [32]*", metadata !"mat_type [32]*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"minver_a", metadata !"minver_b", metadata !"minver_c"}
!13 = metadata !{null, metadata !14, metadata !2, metadata !15, metadata !4, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"mat_type [32]*"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"minver_hw"}
!17 = metadata !{null, metadata !14, metadata !2, metadata !15, metadata !4, metadata !18, metadata !6}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"a"}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"a", metadata !23, metadata !"float", i32 0, i32 31}
!23 = metadata !{metadata !24, metadata !24}
!24 = metadata !{i32 0, i32 31, i32 1}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"return", metadata !29, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 1, i32 0}