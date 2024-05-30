// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xaxi_encrypt.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAxi_encrypt_CfgInitialize(XAxi_encrypt *InstancePtr, XAxi_encrypt_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAxi_encrypt_Start(XAxi_encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAxi_encrypt_IsDone(XAxi_encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAxi_encrypt_IsIdle(XAxi_encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAxi_encrypt_IsReady(XAxi_encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAxi_encrypt_EnableAutoRestart(XAxi_encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAxi_encrypt_DisableAutoRestart(XAxi_encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XAxi_encrypt_Get_return(XAxi_encrypt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XAxi_encrypt_Set_c(XAxi_encrypt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_C_DATA, (u32)(Data));
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_C_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi_encrypt_Get_c(XAxi_encrypt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_C_DATA);
    Data += (u64)XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_C_DATA + 4) << 32;
    return Data;
}

void XAxi_encrypt_Set_m(XAxi_encrypt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_M_DATA, (u32)(Data));
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_M_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi_encrypt_Get_m(XAxi_encrypt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_M_DATA);
    Data += (u64)XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_M_DATA + 4) << 32;
    return Data;
}

void XAxi_encrypt_Set_ad(XAxi_encrypt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AD_DATA, (u32)(Data));
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AD_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi_encrypt_Get_ad(XAxi_encrypt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AD_DATA);
    Data += (u64)XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_AD_DATA + 4) << 32;
    return Data;
}

void XAxi_encrypt_Set_nsec(XAxi_encrypt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NSEC_DATA, (u32)(Data));
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NSEC_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi_encrypt_Get_nsec(XAxi_encrypt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NSEC_DATA);
    Data += (u64)XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NSEC_DATA + 4) << 32;
    return Data;
}

void XAxi_encrypt_Set_npub(XAxi_encrypt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NPUB_DATA, (u32)(Data));
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NPUB_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi_encrypt_Get_npub(XAxi_encrypt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NPUB_DATA);
    Data += (u64)XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_NPUB_DATA + 4) << 32;
    return Data;
}

void XAxi_encrypt_Set_k(XAxi_encrypt *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_K_DATA, (u32)(Data));
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_K_DATA + 4, (u32)(Data >> 32));
}

u64 XAxi_encrypt_Get_k(XAxi_encrypt *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_K_DATA);
    Data += (u64)XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_K_DATA + 4) << 32;
    return Data;
}

void XAxi_encrypt_InterruptGlobalEnable(XAxi_encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_GIE, 1);
}

void XAxi_encrypt_InterruptGlobalDisable(XAxi_encrypt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_GIE, 0);
}

void XAxi_encrypt_InterruptEnable(XAxi_encrypt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_IER);
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_IER, Register | Mask);
}

void XAxi_encrypt_InterruptDisable(XAxi_encrypt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_IER);
    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAxi_encrypt_InterruptClear(XAxi_encrypt *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAxi_encrypt_WriteReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_ISR, Mask);
}

u32 XAxi_encrypt_InterruptGetEnabled(XAxi_encrypt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_IER);
}

u32 XAxi_encrypt_InterruptGetStatus(XAxi_encrypt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAxi_encrypt_ReadReg(InstancePtr->Control_BaseAddress, XAXI_ENCRYPT_CONTROL_ADDR_ISR);
}

