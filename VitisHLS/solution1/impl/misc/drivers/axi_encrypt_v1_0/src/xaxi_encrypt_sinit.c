// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xaxi_encrypt.h"

extern XAxi_encrypt_Config XAxi_encrypt_ConfigTable[];

#ifdef SDT
XAxi_encrypt_Config *XAxi_encrypt_LookupConfig(UINTPTR BaseAddress) {
	XAxi_encrypt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XAxi_encrypt_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XAxi_encrypt_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XAxi_encrypt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAxi_encrypt_Initialize(XAxi_encrypt *InstancePtr, UINTPTR BaseAddress) {
	XAxi_encrypt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAxi_encrypt_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAxi_encrypt_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XAxi_encrypt_Config *XAxi_encrypt_LookupConfig(u16 DeviceId) {
	XAxi_encrypt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAXI_ENCRYPT_NUM_INSTANCES; Index++) {
		if (XAxi_encrypt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAxi_encrypt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAxi_encrypt_Initialize(XAxi_encrypt *InstancePtr, u16 DeviceId) {
	XAxi_encrypt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAxi_encrypt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAxi_encrypt_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

