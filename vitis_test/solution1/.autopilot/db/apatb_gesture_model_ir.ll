; ModuleID = '/home/prince/vitis_test/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_gesture_model_ir(%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="120" %input, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="20" %output) local_unnamed_addr #0 {
entry:
  %input_copy = alloca [120 x i16], align 512
  %output_copy = alloca [20 x i16], align 512
  %0 = bitcast %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %input to [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %output to [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [120 x i16]* nonnull align 512 %input_copy, [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [20 x i16]* nonnull align 512 %output_copy)
  %2 = getelementptr [120 x i16], [120 x i16]* %input_copy, i32 0, i32 0
  %3 = getelementptr [20 x i16], [20 x i16]* %output_copy, i32 0, i32 0
  call void @apatb_gesture_model_hw(i16* %2, i16* %3)
  call void @copy_back([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, [120 x i16]* %input_copy, [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, [20 x i16]* %output_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [120 x i16]* noalias nocapture align 512 "unpacked"="1.0.0.0", [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="2", [20 x i16]* noalias nocapture align 512 "unpacked"="3.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.178"([120 x i16]* align 512 %1, [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([20 x i16]* align 512 %3, [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [120 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [20 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, [120 x i16]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.152"([20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %2, [20 x i16]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.152"([20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [20 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [20 x i16], [20 x i16]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a20struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([20 x i16]* noalias nocapture align 512 "unpacked"="0.0.0.0", [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [20 x i16], [20 x i16]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.178"([120 x i16]* noalias nocapture align 512 "unpacked"="0.0.0.0", [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [120 x i16], [120 x i16]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 120
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a120struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [120 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [120 x i16], [120 x i16]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 120
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_gesture_model_hw(i16*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [120 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [20 x i16]* noalias nocapture readonly align 512 "unpacked"="3.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a20struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.152"([20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %2, [20 x i16]* align 512 %3)
  ret void
}

define void @gesture_model_hw_stub_wrapper(i16*, i16*) #4 {
entry:
  %2 = alloca [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]
  %3 = alloca [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]
  %4 = bitcast i16* %0 to [120 x i16]*
  %5 = bitcast i16* %1 to [20 x i16]*
  call void @copy_out([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %2, [120 x i16]* %4, [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %3, [20 x i16]* %5)
  %6 = bitcast [120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %2 to %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*
  %7 = bitcast [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*
  call void @gesture_model_hw_stub(%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %6, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %7)
  call void @copy_in([120 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %2, [120 x i16]* %4, [20 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %3, [20 x i16]* %5)
  ret void
}

declare void @gesture_model_hw_stub(%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
