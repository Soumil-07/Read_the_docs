; ModuleID = '/home/linux/ieng6/students/186/dnwadhwani/Desktop/project3/Read_the_docs/project_files/project3/dft_1024_precomputed/dft.comp/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<float, 0, 0, 0, '8', false>" }
%"struct.hls::axis<float, 0, 0, 0, '8', false>" = type { float, %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }

; Function Attrs: noinline willreturn
define void @apatb_dft_ir(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %real_sample, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %imag_sample, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %real_op, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %imag_op) local_unnamed_addr #0 {
entry:
  %real_sample_copy.data = alloca i32, align 512
  %real_sample_copy.keep = alloca i4, align 512
  %real_sample_copy.strb = alloca i4, align 512
  %real_sample_copy.last = alloca i1, align 512
  %imag_sample_copy.data = alloca i32, align 512
  %imag_sample_copy.keep = alloca i4, align 512
  %imag_sample_copy.strb = alloca i4, align 512
  %imag_sample_copy.last = alloca i1, align 512
  %real_op_copy.data = alloca i32, align 512
  %real_op_copy.keep = alloca i4, align 512
  %real_op_copy.strb = alloca i4, align 512
  %real_op_copy.last = alloca i1, align 512
  %imag_op_copy.data = alloca i32, align 512
  %imag_op_copy.keep = alloca i4, align 512
  %imag_op_copy.strb = alloca i4, align 512
  %imag_op_copy.last = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* nonnull %real_sample, i32* nonnull align 512 %real_sample_copy.data, i4* nonnull align 512 %real_sample_copy.keep, i4* nonnull align 512 %real_sample_copy.strb, i1* nonnull align 512 %real_sample_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* nonnull %imag_sample, i32* nonnull align 512 %imag_sample_copy.data, i4* nonnull align 512 %imag_sample_copy.keep, i4* nonnull align 512 %imag_sample_copy.strb, i1* nonnull align 512 %imag_sample_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* nonnull %real_op, i32* nonnull align 512 %real_op_copy.data, i4* nonnull align 512 %real_op_copy.keep, i4* nonnull align 512 %real_op_copy.strb, i1* nonnull align 512 %real_op_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* nonnull %imag_op, i32* nonnull align 512 %imag_op_copy.data, i4* nonnull align 512 %imag_op_copy.keep, i4* nonnull align 512 %imag_op_copy.strb, i1* nonnull align 512 %imag_op_copy.last)
  call void @apatb_dft_hw(i32* %real_sample_copy.data, i4* %real_sample_copy.keep, i4* %real_sample_copy.strb, i1* %real_sample_copy.last, i32* %imag_sample_copy.data, i4* %imag_sample_copy.keep, i4* %imag_sample_copy.strb, i1* %imag_sample_copy.last, i32* %real_op_copy.data, i4* %real_op_copy.keep, i4* %real_op_copy.strb, i1* %real_op_copy.last, i32* %imag_op_copy.data, i4* %imag_op_copy.keep, i4* %imag_op_copy.strb, i1* %imag_op_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %real_sample, i32* %real_sample_copy.data, i4* %real_sample_copy.keep, i4* %real_sample_copy.strb, i1* %real_sample_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %imag_sample, i32* %imag_sample_copy.data, i4* %imag_sample_copy.keep, i4* %imag_sample_copy.strb, i1* %imag_sample_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %real_op, i32* %real_op_copy.data, i4* %real_op_copy.keep, i4* %real_op_copy.strb, i1* %real_op_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %imag_op, i32* %imag_op_copy.data, i4* %imag_op_copy.keep, i4* %imag_op_copy.strb, i1* %imag_op_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="5.0" %_V_data_V15, i4* noalias align 512 "unpacked"="5.1" %_V_keep_V26, i4* noalias align 512 "unpacked"="5.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="10.0" %_V_data_V159, i4* noalias align 512 "unpacked"="10.1" %_V_keep_V2610, i4* noalias align 512 "unpacked"="10.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="10.3" %_V_last_V4812) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.12"(i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.12"(i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.12"(i32* align 512 %_V_data_V15, i4* align 512 %_V_keep_V26, i4* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.12"(i32* align 512 %_V_data_V159, i4* align 512 %_V_keep_V2610, i4* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %3)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="5.0" %_V_data_V15, i4* noalias align 512 "unpacked"="5.1" %_V_keep_V26, i4* noalias align 512 "unpacked"="5.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="10.0" %_V_data_V159, i4* noalias align 512 "unpacked"="10.1" %_V_keep_V2610, i4* noalias align 512 "unpacked"="10.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="10.3" %_V_last_V4812) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %1, i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %2, i32* align 512 %_V_data_V15, i4* align 512 %_V_keep_V26, i4* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %3, i32* align 512 %_V_data_V159, i4* align 512 %_V_keep_V2610, i4* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.7"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.7"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i32* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca i32
  %2 = alloca i4
  %3 = alloca i4
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %1 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %1
  %11 = bitcast i4* %3 to i8*
  %12 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %11, i8* %12)
  %13 = bitcast i4* %3 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i4
  %16 = bitcast i4* %2 to i8*
  %17 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %2 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = bitcast i1* %4 to i8*
  %22 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %4 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %26 = bitcast i32 %10 to float
  %.fca.0.0.insert = insertvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" undef, float %26, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %.fca.0.0.insert, i4 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %20, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %5
  %27 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %28 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %27, i8* %28)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.12"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.15"(i32* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>.15"(i32* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_12(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.extract = extractvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %10, 0, 0
  %11 = bitcast float %.fca.0.0.extract to i32
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i32 %11, i32* %2
  %12 = bitcast i32* %2 to i8*
  %13 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %12, i8* %13)
  store i4 %.fca.0.1.0.0.0.extract, i4* %4
  %14 = bitcast i4* %4 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  store i4 %.fca.0.2.0.0.0.extract, i4* %3
  %16 = bitcast i4* %3 to i8*
  %17 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %18 = bitcast i1* %5 to i8*
  %19 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_dft_hw(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="5.0" %_V_data_V15, i4* noalias align 512 "unpacked"="5.1" %_V_keep_V26, i4* noalias align 512 "unpacked"="5.2" %_V_strb_V37, i1* noalias align 512 "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="10.0" %_V_data_V159, i4* noalias align 512 "unpacked"="10.1" %_V_keep_V2610, i4* noalias align 512 "unpacked"="10.2" %_V_strb_V3711, i1* noalias align 512 "unpacked"="10.3" %_V_last_V4812) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %0, i32* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %1, i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %2, i32* align 512 %_V_data_V15, i4* align 512 %_V_keep_V26, i4* align 512 %_V_strb_V37, i1* align 512 %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %3, i32* align 512 %_V_data_V159, i4* align 512 %_V_keep_V2610, i4* align 512 %_V_strb_V3711, i1* align 512 %_V_last_V4812)
  ret void
}

declare void @dft_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* noalias nonnull)

define void @dft_hw_stub_wrapper(i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*) #5 {
entry:
  %16 = call i8* @malloc(i64 12)
  %17 = bitcast i8* %16 to %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"*
  %18 = call i8* @malloc(i64 12)
  %19 = bitcast i8* %18 to %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"*
  %20 = call i8* @malloc(i64 12)
  %21 = bitcast i8* %20 to %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"*
  %22 = call i8* @malloc(i64 12)
  %23 = bitcast i8* %22 to %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"*
  call void @copy_out(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %17, i32* %0, i4* %1, i4* %2, i1* %3, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %19, i32* %4, i4* %5, i4* %6, i1* %7, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %21, i32* %8, i4* %9, i4* %10, i1* %11, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %23, i32* %12, i4* %13, i4* %14, i1* %15)
  call void @dft_hw_stub(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %17, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %19, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %21, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %23)
  call void @copy_in(%"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %17, i32* %0, i4* %1, i4* %2, i1* %3, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %19, i32* %4, i4* %5, i4* %6, i1* %7, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %21, i32* %8, i4* %9, i4* %10, i1* %11, %"class.hls::stream<hls::axis<float, 0, 0, 0, '8', false>, 0>"* %23, i32* %12, i4* %13, i4* %14, i1* %15)
  call void @free(i8* %16)
  call void @free(i8* %18)
  call void @free(i8* %20)
  call void @free(i8* %22)
  ret void
}

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
