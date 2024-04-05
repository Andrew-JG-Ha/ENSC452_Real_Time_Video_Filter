/*
 * audio_recorder.c
 *
 * Main source file. Contains main() function.
 */
#include "Real_Time_Video_Filter.h"
#include <stdio.h>
#include <sleep.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "platform.h"
#include "xil_printf.h"
#include "xpseudo_asm.h"
#include "xil_exception.h"

#define sev() __asm__("sev")
#define ARM1_STARTADR 0xFFFFFFF0
#define ARM1_BASEADDR 0x10080000
#define COMM_VAL (*(volatile unsigned long *)(0xFFFF0000))


/* ---------------------------------------------------------------------------- *
 * 									main()										*
 * ---------------------------------------------------------------------------- *
 * ---------------------------------------------------------------------------- */
int main(void)
{
	init_platform();
	COMM_VAL = 0;
	Xil_DCacheDisable(); // Disable data cache
    Xil_Out32(ARM1_STARTADR, ARM1_BASEADDR); // Set correct base address for ARM1
    dmb(); // Wait for ARM1 to be set up

    sev(); // Wake up ARM1

	int status;

	xil_printf("Entering Main\r\n");

	/* Initialize GPIO peripheral */
	gpio_init();

	xil_printf("GPIO peripheral configured\r\n");

	xil_printf("Press BTNC to store a photo onto the SD Card.\r\n");

	// Initialize interrupt controller
	status = IntcInitFunction(INTC_DEVICE_ID, &BTNInst);
	if(status != XST_SUCCESS) return XST_FAILURE;

	while(1);
    return 1;
}