/*
 * main_SD.c
 *
 * Main source file. Contains main() function.
 */
#include "image_data.h"
#include <stdio.h>
#include <sleep.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "platform.h"
#include "xil_printf.h"
#include "xpseudo_asm.h"
#include "xil_exception.h"

#define COMM_VAL (*(volatile unsigned long *)(0xFFFF0000))
#define STORE_IMAGE (*(volatile unsigned long *)(0xFFFFF000))


HSV_mods HSV_modifiers = {1.0,1.0,1.0};

/* ---------------------------------------------------------------------------- *
 * 									main()										*
 * ---------------------------------------------------------------------------- *
 * ---------------------------------------------------------------------------- */
int main(void)
{
	init_platform();
	Xil_DCacheDisable(); // Disable data cache

	while(1) {
		while(COMM_VAL == 1) {
		}
		Xil_DCacheFlush();
//		printf("ARM1 Online\r\n");
		if (STORE_IMAGE == 1) {
			storeImageInDDR();
			write_BMP_to_SDCard();
			STORE_IMAGE = 2;
		}
	}
    return 1;
}
