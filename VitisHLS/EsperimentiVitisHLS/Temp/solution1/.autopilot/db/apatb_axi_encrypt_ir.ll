; ModuleID = 'C:/Users/lguer/AppData/Roaming/Xilinx/Vitis/AsconOptimizedHLS/EsperimentiVitisHLS/Temp/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define i32 @apatb_axi_encrypt_ir(i8* noalias nocapture nonnull "fpga.decayed.dim.hint"="32" "maxi" %c, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "maxi" %m, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "maxi" %ad, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "maxi" %nsec, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "maxi" %npub, i8* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "maxi" %k) local_unnamed_addr #0 {
entry:
  %c_copy = alloca [32 x i8], align 512
  %m_copy = alloca [16 x i8], align 512
  %ad_copy = alloca [16 x i8], align 512
  %nsec_copy = alloca [16 x i8], align 512
  %npub_copy = alloca [16 x i8], align 512
  %k_copy = alloca [16 x i8], align 512
  %0 = bitcast i8* %c to [32 x i8]*
  %1 = bitcast i8* %m to [16 x i8]*
  %2 = bitcast i8* %ad to [16 x i8]*
  %3 = bitcast i8* %nsec to [16 x i8]*
  %4 = bitcast i8* %npub to [16 x i8]*
  %5 = bitcast i8* %k to [16 x i8]*
  call fastcc void @copy_in([32 x i8]* nonnull %0, [32 x i8]* nonnull align 512 %c_copy, [16 x i8]* nonnull %1, [16 x i8]* nonnull align 512 %m_copy, [16 x i8]* nonnull %2, [16 x i8]* nonnull align 512 %ad_copy, [16 x i8]* nonnull %3, [16 x i8]* nonnull align 512 %nsec_copy, [16 x i8]* nonnull %4, [16 x i8]* nonnull align 512 %npub_copy, [16 x i8]* nonnull %5, [16 x i8]* nonnull align 512 %k_copy)
  %6 = call i32 @apatb_axi_encrypt_hw([32 x i8]* %c_copy, [16 x i8]* %m_copy, [16 x i8]* %ad_copy, [16 x i8]* %nsec_copy, [16 x i8]* %npub_copy, [16 x i8]* %k_copy)
  call void @copy_back([32 x i8]* %0, [32 x i8]* %c_copy, [16 x i8]* %1, [16 x i8]* %m_copy, [16 x i8]* %2, [16 x i8]* %ad_copy, [16 x i8]* %3, [16 x i8]* %nsec_copy, [16 x i8]* %4, [16 x i8]* %npub_copy, [16 x i8]* %5, [16 x i8]* %k_copy)
  ret i32 %6
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([32 x i8]* noalias readonly, [32 x i8]* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512, [16 x i8]* noalias readonly, [16 x i8]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i8([32 x i8]* align 512 %1, [32 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %3, [16 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %5, [16 x i8]* %4)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %7, [16 x i8]* %6)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %9, [16 x i8]* %8)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* align 512 %11, [16 x i8]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a32i8([32 x i8]* noalias align 512 %dst, [32 x i8]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [32 x i8]* %dst, null
  %1 = icmp eq [32 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a32i8([32 x i8]* nonnull %dst, [32 x i8]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a32i8([32 x i8]* %dst, [32 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [32 x i8]* %src, null
  %1 = icmp eq [32 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [32 x i8], [32 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [32 x i8], [32 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* noalias align 512 %dst, [16 x i8]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x i8]* %dst, null
  %1 = icmp eq [16 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16i8([16 x i8]* nonnull %dst, [16 x i8]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i8([16 x i8]* %dst, [16 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x i8]* %src, null
  %1 = icmp eq [16 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i8], [16 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x i8], [16 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([32 x i8]* noalias, [32 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i8([32 x i8]* %0, [32 x i8]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %2, [16 x i8]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %4, [16 x i8]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %6, [16 x i8]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %8, [16 x i8]* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0a16i8([16 x i8]* %10, [16 x i8]* align 512 %11)
  ret void
}

declare i32 @apatb_axi_encrypt_hw([32 x i8]*, [16 x i8]*, [16 x i8]*, [16 x i8]*, [16 x i8]*, [16 x i8]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([32 x i8]* noalias, [32 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512, [16 x i8]* noalias, [16 x i8]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a32i8([32 x i8]* %0, [32 x i8]* align 512 %1)
  ret void
}

define i32 @axi_encrypt_hw_stub_wrapper([32 x i8]*, [16 x i8]*, [16 x i8]*, [16 x i8]*, [16 x i8]*, [16 x i8]*) #5 {
entry:
  call void @copy_out([32 x i8]* null, [32 x i8]* %0, [16 x i8]* null, [16 x i8]* %1, [16 x i8]* null, [16 x i8]* %2, [16 x i8]* null, [16 x i8]* %3, [16 x i8]* null, [16 x i8]* %4, [16 x i8]* null, [16 x i8]* %5)
  %6 = bitcast [32 x i8]* %0 to i8*
  %7 = bitcast [16 x i8]* %1 to i8*
  %8 = bitcast [16 x i8]* %2 to i8*
  %9 = bitcast [16 x i8]* %3 to i8*
  %10 = bitcast [16 x i8]* %4 to i8*
  %11 = bitcast [16 x i8]* %5 to i8*
  %12 = call i32 @axi_encrypt_hw_stub(i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11)
  call void @copy_in([32 x i8]* null, [32 x i8]* %0, [16 x i8]* null, [16 x i8]* %1, [16 x i8]* null, [16 x i8]* %2, [16 x i8]* null, [16 x i8]* %3, [16 x i8]* null, [16 x i8]* %4, [16 x i8]* null, [16 x i8]* %5)
  ret i32 %12
}

declare i32 @axi_encrypt_hw_stub(i8*, i8*, i8*, i8*, i8*, i8*)

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
