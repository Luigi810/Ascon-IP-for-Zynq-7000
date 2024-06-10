// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XAXI_ENCRYPT_H
#define XAXI_ENCRYPT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaxi_encrypt_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XAxi_encrypt_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAxi_encrypt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAxi_encrypt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAxi_encrypt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAxi_encrypt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAxi_encrypt_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XAxi_encrypt_Initialize(XAxi_encrypt *InstancePtr, UINTPTR BaseAddress);
XAxi_encrypt_Config* XAxi_encrypt_LookupConfig(UINTPTR BaseAddress);
#else
int XAxi_encrypt_Initialize(XAxi_encrypt *InstancePtr, u16 DeviceId);
XAxi_encrypt_Config* XAxi_encrypt_LookupConfig(u16 DeviceId);
#endif
int XAxi_encrypt_CfgInitialize(XAxi_encrypt *InstancePtr, XAxi_encrypt_Config *ConfigPtr);
#else
int XAxi_encrypt_Initialize(XAxi_encrypt *InstancePtr, const char* InstanceName);
int XAxi_encrypt_Release(XAxi_encrypt *InstancePtr);
#endif

void XAxi_encrypt_Start(XAxi_encrypt *InstancePtr);
u32 XAxi_encrypt_IsDone(XAxi_encrypt *InstancePtr);
u32 XAxi_encrypt_IsIdle(XAxi_encrypt *InstancePtr);
u32 XAxi_encrypt_IsReady(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_EnableAutoRestart(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_DisableAutoRestart(XAxi_encrypt *InstancePtr);
u32 XAxi_encrypt_Get_return(XAxi_encrypt *InstancePtr);

void XAxi_encrypt_Set_c(XAxi_encrypt *InstancePtr, u64 Data);
u64 XAxi_encrypt_Get_c(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_Set_m(XAxi_encrypt *InstancePtr, u64 Data);
u64 XAxi_encrypt_Get_m(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_Set_ad(XAxi_encrypt *InstancePtr, u64 Data);
u64 XAxi_encrypt_Get_ad(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_Set_nsec(XAxi_encrypt *InstancePtr, u64 Data);
u64 XAxi_encrypt_Get_nsec(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_Set_npub(XAxi_encrypt *InstancePtr, u64 Data);
u64 XAxi_encrypt_Get_npub(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_Set_k(XAxi_encrypt *InstancePtr, u64 Data);
u64 XAxi_encrypt_Get_k(XAxi_encrypt *InstancePtr);

void XAxi_encrypt_InterruptGlobalEnable(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_InterruptGlobalDisable(XAxi_encrypt *InstancePtr);
void XAxi_encrypt_InterruptEnable(XAxi_encrypt *InstancePtr, u32 Mask);
void XAxi_encrypt_InterruptDisable(XAxi_encrypt *InstancePtr, u32 Mask);
void XAxi_encrypt_InterruptClear(XAxi_encrypt *InstancePtr, u32 Mask);
u32 XAxi_encrypt_InterruptGetEnabled(XAxi_encrypt *InstancePtr);
u32 XAxi_encrypt_InterruptGetStatus(XAxi_encrypt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
