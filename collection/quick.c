#include "zero.h"

int partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = (low - 1);
    int temp;
    for (int j = low; j <= high - 1; j++) {
        if (arr[j] < pivot) {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

void __quick__(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        __quick__(arr, low, pi - 1);
        __quick__(arr, pi + 1, high);
    }
}