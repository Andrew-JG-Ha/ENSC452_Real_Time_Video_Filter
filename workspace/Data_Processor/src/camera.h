#ifndef CAMERA_H
#define CAMERA_H

#define CAMERA_BASE_ADDR 0x11000000

#define rawCameraDataHorzLen 320
#define rawCameraDataVertLen 480

#define actualCameraHorzLen 640
#define actualCameraVertLen 480

#define CAM_DATA_BUFFER_SIZE 153600
#define NUM_VGA_ELEMENTS 307200

#define RGB_BASE_ADDR 0x13000000
#define GRAYSCALE_BASE_ADDR 0x14000000
#define HSV_BASE_ADDR 0x16000000
#define STORAGE_BUFFER 0x17000000
#define SD_BUFFER 0x18000000

void unpackCameraData(int* source, int* RGB_BUFFER_ADDR, int* GRAYSCALE_BUFFER_ADDR);

void unpackGray(int* source, int* destination);

void unpackRGB(int* source, int* destination);

#endif
