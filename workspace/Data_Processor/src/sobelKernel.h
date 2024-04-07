#ifndef SOBEL_KERNEL_H
#define SOBEL_KERNEL_H

#define SOBEL_BASE_ADDR 0x15000000

void applyKernelGrey(int* GRAYSCALE_BUFFER_ADDR, int* FILTER_BUFFER_ADDR, int* filter);

void applyKernelRGB(int* RGB_BUFFER_ADDR, int* FILTER_BUFFER_ADDR, int* filter, int scalingFactor);

#endif
