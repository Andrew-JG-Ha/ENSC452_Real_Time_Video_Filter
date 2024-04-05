/*
 * image_data.h
 *
 * Contains all functions which pertain to setup and use of IP periperals.
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

#define VGA_BUFFER (*(volatile int **)(0xFFFF00FF))

/* ---------------------------------------------------------------------------- *
 * 							Prototype Functions									*
 * ---------------------------------------------------------------------------- */
void storeImageInDDR();
void write_BMP_to_SDCard();

/* ---------------------------------------------------------------------------- *
 * 							Global Variables									*
 * ---------------------------------------------------------------------------- */
u8* imageStorage;// = 0x018E0000;
u8* rawDataStorage;
int imageSize;
static FIL File;
static FATFS Fatfs;

static char FileName[32] = "Test2.bmp";
static char* SD_File;


u8 DestinationAddress[10*1024] __attribute__ ((aligned(32)));
//u8 SourceAddress[10*1024] __attribute__ ((aligned(32)));

#define TEST 7

//const unsigned char BMP_IMAGE_DATA[]
//= {
//    0x42, 0x4D, 0x0C, 0x0C, 0x00, 0x00, 0x00, 0x00, // BMP header
//    0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x03, 0x00, // BMP header
//    0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, // BMP header
//    0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, // BMP header
//    0x00, 0x00, 0x00, 0x0C, 0x03, 0xF0, 0x00, 0x00, // BMP data (pixel 1)
//    0x00, 0x00, 0x03, 0xF0, 0x00, 0x00, 0x00, 0x00, // BMP data (pixel 2)
//    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00  // Padding for alignment
//};


static int BMP_HEADER_SIZE;
static int BMP_DATA_SIZE;

#endif
