// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xgesture_model.h"

extern XGesture_model_Config XGesture_model_ConfigTable[];

#ifdef SDT
XGesture_model_Config *XGesture_model_LookupConfig(UINTPTR BaseAddress) {
	XGesture_model_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XGesture_model_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XGesture_model_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XGesture_model_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGesture_model_Initialize(XGesture_model *InstancePtr, UINTPTR BaseAddress) {
	XGesture_model_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGesture_model_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGesture_model_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XGesture_model_Config *XGesture_model_LookupConfig(u16 DeviceId) {
	XGesture_model_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGESTURE_MODEL_NUM_INSTANCES; Index++) {
		if (XGesture_model_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGesture_model_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGesture_model_Initialize(XGesture_model *InstancePtr, u16 DeviceId) {
	XGesture_model_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGesture_model_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGesture_model_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

