#ifndef CAMERA_H
#define CAMERA_H

#define CAMERA_BASE_ADDR 0x11000000

#define rawCameraDataHorzLen 320
#define rawCameraDataVertLen 480

#define actualCameraHorzLen 640
#define actualCameraVertLen 480

#define CAM_DATA_BUFFER_SIZE 153600

#define RGB_BASE_ADDR 0x13000000
#define GRAYSCALE_BASE_ADDR 0x14000000

void unpackCameraData(int* cameraDataBuffer, int* RGB_BUFFER_ADDR, int* GRAYSCALE_BUFFER_ADDR);

void unpackGray(int* cameraDataBuffer, int* GRAYSCALE_BUFFER_ADDR);

void unpackRGB(int* cameraDataBuffer, int* RGB_BUFFER_ADDR);

//void unpackCameraData_withPorching(int* cameraDataBuffer, int* RGB_BUFFER_ADDR, int* GRAYSCALE_BUFFER_ADDR);

#endif