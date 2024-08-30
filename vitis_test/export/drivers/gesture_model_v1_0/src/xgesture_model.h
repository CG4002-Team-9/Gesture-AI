// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XGESTURE_MODEL_H
#define XGESTURE_MODEL_H

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
#include "xgesture_model_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XGesture_model_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XGesture_model;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGesture_model_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGesture_model_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGesture_model_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGesture_model_ReadReg(BaseAddress, RegOffset) \
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
int XGesture_model_Initialize(XGesture_model *InstancePtr, u16 DeviceId);
XGesture_model_Config* XGesture_model_LookupConfig(u16 DeviceId);
int XGesture_model_CfgInitialize(XGesture_model *InstancePtr, XGesture_model_Config *ConfigPtr);
#else
int XGesture_model_Initialize(XGesture_model *InstancePtr, const char* InstanceName);
int XGesture_model_Release(XGesture_model *InstancePtr);
#endif

void XGesture_model_Start(XGesture_model *InstancePtr);
u32 XGesture_model_IsDone(XGesture_model *InstancePtr);
u32 XGesture_model_IsIdle(XGesture_model *InstancePtr);
u32 XGesture_model_IsReady(XGesture_model *InstancePtr);
void XGesture_model_EnableAutoRestart(XGesture_model *InstancePtr);
void XGesture_model_DisableAutoRestart(XGesture_model *InstancePtr);


void XGesture_model_InterruptGlobalEnable(XGesture_model *InstancePtr);
void XGesture_model_InterruptGlobalDisable(XGesture_model *InstancePtr);
void XGesture_model_InterruptEnable(XGesture_model *InstancePtr, u32 Mask);
void XGesture_model_InterruptDisable(XGesture_model *InstancePtr, u32 Mask);
void XGesture_model_InterruptClear(XGesture_model *InstancePtr, u32 Mask);
u32 XGesture_model_InterruptGetEnabled(XGesture_model *InstancePtr);
u32 XGesture_model_InterruptGetStatus(XGesture_model *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
