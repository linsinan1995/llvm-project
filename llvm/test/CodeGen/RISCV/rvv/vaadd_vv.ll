; RUN: llc -mtriple=riscv64 -mattr=+experimental-v < %s | FileCheck -check-prefix=CHECK %s

; Function Attrs: noinline nounwind optnone
define <vscale x 1 x i8> @test_vaadd_vv_i8mf8(<vscale x 1 x i8> %op1, <vscale x 1 x i8> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i8mf8
; CHECK: vsetvli zero, zero, e8,mf8,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 1 x i8> @llvm.riscv.vaadd.vv.nxv1i8(<vscale x 1 x i8> %op1, <vscale x 1 x i8> %op2)
  ret <vscale x 1 x i8> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 2 x i8> @test_vaadd_vv_i8mf4(<vscale x 2 x i8> %op1, <vscale x 2 x i8> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i8mf4
; CHECK: vsetvli zero, zero, e8,mf4,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 2 x i8> @llvm.riscv.vaadd.vv.nxv2i8(<vscale x 2 x i8> %op1, <vscale x 2 x i8> %op2)
  ret <vscale x 2 x i8> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 4 x i8> @test_vaadd_vv_i8mf2(<vscale x 4 x i8> %op1, <vscale x 4 x i8> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i8mf2
; CHECK: vsetvli zero, zero, e8,mf2,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 4 x i8> @llvm.riscv.vaadd.vv.nxv4i8(<vscale x 4 x i8> %op1, <vscale x 4 x i8> %op2)
  ret <vscale x 4 x i8> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 8 x i8> @test_vaadd_vv_i8m1(<vscale x 8 x i8> %op1, <vscale x 8 x i8> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i8m1
; CHECK: vsetvli zero, zero, e8,m1,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 8 x i8> @llvm.riscv.vaadd.vv.nxv8i8(<vscale x 8 x i8> %op1, <vscale x 8 x i8> %op2)
  ret <vscale x 8 x i8> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 16 x i8> @test_vaadd_vv_i8m2(<vscale x 16 x i8> %op1, <vscale x 16 x i8> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i8m2
; CHECK: vsetvli zero, zero, e8,m2,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 16 x i8> @llvm.riscv.vaadd.vv.nxv16i8(<vscale x 16 x i8> %op1, <vscale x 16 x i8> %op2)
  ret <vscale x 16 x i8> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 32 x i8> @test_vaadd_vv_i8m4(<vscale x 32 x i8> %op1, <vscale x 32 x i8> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i8m4
; CHECK: vsetvli zero, zero, e8,m4,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 32 x i8> @llvm.riscv.vaadd.vv.nxv32i8(<vscale x 32 x i8> %op1, <vscale x 32 x i8> %op2)
  ret <vscale x 32 x i8> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 64 x i8> @test_vaadd_vv_i8m8(<vscale x 64 x i8> %op1, <vscale x 64 x i8> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i8m8
; CHECK: vsetvli zero, zero, e8,m8,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 64 x i8> @llvm.riscv.vaadd.vv.nxv64i8(<vscale x 64 x i8> %op1, <vscale x 64 x i8> %op2)
  ret <vscale x 64 x i8> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 1 x i16> @test_vaadd_vv_i16mf4(<vscale x 1 x i16> %op1, <vscale x 1 x i16> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i16mf4
; CHECK: vsetvli zero, zero, e16,mf4,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 1 x i16> @llvm.riscv.vaadd.vv.nxv1i16(<vscale x 1 x i16> %op1, <vscale x 1 x i16> %op2)
  ret <vscale x 1 x i16> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 2 x i16> @test_vaadd_vv_i16mf2(<vscale x 2 x i16> %op1, <vscale x 2 x i16> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i16mf2
; CHECK: vsetvli zero, zero, e16,mf2,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 2 x i16> @llvm.riscv.vaadd.vv.nxv2i16(<vscale x 2 x i16> %op1, <vscale x 2 x i16> %op2)
  ret <vscale x 2 x i16> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 4 x i16> @test_vaadd_vv_i16m1(<vscale x 4 x i16> %op1, <vscale x 4 x i16> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i16m1
; CHECK: vsetvli zero, zero, e16,m1,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 4 x i16> @llvm.riscv.vaadd.vv.nxv4i16(<vscale x 4 x i16> %op1, <vscale x 4 x i16> %op2)
  ret <vscale x 4 x i16> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 8 x i16> @test_vaadd_vv_i16m2(<vscale x 8 x i16> %op1, <vscale x 8 x i16> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i16m2
; CHECK: vsetvli zero, zero, e16,m2,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 8 x i16> @llvm.riscv.vaadd.vv.nxv8i16(<vscale x 8 x i16> %op1, <vscale x 8 x i16> %op2)
  ret <vscale x 8 x i16> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 16 x i16> @test_vaadd_vv_i16m4(<vscale x 16 x i16> %op1, <vscale x 16 x i16> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i16m4
; CHECK: vsetvli zero, zero, e16,m4,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 16 x i16> @llvm.riscv.vaadd.vv.nxv16i16(<vscale x 16 x i16> %op1, <vscale x 16 x i16> %op2)
  ret <vscale x 16 x i16> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 32 x i16> @test_vaadd_vv_i16m8(<vscale x 32 x i16> %op1, <vscale x 32 x i16> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i16m8
; CHECK: vsetvli zero, zero, e16,m8,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 32 x i16> @llvm.riscv.vaadd.vv.nxv32i16(<vscale x 32 x i16> %op1, <vscale x 32 x i16> %op2)
  ret <vscale x 32 x i16> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 1 x i32> @test_vaadd_vv_i32mf2(<vscale x 1 x i32> %op1, <vscale x 1 x i32> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i32mf2
; CHECK: vsetvli zero, zero, e32,mf2,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 1 x i32> @llvm.riscv.vaadd.vv.nxv1i32(<vscale x 1 x i32> %op1, <vscale x 1 x i32> %op2)
  ret <vscale x 1 x i32> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 2 x i32> @test_vaadd_vv_i32m1(<vscale x 2 x i32> %op1, <vscale x 2 x i32> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i32m1
; CHECK: vsetvli zero, zero, e32,m1,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 2 x i32> @llvm.riscv.vaadd.vv.nxv2i32(<vscale x 2 x i32> %op1, <vscale x 2 x i32> %op2)
  ret <vscale x 2 x i32> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 4 x i32> @test_vaadd_vv_i32m2(<vscale x 4 x i32> %op1, <vscale x 4 x i32> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i32m2
; CHECK: vsetvli zero, zero, e32,m2,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 4 x i32> @llvm.riscv.vaadd.vv.nxv4i32(<vscale x 4 x i32> %op1, <vscale x 4 x i32> %op2)
  ret <vscale x 4 x i32> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 8 x i32> @test_vaadd_vv_i32m4(<vscale x 8 x i32> %op1, <vscale x 8 x i32> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i32m4
; CHECK: vsetvli zero, zero, e32,m4,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 8 x i32> @llvm.riscv.vaadd.vv.nxv8i32(<vscale x 8 x i32> %op1, <vscale x 8 x i32> %op2)
  ret <vscale x 8 x i32> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 16 x i32> @test_vaadd_vv_i32m8(<vscale x 16 x i32> %op1, <vscale x 16 x i32> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i32m8
; CHECK: vsetvli zero, zero, e32,m8,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 16 x i32> @llvm.riscv.vaadd.vv.nxv16i32(<vscale x 16 x i32> %op1, <vscale x 16 x i32> %op2)
  ret <vscale x 16 x i32> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 1 x i64> @test_vaadd_vv_i64m1(<vscale x 1 x i64> %op1, <vscale x 1 x i64> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i64m1
; CHECK: vsetvli zero, zero, e64,m1,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 1 x i64> @llvm.riscv.vaadd.vv.nxv1i64(<vscale x 1 x i64> %op1, <vscale x 1 x i64> %op2)
  ret <vscale x 1 x i64> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 2 x i64> @test_vaadd_vv_i64m2(<vscale x 2 x i64> %op1, <vscale x 2 x i64> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i64m2
; CHECK: vsetvli zero, zero, e64,m2,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 2 x i64> @llvm.riscv.vaadd.vv.nxv2i64(<vscale x 2 x i64> %op1, <vscale x 2 x i64> %op2)
  ret <vscale x 2 x i64> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 4 x i64> @test_vaadd_vv_i64m4(<vscale x 4 x i64> %op1, <vscale x 4 x i64> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i64m4
; CHECK: vsetvli zero, zero, e64,m4,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 4 x i64> @llvm.riscv.vaadd.vv.nxv4i64(<vscale x 4 x i64> %op1, <vscale x 4 x i64> %op2)
  ret <vscale x 4 x i64> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 8 x i64> @test_vaadd_vv_i64m8(<vscale x 8 x i64> %op1, <vscale x 8 x i64> %op2) {
entry:
; CHECK-LABEL: vaadd_vv_i64m8
; CHECK: vsetvli zero, zero, e64,m8,tu,mu
; CHECK: vaadd.vv {{v[0-9]+}}, {{v[0-9]+}}, {{v[0-9]+}}
; CHECK: ret
  %call = tail call <vscale x 8 x i64> @llvm.riscv.vaadd.vv.nxv8i64(<vscale x 8 x i64> %op1, <vscale x 8 x i64> %op2)
  ret <vscale x 8 x i64> %call
}

; Function Attrs: nounwind
declare <vscale x 1 x i64> @llvm.riscv.vaadd.vv.nxv1i64(<vscale x 1 x i64>, <vscale x 1 x i64>)
; Function Attrs: nounwind
declare <vscale x 2 x i32> @llvm.riscv.vaadd.vv.nxv2i32(<vscale x 2 x i32>, <vscale x 2 x i32>)
; Function Attrs: nounwind
declare <vscale x 32 x i8> @llvm.riscv.vaadd.vv.nxv32i8(<vscale x 32 x i8>, <vscale x 32 x i8>)
; Function Attrs: nounwind
declare <vscale x 1 x i16> @llvm.riscv.vaadd.vv.nxv1i16(<vscale x 1 x i16>, <vscale x 1 x i16>)
; Function Attrs: nounwind
declare <vscale x 16 x i16> @llvm.riscv.vaadd.vv.nxv16i16(<vscale x 16 x i16>, <vscale x 16 x i16>)
; Function Attrs: nounwind
declare <vscale x 32 x i16> @llvm.riscv.vaadd.vv.nxv32i16(<vscale x 32 x i16>, <vscale x 32 x i16>)
; Function Attrs: nounwind
declare <vscale x 16 x i32> @llvm.riscv.vaadd.vv.nxv16i32(<vscale x 16 x i32>, <vscale x 16 x i32>)
; Function Attrs: nounwind
declare <vscale x 8 x i64> @llvm.riscv.vaadd.vv.nxv8i64(<vscale x 8 x i64>, <vscale x 8 x i64>)
; Function Attrs: nounwind
declare <vscale x 2 x i8> @llvm.riscv.vaadd.vv.nxv2i8(<vscale x 2 x i8>, <vscale x 2 x i8>)
; Function Attrs: nounwind
declare <vscale x 1 x i8> @llvm.riscv.vaadd.vv.nxv1i8(<vscale x 1 x i8>, <vscale x 1 x i8>)
; Function Attrs: nounwind
declare <vscale x 4 x i32> @llvm.riscv.vaadd.vv.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i32>)
; Function Attrs: nounwind
declare <vscale x 16 x i8> @llvm.riscv.vaadd.vv.nxv16i8(<vscale x 16 x i8>, <vscale x 16 x i8>)
; Function Attrs: nounwind
declare <vscale x 4 x i64> @llvm.riscv.vaadd.vv.nxv4i64(<vscale x 4 x i64>, <vscale x 4 x i64>)
; Function Attrs: nounwind
declare <vscale x 4 x i16> @llvm.riscv.vaadd.vv.nxv4i16(<vscale x 4 x i16>, <vscale x 4 x i16>)
; Function Attrs: nounwind
declare <vscale x 8 x i16> @llvm.riscv.vaadd.vv.nxv8i16(<vscale x 8 x i16>, <vscale x 8 x i16>)
; Function Attrs: nounwind
declare <vscale x 1 x i32> @llvm.riscv.vaadd.vv.nxv1i32(<vscale x 1 x i32>, <vscale x 1 x i32>)
; Function Attrs: nounwind
declare <vscale x 8 x i32> @llvm.riscv.vaadd.vv.nxv8i32(<vscale x 8 x i32>, <vscale x 8 x i32>)
; Function Attrs: nounwind
declare <vscale x 2 x i16> @llvm.riscv.vaadd.vv.nxv2i16(<vscale x 2 x i16>, <vscale x 2 x i16>)
; Function Attrs: nounwind
declare <vscale x 8 x i8> @llvm.riscv.vaadd.vv.nxv8i8(<vscale x 8 x i8>, <vscale x 8 x i8>)
; Function Attrs: nounwind
declare <vscale x 2 x i64> @llvm.riscv.vaadd.vv.nxv2i64(<vscale x 2 x i64>, <vscale x 2 x i64>)
; Function Attrs: nounwind
declare <vscale x 4 x i8> @llvm.riscv.vaadd.vv.nxv4i8(<vscale x 4 x i8>, <vscale x 4 x i8>)
; Function Attrs: nounwind
declare <vscale x 64 x i8> @llvm.riscv.vaadd.vv.nxv64i8(<vscale x 64 x i8>, <vscale x 64 x i8>)
