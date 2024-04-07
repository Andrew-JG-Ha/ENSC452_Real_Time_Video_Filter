#include "editors.h"
#include "camera.h"

void raw_to_HSV_frame(int* source, int* destination) {
	RGB rgb_data;
	HSV hsv_data;

	for (int j = 0; j < NUM_VGA_ELEMENTS/2; j++) {

		//Isolate blue, green, and red components
		rgb_data.b = (u8) ((0x000000F0 & source[j]) >> 4);
		rgb_data.g = (u8) ((0x00000F00 & source[j]) >> 8);
		rgb_data.r = (u8) ((0x0000F000 & source[j]) >> 12);


		hsv_data = RGB_pixel_to_HSV_pixel(rgb_data);
		hsv_data.h *= HSV_modifiers.hmod;
		hsv_data.s *= HSV_modifiers.smod;
		hsv_data.v *= HSV_modifiers.vmod;
		rgb_data = HSV_pixel_to_RGB_pixel(hsv_data);

		destination[2*j] = ((u32) (rgb_data.b) << 20) | ((u32) (rgb_data.g) << 12) | ((u32) (rgb_data.r) << 4);

		//Isolate blue, green, and red components
		rgb_data.b = (u8) ((0x00F00000 & source[j]) >> 20);
		rgb_data.g = (u8) ((0x0F000000 & source[j]) >> 24);
		rgb_data.r = (u8) ((0xF0000000 & source[j]) >> 28);

		hsv_data = RGB_pixel_to_HSV_pixel(rgb_data);
		hsv_data.h *= HSV_modifiers.hmod;
		hsv_data.s *= HSV_modifiers.smod;
		hsv_data.v *= HSV_modifiers.vmod;
		rgb_data = HSV_pixel_to_RGB_pixel(hsv_data);

		destination[2*j + 1] = ((u32) (rgb_data.b) << 20) | ((u32) (rgb_data.g) << 12) | ((u32) (rgb_data.r) << 4);
	}
}

void applySillyFilter(int* destination, int* hsv, int* edges) {
	for (int k = 0; k < NUM_VGA_ELEMENTS; k++) {
		if (((edges[k] >> 20) & 0xF) > 0x5) {
			destination[k] = 0x00000000;
		}
		else {
			destination[k] = hsv[k];
		}
	}
}

HSV RGB_pixel_to_HSV_pixel(RGB data) {
	HSV hsv_data;
	float red = (float) data.r/15.0;
	float green = (float) data.g/15.0;
	float blue = (float) data.b/15.0;

	float cmax = (red > green) ? red : green;
	cmax = (blue > cmax) ? blue : cmax;
	float cmin = (red < green) ? red : green;
	cmin = (blue < cmin) ? blue : cmin;

	float delta = cmax - cmin;

	//Hue Calculation: offsets of 0, 120, and 240 relate to the degree around the hue wheel
	if (delta == 0) {
		hsv_data.h = 0;
	}
	else if (cmax == red) {
		hsv_data.h = 60*((green - blue)/delta) + 360;
		hsv_data.h = (hsv_data.h > 360) ? hsv_data.h - 360 : hsv_data.h;
	}
	else if (cmax == green) {
		hsv_data.h = 60*((blue - red)/delta) + 120;
		hsv_data.h = (hsv_data.h > 360) ? hsv_data.h - 360 : hsv_data.h;
	}
	else if (cmax == blue) {
		hsv_data.h = 60*((red - green)/delta) + 240;
		hsv_data.h = (hsv_data.h > 360) ? hsv_data.h - 360 : hsv_data.h;
	}

	//Saturation Calculation
	hsv_data.s = (cmax == 0) ? 0 : delta/cmax;

	//Value Calculation
	hsv_data.v = cmax;

	return hsv_data;
}

RGB HSV_pixel_to_RGB_pixel(HSV data) {
	RGB rgb_data;
	long integer;
	float fractional, p, q, t;

	data.s = (data.s < 0) ? 0 : data.s;
	data.s = (data.s > 1) ? 1 : data.s;

	if (data.s == 0) {
		data.v = (data.v < 0) ? 0 : data.v;
		data.v = (data.v > 1) ? 1 : data.v;
		rgb_data.r = (u8) (data.v * 15);
		rgb_data.g = (u8) (data.v * 15);
		rgb_data.b = (u8) (data.v * 15);
	}
	data.h = (data.h > 360) ? 360 : data.h;
	data.h = (data.h < 0) ? 0 : data.h;
	data.h /= 60; // Normalize hue into the six segments of the colour wheel

	//Determine the integer and fractional parts of the colour wheel segment
	integer = (long) data.h;
	fractional = data.h - integer;

	p = data.v * (1 - data.s);
	p = (p > 1) ? 1 : p;
	p = (p < 0) ? 0 : p;
	q = data.v * (1 - data.s * fractional);
	q = (q > 1) ? 1 : q;
	q = (q < 0) ? 0 : q;
	t = data.v * (1 - data.s * (1 - fractional));
	t = (t > 1) ? 1 : t;
	t = (t < 0) ? 0 : t;

	switch(integer) {
		case 0: // 0th colour segment
			rgb_data.r = (u8) (data.v * 15);
			rgb_data.g = (u8) (t * 15);
			rgb_data.b = (u8) (p * 15);
			break;
		case 1: // 1st colour segment
			rgb_data.r = (u8) (q * 15);
			rgb_data.g = (u8) (data.v * 15);
			rgb_data.b = (u8) (p * 15);
			break;
		case 2: // 2nd colour segment
			rgb_data.g = (u8) (data.v * 15);
			rgb_data.r = (u8) (p * 15);
			rgb_data.b = (u8) (t * 15);
			break;
		case 3: // 3rd colour segment
			rgb_data.r = (u8) (p * 15);
			rgb_data.g = (u8) (q * 15);
			rgb_data.b = (u8) (data.v * 15);
			break;
		case 4: // 4th colour segment
			rgb_data.r = (u8) (t * 15);
			rgb_data.g = (u8) (p * 15);
			rgb_data.b = (u8) (data.v * 15);
			break;
		default: // 5th colour segment
			rgb_data.r = (u8) (data.v * 15);
			rgb_data.g = (u8) (p * 15);
			rgb_data.b = (u8) (q * 15);
			break;
	}
	return rgb_data;
}

void applyKernelGrey(int* source, int* destination, int* filter) {
	int centreAddress, topLeftAddress, topAddress, topRightAddress, rightAddress, botRightAddress, botAddress, botLeftAddress, leftAddress;
	int centreVal, topLeftVal, topVal, topRightVal, rightVal, botRightVal, botVal, botLeftVal, leftVal, result;
	for (int row = 0; row < 480; row++) {
		for (int column = 0; column < 640; column++) {
			centreAddress = row * 640 + column;
			topLeftAddress = (row - 1) * 640 + (column - 1);
			topAddress = (row - 1) * 640 + column;
			topRightAddress = (row - 1) * 640 + (column + 1);
			rightAddress = row * 640 + (column + 1);
			botRightAddress = (row + 1) * 640 + (column + 1);
			botAddress = (row + 1) * 640 + column;
			botLeftAddress = (row + 1) * 640 + (column - 1);
			leftAddress = row * 640 + (column - 1);

			topLeftVal = 0;
			topVal = 0;
			topRightVal = 0;
			rightVal = 0;
			botRightVal = 0;
			botVal = 0;
			botLeftVal = 0;
			leftVal = 0;

			if (row % 479 == 0) {
				if (column % 639 == 0) {
					// at corners of image
					if (row == 0 && column == 0) {
						// top left corner
						rightVal = source[rightAddress];
						botRightVal = source[botRightAddress];
						botVal = source[botAddress];
					}
					else if (row == 0 && column == 639) {
						// top right corner
						leftVal = source[leftAddress];
						botLeftVal = source[botLeftAddress];
						botVal = source[botAddress];
					}
					else if (row == 479 && column == 639) {
						// bot right corner
						leftVal = source[leftAddress];
						topLeftVal = source[topLeftAddress];
						topVal = source[topAddress];
					}
					else {
						// bot left corner
						rightVal = source[rightAddress];
						topRightVal = source[topRightAddress];
						topVal = source[topAddress];
					}
				}
				else {
					// at horizontal edge of image
					if (row == 0) {
						// at top edge
						leftVal = source[leftAddress];
						botLeftVal = source[botLeftAddress];
						botVal = source[botAddress];
						botRightVal = source[botRightAddress];
						rightVal = source[rightAddress];
					}
					else {
						// at bottom edge
						leftVal = source[leftAddress];
						topLeftVal = source[topLeftAddress];
						topVal = source[topAddress];
						topRightVal = source[topRightAddress];
						rightVal = source[rightAddress];
					}
				}

			}
			else {
				if (column % 639 == 0) {
					// at vertical edge of image
					if (column == 0) {
						// at left most edge
						topVal = source[topAddress];
						topRightVal = source[topRightAddress];
						rightVal = source[rightAddress];
						botRightVal = source[botRightAddress];
						botVal = source[botAddress];
					}
					else {
						// at right most edge
						topVal = source[topAddress];
						topLeftVal = source[topLeftAddress];
						leftVal = source[leftAddress];
						botLeftVal = source[botLeftAddress];
						botVal = source[botAddress];
					}
				}
				else {
					// not at edge or corner of image
					topLeftVal = source[topLeftAddress];
					topVal = source[topAddress];
					topRightVal = source[topRightAddress];
					rightVal = source[rightAddress];
					botRightVal = source[botRightAddress];
					botVal = source[botAddress];
					botLeftVal = source[botLeftAddress];
					leftVal = source[leftAddress];
				}
			}

			centreVal = source[centreAddress] & 0x000000F0;
			topLeftVal = topLeftVal & 0x000000F0;
			topVal = topVal & 0x000000F0;
			topRightVal = topRightVal & 0x000000F0;
			rightVal = rightVal & 0x000000F0;
			botRightVal = botRightVal & 0x000000F0;
			botVal = botVal & 0x000000F0;
			botLeftVal = botLeftVal & 0x000000F0;
			leftVal = leftVal & 0x000000F0;

			result =  (filter[0] * topLeftVal) + (filter[1] * topVal) + (filter[2] * topRightVal)
					+ (filter[3] * leftVal) + (filter[4] * centreVal) + (filter[5] * rightVal)
					+ (filter[6] * botLeftVal) + (filter[7] * botVal) + (filter[8] * botRightVal);

			if (result > 0x000000F0 || -result > 0x000000F0) {
				result = 0x000000F0;
			}
			else {
				if (result < 0x00000000) {
					result = -result;
					result = result & 0x000000F0;
				}
				else {
					result = result & 0x000000F0;
				}
			}
			destination[centreAddress] = result | result << 8 | result << 16;
		}
	}
}


void applyKernelRGB(int* source, int* destination, int* filter, int scalingFactor) {
	int centreAddress, topLeftAddress, topAddress, topRightAddress, rightAddress, botRightAddress, botAddress, botLeftAddress, leftAddress;
	int topLeftVal, topVal, topRightVal, rightVal, botRightVal, botVal, botLeftVal, leftVal;
	int centreValR, topLeftValR, topValR, topRightValR, rightValR, botRightValR, botValR, botLeftValR, leftValR, resultR;
	int centreValG, topLeftValG, topValG, topRightValG, rightValG, botRightValG, botValG, botLeftValG, leftValG, resultG;
	int centreValB, topLeftValB, topValB, topRightValB, rightValB, botRightValB, botValB, botLeftValB, leftValB, resultB;
	for (int row = 0; row < 480; row++) {
		for (int column = 0; column < 640; column++) {
			centreAddress = row * 640 + column;
			topLeftAddress = (row - 1) * 640 + (column - 1);
			topAddress = (row - 1) * 640 + column;
			topRightAddress = (row - 1) * 640 + (column + 1);
			rightAddress = row * 640 + (column + 1);
			botRightAddress = (row + 1) * 640 + (column + 1);
			botAddress = (row + 1) * 640 + column;
			botLeftAddress = (row + 1) * 640 + (column - 1);
			leftAddress = row * 640 + (column - 1);

			topLeftVal = 0;
			topVal = 0;
			topRightVal = 0;
			rightVal = 0;
			botRightVal = 0;
			botVal = 0;
			botLeftVal = 0;
			leftVal = 0;

			if (row % 479 == 0) {
				if (column % 639 == 0) {
					// at corners of image
					if (row == 0 && column == 0) {
						// top left corner
						rightVal = source[rightAddress];
						botRightVal = source[botRightAddress];
						botVal = source[botAddress];
					}
					else if (row == 0 && column == 639) {
						// top right corner
						leftVal = source[leftAddress];
						botLeftVal = source[botLeftAddress];
						botVal = source[botAddress];
					}
					else if (row == 479 && column == 639) {
						// bot right corner
						leftVal = source[leftAddress];
						topLeftVal = source[topLeftAddress];
						topVal = source[topAddress];
					}
					else {
						// bot left corner
						rightVal = source[rightAddress];
						topRightVal = source[topRightAddress];
						topVal = source[topAddress];
					}
				}
				else {
					// at horizontal edge of image
					if (row == 0) {
						// at top edge
						leftVal = source[leftAddress];
						botLeftVal = source[botLeftAddress];
						botVal = source[botAddress];
						botRightVal = source[botRightAddress];
						rightVal = source[rightAddress];
					}
					else {
						// at bottom edge
						leftVal = destination[leftAddress];
						topLeftVal = destination[topLeftAddress];
						topVal = destination[topAddress];
						topRightVal = destination[topRightAddress];
						rightVal = destination[rightAddress];
					}
				}

			}
			else {
				if (column % 639 == 0) {
					// at vertical edge of image
					if (column == 0) {
						// at left most edge
						topVal = destination[topAddress];
						topRightVal = destination[topRightAddress];
						rightVal = destination[rightAddress];
						botRightVal = destination[botRightAddress];
						botVal = destination[botAddress];
					}
					else {
						// at right most edge
						topVal = destination[topAddress];
						topLeftVal = destination[topLeftAddress];
						leftVal = destination[leftAddress];
						botLeftVal = destination[botLeftAddress];
						botVal = destination[botAddress];
					}
				}
				else {
					// not at edge or corner of image
					topLeftVal = source[topLeftAddress];
					topVal = source[topAddress];
					topRightVal = source[topRightAddress];
					rightVal = source[rightAddress];
					botRightVal = source[botRightAddress];
					botVal = source[botAddress];
					botLeftVal = source[botLeftAddress];
					leftVal = source[leftAddress];
				}
			}

			centreValR = source[centreAddress] & 0x000000F0;
			topLeftValR = topLeftVal & 0x000000F0;
			topValR = topVal & 0x000000F0;
			topRightValR = topRightVal & 0x000000F0;
			rightValR = rightVal & 0x000000F0;
			botRightValR = botRightVal & 0x000000F0;
			botValR = botVal & 0x000000F0;
			botLeftValR = botLeftVal & 0x000000F0;
			leftValR = leftVal & 0x000000F0;

			resultR = (filter[0] * topLeftValR) + (filter[1] * topValR) + (filter[2] * topRightValR)
					+ (filter[3] * leftValR) + (filter[4] * centreValR) + (filter[5] * rightValR)
					+ (filter[6] * botLeftValR) + (filter[7] * botValR) + (filter[8] * botRightValR);
			resultR = (resultR >> scalingFactor) & 0x000000F0;

			centreValG = (source[centreAddress] & 0x0000F000) >> 8;
			topLeftValG = (topLeftVal & 0x0000F000) >> 8;
			topValG = (topVal & 0x0000F000) >> 8;
			topRightValG = (topRightVal & 0x0000F000) >> 8;
			rightValG = (rightVal & 0x0000F000) >> 8;
			botRightValG = (botRightVal & 0x0000F000) >> 8;
			botValG = (botVal & 0x0000F000) >> 8;
			botLeftValG = (botLeftVal & 0x0000F000) >> 8;
			leftValG = (leftVal & 0x0000F000) >> 8;

			resultG = (filter[0] * topLeftValG) + (filter[1] * topValG) + (filter[2] * topRightValG)
					+ (filter[3] * leftValG) + (filter[4] * centreValG) + (filter[5] * rightValG)
					+ (filter[6] * botLeftValG) + (filter[7] * botValG) + (filter[8] * botRightValG);
			resultG = (resultG >> scalingFactor) & 0x000000F0;

			centreValB = (source[centreAddress] & 0x00F00000) >> 16;
			topLeftValB = (topLeftVal & 0x00F00000) >> 16;
			topValB = (topVal & 0x00F00000) >> 16;
			topRightValB = (topRightVal & 0x00F00000) >> 16;
			rightValB = (rightVal & 0x00F00000) >> 16;
			botRightValB = (botRightVal & 0x00F00000) >> 16;
			botValB = (botVal & 0x00F00000) >> 16;
			botLeftValB = (botLeftVal & 0x00F00000) >> 16;
			leftValB = (leftVal & 0x00F00000) >> 16;

			resultB = (filter[0] * topLeftValB) + (filter[1] * topValB) + (filter[2] * topRightValB)
					+ (filter[3] * leftValB) + (filter[4] * centreValB) + (filter[5] * rightValB)
					+ (filter[6] * botLeftValB) + (filter[7] * botValB) + (filter[8] * botRightValB);
			resultB = (resultB >> scalingFactor) & 0x000000F0;

			destination[centreAddress] = resultR | resultG << 8 | resultB << 16;
		}
	}
}



