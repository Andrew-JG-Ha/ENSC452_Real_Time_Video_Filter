/*
 * ip_functions.c
 *
 * Contains all functions which pertain to setup and use of IP periperals.
 */

#include "Real_Time_Video_Filter.h"
#include "image_data.h"

/* ---------------------------------------------------------------------------- *
 * 								gpio_init()		 							*
 * ---------------------------------------------------------------------------- *
 * Initialises the GPIO driver for the push buttons and switches.
 * ---------------------------------------------------------------------------- */
unsigned char gpio_init()
{
	int Status;

	Status = XGpio_Initialize(&BTNInst, BUTTON_SWITCH_ID);
	if(Status != XST_SUCCESS) return XST_FAILURE;

//	// Initialise Push Buttons
//	Status = XGpio_Initialize(&BTNInst, BTNS_DEVICE_ID);
//	if(Status != XST_SUCCESS) return XST_FAILURE;

//	XGpio_SetDataDirection(&BTNInst, 1, 0xFF);

//	XGpio_SetDataDirection(&Gpio, SWITCH_CHANNEL, 0xFF);
	XGpio_SetDataDirection(&BTNInst, BUTTON_CHANNEL, 0xFF);

	return XST_SUCCESS;
}


// Interrupt functions

void BTN_Intr_Handler(void *InstancePtr)
{
	// Disable GPIO interrupts
	XGpio_InterruptDisable(&BTNInst, BTN_INT);
	// Ignore additional button presses
	if ((XGpio_InterruptGetStatus(&BTNInst) & BTN_INT) !=
			BTN_INT) {
			return;
		}
	btn_value = XGpio_DiscreteRead(&BTNInst, 1);
	// Increment counter based on button value
	// Reset if centre button pressed

	if (btn_value == 1) {
		//BTNC
		xil_printf("BTNC Pressed!\r\n");

		storeImageInDDR();
		write_BMP_to_SDCard();

		xil_printf("Image stored to SD Card!\r\n");
	}
	else if (btn_value == 2) {
		//BTND
			xil_printf("BTND Pressed!\r\n");
		}
	else if (btn_value == 4) {
		//BTNL
		xil_printf("BTNL Pressed!\r\n");
		}
	else if (btn_value == 8) {
		//BTNR
		xil_printf("BTNR Pressed!\r\n");
		}
	else if (btn_value == 16) {
		//BTNU
		xil_printf("BTNU Pressed!\r\n");
	}

	usleep(250000); //250ms sleep to effectively debounce signal

    (void)XGpio_InterruptClear(&BTNInst, BTN_INT);
    // Enable GPIO interrupts
    XGpio_InterruptEnable(&BTNInst, BTN_INT);
}

int InterruptSystemSetup(XScuGic *XScuGicInstancePtr)
{
	// Enable interrupt
	XGpio_InterruptEnable(&BTNInst, BTN_INT);
	XGpio_InterruptGlobalEnable(&BTNInst);

	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			 	 	 	 	 	 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
			 	 	 	 	 	 XScuGicInstancePtr);
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int IntcInitFunction(u16 DeviceId, XGpio *GpioInstancePtr)
{
	XScuGic_Config *IntcConfig;
	int status;

	// Interrupt controller initialization
	IntcConfig = XScuGic_LookupConfig(DeviceId);
	status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Call to interrupt setup
	status = InterruptSystemSetup(&INTCInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Connect GPIO interrupt to handler
	status = XScuGic_Connect(&INTCInst,
					  	  	 INTC_GPIO_INTERRUPT_ID,
					  	  	 (Xil_ExceptionHandler)BTN_Intr_Handler,
					  	  	 (void *)GpioInstancePtr);
	if(status != XST_SUCCESS) return XST_FAILURE;

	// Enable GPIO interrupts interrupt
	XGpio_InterruptEnable(GpioInstancePtr, 1);
	XGpio_InterruptGlobalEnable(GpioInstancePtr);

	// Enable GPIO interrupts in the controller
	XScuGic_Enable(&INTCInst, INTC_GPIO_INTERRUPT_ID);

	return XST_SUCCESS;
}
