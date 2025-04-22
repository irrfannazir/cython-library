#include <stdlib.h>
#include "zero.h"


void countSort(int arr[], int n, int exp) {
    int count[10] = {0};
    int *output = (int *)malloc(n * sizeof(int));
    for (int i = 0; i < n; i++)
        count[(arr[i] / exp) % 10]++;
    for (int i = 1; i < 10; i++)
        count[i] += count[i - 1];
    for (int i = n - 1; i >= 0; i--) {
        output[count[(arr[i] / exp) % 10] - 1] = arr[i];
        count[(arr[i] / exp) % 10]--;
    }
    for (int i = 0; i < n; i++)
        arr[i] = output[i];
    free(output);
}

void __radix__(int arr[], int n) {
    int max = __getMax__(arr, n);
    for (int exp = 1; max / exp > 0; exp *= 10)
        countSort(arr, n, exp);
}