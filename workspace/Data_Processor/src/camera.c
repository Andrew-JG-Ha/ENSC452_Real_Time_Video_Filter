#include "camera.h"

unsigned int pixel1Mask = 0x0000FFFF;
unsigned int pixel2Mask = 0xFFFF0000;

unsigned int fullHorizontalLength = 320;

void unpackPixelRGB(int dataBit, int* pixel1_addr, int* pixel2_addr);
void unpackPixelGray(int dataBit, int* pixel1_addr, int* pixel2_addr);

void unpackGray(int* source, int* destination) {
	for (int i = 0; i < CAM_DATA_BUFFER_SIZE; i++) {
		unpackPixelGray(source[i], &destination[2*i], &destination[(2*i)+1]);
	}
}

void unpackRGB(int* source, int* destination) {
	for (int i = 0; i < CAM_DATA_BUFFER_SIZE; i++) {
		unpackPixelRGB(source[i], &destination[2*i], &destination[(2*i)+1]);
	}
}

void unpackCameraData(int* source, int* destinationRGB, int* destinationGray) {
	for (int i = 0; i < CAM_DATA_BUFFER_SIZE; i++) {
		unpackPixelRGB(source[i], &destinationRGB[2*i], &destinationRGB[(2*i)+1]);
		unpackPixelGray(source[i], &destinationGray[2*i], &destinationGray[(2*i)+1]);
	}
}

void unpackPixelRGB(int dataBit, int* pixel1_addr, int* pixel2_addr) {
	int pixel1Data = (pixel1Mask & dataBit);
	int pixel2Data = (pixel2Mask & dataBit) >> 16;

	int pixel1_R = (0x0000F000 & pixel1Data) >> 8;
	int pixel1_G = (0x00000F00 & pixel1Data) << 4;
	int pixel1_B = (0x000000F0 & pixel1Data) << 16;

	int pixel2_R = (0x0000F000 & pixel2Data) >> 8;
	int pixel2_G = (0x00000F00 & pixel2Data) << 4;
	int pixel2_B = (0x000000F0 & pixel2Data) << 16;

	pixel1_addr[0] = pixel1_B | pixel1_G | pixel1_R;
	pixel2_addr[0] = pixel2_B | pixel2_G | pixel2_R;
}

void unpackPixelGray(int dataBit, int* pixel1_addr, int* pixel2_addr) {
	int pixel1Data = (pixel1Mask & dataBit);
	int pixel2Data = (pixel2Mask & dataBit) >> 16;

	int pixel1_Gray = 0x0000000F & pixel1Data;
	int pixel2_Gray = 0x0000000F & pixel2Data;

	pixel1_addr[0] = (pixel1_Gray << 4 | pixel1_Gray << 12 | pixel1_Gray << 20);
	pixel2_addr[0] = (pixel2_Gray << 4 | pixel2_Gray << 12 | pixel2_Gray << 20);
}
