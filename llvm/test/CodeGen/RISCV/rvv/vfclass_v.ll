; RUN: llc -mtriple=riscv64 -mattr=+experimental-v < %s | FileCheck -check-prefix=CHECK %s

; Function Attrs: noinline nounwind optnone
define <vscale x 1 x half> @test_vfclass_v_f16mf4(<vscale x 1 x half> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f16mf4
; CHECK: vsetvli zero, zero, e16,mf4,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 1 x half> @llvm.riscv.vfclass.v.nxv1f16.nxv1f16(<vscale x 1 x half> %op1)
  ret <vscale x 1 x half> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 2 x half> @test_vfclass_v_f16mf2(<vscale x 2 x half> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f16mf2
; CHECK: vsetvli zero, zero, e16,mf2,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 2 x half> @llvm.riscv.vfclass.v.nxv2f16.nxv2f16(<vscale x 2 x half> %op1)
  ret <vscale x 2 x half> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 4 x half> @test_vfclass_v_f16m1(<vscale x 4 x half> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f16m1
; CHECK: vsetvli zero, zero, e16,m1,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 4 x half> @llvm.riscv.vfclass.v.nxv4f16.nxv4f16(<vscale x 4 x half> %op1)
  ret <vscale x 4 x half> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 8 x half> @test_vfclass_v_f16m2(<vscale x 8 x half> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f16m2
; CHECK: vsetvli zero, zero, e16,m2,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 8 x half> @llvm.riscv.vfclass.v.nxv8f16.nxv8f16(<vscale x 8 x half> %op1)
  ret <vscale x 8 x half> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 16 x half> @test_vfclass_v_f16m4(<vscale x 16 x half> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f16m4
; CHECK: vsetvli zero, zero, e16,m4,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 16 x half> @llvm.riscv.vfclass.v.nxv16f16.nxv16f16(<vscale x 16 x half> %op1)
  ret <vscale x 16 x half> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 32 x half> @test_vfclass_v_f16m8(<vscale x 32 x half> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f16m8
; CHECK: vsetvli zero, zero, e16,m8,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 32 x half> @llvm.riscv.vfclass.v.nxv32f16.nxv32f16(<vscale x 32 x half> %op1)
  ret <vscale x 32 x half> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 1 x float> @test_vfclass_v_f32mf2(<vscale x 1 x float> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f32mf2
; CHECK: vsetvli zero, zero, e32,mf2,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 1 x float> @llvm.riscv.vfclass.v.nxv1f32.nxv1f32(<vscale x 1 x float> %op1)
  ret <vscale x 1 x float> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 2 x float> @test_vfclass_v_f32m1(<vscale x 2 x float> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f32m1
; CHECK: vsetvli zero, zero, e32,m1,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 2 x float> @llvm.riscv.vfclass.v.nxv2f32.nxv2f32(<vscale x 2 x float> %op1)
  ret <vscale x 2 x float> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 4 x float> @test_vfclass_v_f32m2(<vscale x 4 x float> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f32m2
; CHECK: vsetvli zero, zero, e32,m2,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 4 x float> @llvm.riscv.vfclass.v.nxv4f32.nxv4f32(<vscale x 4 x float> %op1)
  ret <vscale x 4 x float> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 8 x float> @test_vfclass_v_f32m4(<vscale x 8 x float> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f32m4
; CHECK: vsetvli zero, zero, e32,m4,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 8 x float> @llvm.riscv.vfclass.v.nxv8f32.nxv8f32(<vscale x 8 x float> %op1)
  ret <vscale x 8 x float> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 16 x float> @test_vfclass_v_f32m8(<vscale x 16 x float> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f32m8
; CHECK: vsetvli zero, zero, e32,m8,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 16 x float> @llvm.riscv.vfclass.v.nxv16f32.nxv16f32(<vscale x 16 x float> %op1)
  ret <vscale x 16 x float> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 1 x double> @test_vfclass_v_f64m1(<vscale x 1 x double> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f64m1
; CHECK: vsetvli zero, zero, e64,m1,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 1 x double> @llvm.riscv.vfclass.v.nxv1f64.nxv1f64(<vscale x 1 x double> %op1)
  ret <vscale x 1 x double> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 2 x double> @test_vfclass_v_f64m2(<vscale x 2 x double> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f64m2
; CHECK: vsetvli zero, zero, e64,m2,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 2 x double> @llvm.riscv.vfclass.v.nxv2f64.nxv2f64(<vscale x 2 x double> %op1)
  ret <vscale x 2 x double> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 4 x double> @test_vfclass_v_f64m4(<vscale x 4 x double> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f64m4
; CHECK: vsetvli zero, zero, e64,m4,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 4 x double> @llvm.riscv.vfclass.v.nxv4f64.nxv4f64(<vscale x 4 x double> %op1)
  ret <vscale x 4 x double> %call
}

; Function Attrs: noinline nounwind optnone
define <vscale x 8 x double> @test_vfclass_v_f64m8(<vscale x 8 x double> %op1) {
entry:
; CHECK-LABEL: vfclass_v_f64m8
; CHECK: vsetvli zero, zero, e64,m8,tu,mu
; CHECK: vfclass.v {{v[0-9]+}}, {{v[0-9]+}}
  %call = tail call <vscale x 8 x double> @llvm.riscv.vfclass.v.nxv8f64.nxv8f64(<vscale x 8 x double> %op1)
  ret <vscale x 8 x double> %call
}

; Function Attrs: nounwind
declare <vscale x 4 x half> @llvm.riscv.vfclass.v.nxv4f16.nxv4f16(<vscale x 4 x half>)
; Function Attrs: nounwind
declare <vscale x 2 x float> @llvm.riscv.vfclass.v.nxv2f32.nxv2f32(<vscale x 2 x float>)
; Function Attrs: nounwind
declare <vscale x 1 x half> @llvm.riscv.vfclass.v.nxv1f16.nxv1f16(<vscale x 1 x half>)
; Function Attrs: nounwind
declare <vscale x 2 x half> @llvm.riscv.vfclass.v.nxv2f16.nxv2f16(<vscale x 2 x half>)
; Function Attrs: nounwind
declare <vscale x 1 x float> @llvm.riscv.vfclass.v.nxv1f32.nxv1f32(<vscale x 1 x float>)
; Function Attrs: nounwind
declare <vscale x 8 x double> @llvm.riscv.vfclass.v.nxv8f64.nxv8f64(<vscale x 8 x double>)
; Function Attrs: nounwind
declare <vscale x 8 x float> @llvm.riscv.vfclass.v.nxv8f32.nxv8f32(<vscale x 8 x float>)
; Function Attrs: nounwind
declare <vscale x 4 x float> @llvm.riscv.vfclass.v.nxv4f32.nxv4f32(<vscale x 4 x float>)
; Function Attrs: nounwind
declare <vscale x 4 x double> @llvm.riscv.vfclass.v.nxv4f64.nxv4f64(<vscale x 4 x double>)
; Function Attrs: nounwind
declare <vscale x 32 x half> @llvm.riscv.vfclass.v.nxv32f16.nxv32f16(<vscale x 32 x half>)
; Function Attrs: nounwind
declare <vscale x 16 x half> @llvm.riscv.vfclass.v.nxv16f16.nxv16f16(<vscale x 16 x half>)
; Function Attrs: nounwind
declare <vscale x 2 x double> @llvm.riscv.vfclass.v.nxv2f64.nxv2f64(<vscale x 2 x double>)
; Function Attrs: nounwind
declare <vscale x 8 x half> @llvm.riscv.vfclass.v.nxv8f16.nxv8f16(<vscale x 8 x half>)
; Function Attrs: nounwind
declare <vscale x 16 x float> @llvm.riscv.vfclass.v.nxv16f32.nxv16f32(<vscale x 16 x float>)
; Function Attrs: nounwind
declare <vscale x 1 x double> @llvm.riscv.vfclass.v.nxv1f64.nxv1f64(<vscale x 1 x double>)
