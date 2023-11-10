#include <cuda_runtime.h>

#include <stdio.h>


__global__ void hello()
{
	printf("Hello world\n");
}


int main() {
	//printf("Hello world\n");
	//int* a;
	//cudaMalloc(&a, 100);
	//cudaFree(a);

	hello << <1,1023 >> > ();
	cudaThreadSynchronize();

	return 0;
}