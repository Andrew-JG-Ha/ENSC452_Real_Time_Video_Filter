/*
 * audio_recorder.c
 *
 * Main source file. Contains main() function.
 */
#include "Real_Time_Video_Filter.h"

/* ---------------------------------------------------------------------------- *
 * 									main()										*
 * ---------------------------------------------------------------------------- *
 * ---------------------------------------------------------------------------- */
int main(void)
{
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
