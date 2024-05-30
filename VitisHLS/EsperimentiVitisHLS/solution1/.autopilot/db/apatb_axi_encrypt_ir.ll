; ModuleID = 'C:/Users/lguer/AppData/Roaming/Xilinx/Vitis/VitisHLS/AsconOptimizedHLS/EsperimentiVitisHLS/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define i32 @apatb_axi_encrypt_ir(i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4" "maxi" %c, i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "maxi" %m, i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "maxi" %ad, i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "maxi" %nsec, i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "maxi" %npub, i64* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2" "maxi" %k) local_unnamed_addr #0 {
entry:
  %c_copy = alloca [4 x i64], align 512
  %m_copy = alloca [2 x i64], align 512
  %ad_copy = alloca [2 x i64], align 512
  %nsec_copy = alloca [2 x i64], align 512
  %npub_copy = alloca [2 x i64], align 512
  %k_copy = alloca [2 x i64], align 512
  %0 = bitcast i64* %c to [4 x i64]*
  %1 = bitcast i64* %m to [2 x i64]*
  %2 = bitcast i64* %ad to [2 x i64]*
  %3 = bitcast i64* %nsec to [2 x i64]*
  %4 = bitcast i64* %npub to [2 x i64]*
  %5 = bitcast i64* %k to [2 x i64]*
  call fastcc void @copy_in([4 x i64]* nonnull %0, [4 x i64]* nonnull align 512 %c_copy, [2 x i64]* nonnull %1, [2 x i64]* nonnull align 512 %m_copy, [2 x i64]* nonnull %2, [2 x i64]* nonnull align 512 %ad_copy, [2 x i64]* nonnull %3, [2 x i64]* nonnull align 512 %nsec_copy, [2 x i64]* nonnull %4, [2 x i64]* nonnull align 512 %npub_copy, [2 x i64]* nonnull %5, [2 x i64]* nonnull align 512 %k_copy)
  %6 = call i32 @apatb_axi_encrypt_hw([4 x i64]* %c_copy, [2 x i64]* %m_copy, [2 x i64]* %ad_copy, [2 x i64]* %nsec_copy, [2 x i64]* %npub_copy, [2 x i64]* %k_copy)
  call void @copy_back([4 x i64]* %0, [4 x i64]* %c_copy, [2 x i64]* %1, [2 x i64]* %m_copy, [2 x i64]* %2, [2 x i64]* %ad_copy, [2 x i64]* %3, [2 x i64]* %nsec_copy, [2 x i64]* %4, [2 x i64]* %npub_copy, [2 x i64]* %5, [2 x i64]* %k_copy)
  ret i32 %6
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([4 x i64]* noalias readonly, [4 x i64]* noalias align 512, [2 x i64]* noalias readonly, [2 x i64]* noalias align 512, [2 x i64]* noalias readonly, [2 x i64]* noalias align 512, [2 x i64]* noalias readonly, [2 x i64]* noalias align 512, [2 x i64]* noalias readonly, [2 x i64]* noalias align 512, [2 x i64]* noalias readonly, [2 x i64]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4i64([4 x i64]* align 512 %1, [4 x i64]* %0)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* align 512 %3, [2 x i64]* %2)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* align 512 %5, [2 x i64]* %4)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* align 512 %7, [2 x i64]* %6)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* align 512 %9, [2 x i64]* %8)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* align 512 %11, [2 x i64]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a4i64([4 x i64]* noalias align 512 %dst, [4 x i64]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4 x i64]* %dst, null
  %1 = icmp eq [4 x i64]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4i64([4 x i64]* nonnull %dst, [4 x i64]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4i64([4 x i64]* %dst, [4 x i64]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4 x i64]* %src, null
  %1 = icmp eq [4 x i64]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x i64], [4 x i64]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4 x i64], [4 x i64]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i64, i64* %src.addr, align 8
  store i64 %3, i64* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* noalias align 512 %dst, [2 x i64]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2 x i64]* %dst, null
  %1 = icmp eq [2 x i64]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2i64([2 x i64]* nonnull %dst, [2 x i64]* nonnull %src, i64 2)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2i64([2 x i64]* %dst, [2 x i64]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2 x i64]* %src, null
  %1 = icmp eq [2 x i64]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2 x i64], [2 x i64]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2 x i64], [2 x i64]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i64, i64* %src.addr, align 8
  store i64 %3, i64* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([4 x i64]* noalias, [4 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4i64([4 x i64]* %0, [4 x i64]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* %2, [2 x i64]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* %4, [2 x i64]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* %6, [2 x i64]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* %8, [2 x i64]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a2i64([2 x i64]* %10, [2 x i64]* align 512 %11)
  ret void
}

declare i32 @apatb_axi_encrypt_hw([4 x i64]*, [2 x i64]*, [2 x i64]*, [2 x i64]*, [2 x i64]*, [2 x i64]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([4 x i64]* noalias, [4 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512, [2 x i64]* noalias, [2 x i64]* noalias readonly align 512) unnamed_addr #4 {
entry:
  ret void
}

define i32 @axi_encrypt_hw_stub_wrapper([4 x i64]*, [2 x i64]*, [2 x i64]*, [2 x i64]*, [2 x i64]*, [2 x i64]*) #5 {
entry:
  call void @copy_out([4 x i64]* null, [4 x i64]* %0, [2 x i64]* null, [2 x i64]* %1, [2 x i64]* null, [2 x i64]* %2, [2 x i64]* null, [2 x i64]* %3, [2 x i64]* null, [2 x i64]* %4, [2 x i64]* null, [2 x i64]* %5)
  %6 = bitcast [4 x i64]* %0 to i64*
  %7 = bitcast [2 x i64]* %1 to i64*
  %8 = bitcast [2 x i64]* %2 to i64*
  %9 = bitcast [2 x i64]* %3 to i64*
  %10 = bitcast [2 x i64]* %4 to i64*
  %11 = bitcast [2 x i64]* %5 to i64*
  %12 = call i32 @axi_encrypt_hw_stub(i64* %6, i64* %7, i64* %8, i64* %9, i64* %10, i64* %11)
  call void @copy_in([4 x i64]* null, [4 x i64]* %0, [2 x i64]* null, [2 x i64]* %1, [2 x i64]* null, [2 x i64]* %2, [2 x i64]* null, [2 x i64]* %3, [2 x i64]* null, [2 x i64]* %4, [2 x i64]* null, [2 x i64]* %5)
  ret i32 %12
}

declare i32 @axi_encrypt_hw_stub(i64*, i64*, i64*, i64*, i64*, i64*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
