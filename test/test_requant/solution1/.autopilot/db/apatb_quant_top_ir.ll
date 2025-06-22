; ModuleID = 'F:/master_MLsys/USTC_spring/EDA/Project/HG-PIPE/test/test_requant/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream" = type { %"class.hls::vector" }
%"class.hls::vector" = type { %"struct.std::array" }
%"struct.std::array" = type { [4 x i8] }

; Function Attrs: noinline
define void @apatb_quant_top_ir(%"class.hls::stream"* %i_stream, %"class.hls::stream"* %o_stream, i32* %scalars, i32* %table) local_unnamed_addr #0 {
entry:
  %i_stream_copy = alloca %"class.hls::stream", align 512
  %o_stream_copy = alloca %"class.hls::stream", align 512
  %scalars_copy = alloca i32, align 512
  %table_copy = alloca i32, align 512
  call fastcc void @copy_in(%"class.hls::stream"* %i_stream, %"class.hls::stream"* nonnull align 512 %i_stream_copy, %"class.hls::stream"* %o_stream, %"class.hls::stream"* nonnull align 512 %o_stream_copy, i32* %scalars, i32* nonnull align 512 %scalars_copy, i32* %table, i32* nonnull align 512 %table_copy)
  call void @apatb_quant_top_hw(%"class.hls::stream"* %i_stream_copy, %"class.hls::stream"* %o_stream_copy, i32* %scalars_copy, i32* %table_copy)
  call fastcc void @copy_out(%"class.hls::stream"* %i_stream, %"class.hls::stream"* nonnull align 512 %i_stream_copy, %"class.hls::stream"* %o_stream, %"class.hls::stream"* nonnull align 512 %o_stream_copy, i32* %scalars, i32* nonnull align 512 %scalars_copy, i32* %table, i32* nonnull align 512 %table_copy)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %1, %"class.hls::stream"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %3, %"class.hls::stream"* %2)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %5, i32* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias align 512, %"class.hls::stream"* noalias) unnamed_addr #2 {
entry:
  %2 = icmp eq %"class.hls::stream"* %0, null
  %3 = icmp eq %"class.hls::stream"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* nonnull align 512 %0, %"class.hls::stream"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0
  %.01 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @"streamcpy_hls.p0class.hls::vector"(%"class.hls::vector"* align 512 %.01, %"class.hls::vector"* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @"streamcpy_hls.p0struct.std::array"(%"struct.std::array"* align 512 %.01.03, %"struct.std::array"* %.0.02)
  br label %ret

; <label>:14:                                     ; preds = %11
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %14
  %for.loop.idx8 = phi i64 [ 0, %14 ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr6 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0, i64 %for.loop.idx8
  %src.addr7 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0, i64 %for.loop.idx8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr6, i8* align 1 %src.addr7, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %13, %10, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias nocapture align 512, %"class.hls::stream"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  %8 = bitcast %"class.hls::stream"* %2 to i8*
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::vector"(%"class.hls::vector"* noalias nocapture align 512, %"class.hls::vector"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"class.hls::vector"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::vector"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::vector"* %2 to i8*
  %6 = bitcast %"class.hls::vector"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::vector", %"class.hls::vector"* %2
  %8 = bitcast %"class.hls::vector"* %2 to i8*
  %9 = bitcast %"class.hls::vector"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.hls::vector", %"class.hls::vector"* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"class.hls::vector", %"class.hls::vector"* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.std::array"(%"struct.std::array"* noalias nocapture align 512, %"struct.std::array"* noalias nocapture) unnamed_addr #3 {
entry:
  %2 = alloca %"struct.std::array"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"struct.std::array"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"struct.std::array"* %2 to i8*
  %6 = bitcast %"struct.std::array"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"struct.std::array", %"struct.std::array"* %2
  %8 = bitcast %"struct.std::array"* %2 to i8*
  %9 = bitcast %"struct.std::array"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"struct.std::array", %"struct.std::array"* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::array", %"struct.std::array"* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i32* %0 to i8*
  %6 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream"*, %"class.hls::stream"* noalias align 512, %"class.hls::stream"*, %"class.hls::stream"* noalias align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %0, %"class.hls::stream"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %2, %"class.hls::stream"* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %4, i32* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  ret void
}

declare void @apatb_quant_top_hw(%"class.hls::stream"*, %"class.hls::stream"*, i32*, i32*)

define void @quant_top_hw_stub_wrapper(%"class.hls::stream"*, %"class.hls::stream"*, i32*, i32*) #7 {
entry:
  call void @copy_out(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream"* null, %"class.hls::stream"* %1, i32* null, i32* %2, i32* null, i32* %3)
  call void @quant_top_hw_stub(%"class.hls::stream"* %0, %"class.hls::stream"* %1, i32* %2, i32* %3)
  call void @copy_in(%"class.hls::stream"* null, %"class.hls::stream"* %0, %"class.hls::stream"* null, %"class.hls::stream"* %1, i32* null, i32* %2, i32* null, i32* %3)
  ret void
}

declare void @quant_top_hw_stub(%"class.hls::stream"*, %"class.hls::stream"*, i32*, i32*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
