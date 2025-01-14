/*
 * image_data.h
 *
 */

#ifndef IMAGE_DATA_H_
#define IMAGE_DATA_H_

/* ---------------------------------------------------------------------------- *
 * 								Header Files									*
 * ---------------------------------------------------------------------------- */
#include "xparameters.h"
#include "xsdps.h"
#include <xil_printf.h>
#include "ff.h"
#include "xil_cache.h"
#include "xplatform_info.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>

#define VGA_BUFFER (*(volatile int **)(0xFFFF00FF))
#define SD_BUFFER (*(volatile int **)(0xFFFF01FF))
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
 * 							Prototype Functions									*
 * ---------------------------------------------------------------------------- */
void storeImageInDDR();
void write_BMP_to_SDCard();
void generate_filename(char *filename);
HSV RGB_to_HSV(RGB data);
RGB HSV_to_RGB(HSV data);

/* ---------------------------------------------------------------------------- *
 * 							Global Variables									*
 * ---------------------------------------------------------------------------- */
u8* imageStorage;// = 0x018E0000;
u8* rawDataStorage;
int imageSize;
static FIL File;
static FATFS Fatfs;

static char FileName[32] = "Image.bmp";
static int imageNumber = 0;
static char* SD_File;
static char *HSV_setting[3] = {"HUE", "SATURATION", "VALUE"};
static int current_HSV_setting = 0;

static int BMP_HEADER_SIZE;
static int BMP_DATA_SIZE;

#endif
