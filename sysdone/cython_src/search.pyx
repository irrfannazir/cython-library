# search.pyx
from libc.stdlib cimport malloc, free

cdef extern from "../include/search.h":
    int __linear__(int arr[], int size, int target)
    int __binary__(int arr[], int low, int high, int target)

def linear(arr: list, int target):
    cdef int size = len(arr)
    cdef int* c_arr = <int*> malloc(size * sizeof(int))
    cdef int i

    for i in range(size):
        c_arr[i] = arr[i]

    cdef int result = __linear__(c_arr, size, target)
    free(c_arr)
    return result

def binary(arr: list, int target):
    cdef int size = len(arr)
    cdef int* c_arr = <int*> malloc(size * sizeof(int))
    cdef int i

    for i in range(size):
        c_arr[i] = arr[i]
    
    cdef int result = __binary__(c_arr, 0, size - 1, target)
    free(c_arr)
    return result
