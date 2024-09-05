// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xgesture_model.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XGesture_model_CfgInitialize(XGesture_model *InstancePtr, XGesture_model_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XGesture_model_Start(XGesture_model *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XGesture_model_IsDone(XGesture_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XGesture_model_IsIdle(XGesture_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XGesture_model_IsReady(XGesture_model *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XGesture_model_EnableAutoRestart(XGesture_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XGesture_model_DisableAutoRestart(XGesture_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XGesture_model_InterruptGlobalEnable(XGesture_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_GIE, 1);
}

void XGesture_model_InterruptGlobalDisable(XGesture_model *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_GIE, 0);
}

void XGesture_model_InterruptEnable(XGesture_model *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_IER);
    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_IER, Register | Mask);
}

void XGesture_model_InterruptDisable(XGesture_model *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_IER);
    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XGesture_model_InterruptClear(XGesture_model *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XGesture_model_WriteReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_ISR, Mask);
}

u32 XGesture_model_InterruptGetEnabled(XGesture_model *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_IER);
}

u32 XGesture_model_InterruptGetStatus(XGesture_model *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XGesture_model_ReadReg(InstancePtr->Control_BaseAddress, XGESTURE_MODEL_CONTROL_ADDR_ISR);
}

