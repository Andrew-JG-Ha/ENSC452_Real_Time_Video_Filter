#ifndef FILTERS_H
#define FILTERS_H

#define SOBEL_BASE_ADDR 0x15000000

/* ---------------------------------------------------------------------------- *
 * 								Header Files									*
 * ---------------------------------------------------------------------------- */
#include "xparameters.h"
#include "xsdps.h"
#include <xil_printf.h>
#include "xil_cache.h"
#include "xplatform_info.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>

/* ---------------------------------------------------------------------------- *
 * 							Shared RAM Memory								*
 * ---------------------------------------------------------------------------- */

#define VGA_BUFFER (*(volatile int **)(0xFFFF00FF))

/* ---------------------------------------------------------------------------- *
 * 							   Structures									*
 * ---------------------------------------------------------------------------- */

typedef struct {
	float h;
	float s;
	float v;
} HSV;

typedef struct {
	u8 r;
	u8 g;
	u8 b;
} RGB;

typedef struct {
	float hmod;
	float smod;
	float vmod;
} HSV_mods;

/* ---------------------------------------------------------------------------- *
 * 							Function Prototypes								*
 * ---------------------------------------------------------------------------- */
void applyKernelGrey(int* source, int* destination, int* filter);
void applyKernelRGB(int* source, int* destination, int* filter, int scalingFactor);
void raw_to_HSV_frame(int* source, int* destination);
void applySillyFilter(int* destination, int* hsv, int* edges);
HSV RGB_pixel_to_HSV_pixel(RGB data);
RGB HSV_pixel_to_RGB_pixel(HSV data);

/* ---------------------------------------------------------------------------- *
 * 							Static Variables									*
 * ---------------------------------------------------------------------------- */
static char *HSV_setting[3] = {"HUE", "SATURATION", "VALUE"};

/* ---------------------------------------------------------------------------- *
 * 							External Variable									*
 * ---------------------------------------------------------------------------- */
extern int userDefinedFilter[9];
extern int userDefinedScaling;
extern HSV_mods HSV_modifiers;

static char *filter_settings[10] = {"TOP_LEFT", "TOP", "TOP_RIGHT", "LEFT", "CENTER", "RIGHT", "BOT_LEFT", "BOT", "BOT_RIGHT", "SCALING_FACTOR"};

#endif
