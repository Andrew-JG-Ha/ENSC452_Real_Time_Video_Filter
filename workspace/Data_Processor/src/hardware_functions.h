/*
 * hardware_functions.h
 *
 * Main header file.
 */

#ifndef HARDWARE_FUNCTIONS_H_
#define HARDWARE_FUNCTIONS_H_

/* ---------------------------------------------------------------------------- *
 * 								Header Files									*
 * ---------------------------------------------------------------------------- */
#include <stdio.h>
#include <xil_io.h>
#include <sleep.h>
#include <xil_printf.h>
#include <xparameters.h>
#include "xgpio.h"
#include "xuartps.h"
#include "stdlib.h"

#include "xscugic.h"
#include "xil_exception.h"


/* ---------------------------------------------------------------------------- *
 * 							Custom Header Files								*
 * ---------------------------------------------------------------------------- */

#include "editors.h"

/* ---------------------------------------------------------------------------- *
 * 							Prototype Functions									*
 * ---------------------------------------------------------------------------- */
void menu();
unsigned char gpio_init();
void BTN_Intr_Handler(void *baseaddr_p);
int InterruptSystemSetup(XScuGic *XScuGicInstancePtr);
int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr);


/* ---------------------------------------------------------------------------- *
 * 						Redefinitions from xparameters.h 						*
 * ---------------------------------------------------------------------------- */

#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define BUTTON_SWITCH_BASE XPAR_GPIO_0_BASEADDR
#define BUTTON_SWITCH_ID XPAR_GPIO_0_DEVICE_ID

/* ---------------------------------------------------------------------------- *
 * 							Define GPIO Channels								*
 * ---------------------------------------------------------------------------- */
#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2

/* ---------------------------------------------------------------------------- *
 * 							Shared RAM Variables									*
 * ---------------------------------------------------------------------------- */
#define STORE_IMAGE (*(volatile unsigned long *)(0xFFFFF000))

/* ---------------------------------------------------------------------------- *
 * 							Global Variables									*
 * ---------------------------------------------------------------------------- */
XGpio BTNInst;
XScuGic INTCInst;
int btn_value;
int sw_value;
extern HSV_mods HSV_modifiers;
u32 current_HSV_setting;

extern int userDefinedFilter[9];
extern int userDefinedScaling;
int currentFilterLoc;

//Parameter Definitions
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR
#define BTN_INT 			XGPIO_IR_CH1_MASK
#define INTC_DEVICE_ID 		XPAR_AXI_GPIO_0_DEVICE_ID

#endif /* HARDWARE_FUNCTIONS_H_ */
