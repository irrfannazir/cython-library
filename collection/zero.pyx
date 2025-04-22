from libc.stdlib cimport malloc, free

cdef extern from "zero.h":
    int __getMax__(int arr[], int n);
    int __getMin__(int arr[], int n);
    int __modulo2__(int a);
    int __nearestEven__(int a);
    int __incr__(int a);
    int __decr__(int a);

def getMax(arr):
    cdef int n = len(arr)
    cdef int* s_arr = <int *> malloc(n * sizeof(int))
    for i in range(n):
        if type((arr[i])) != int:
            print("Invalid Integer Array")
            free(s_arr)
            return -1
        s_arr[i] = arr[i]
    cdef int maxValue = __getMax__(s_arr, n)
    free(s_arr)
    return maxValue

def getMin(arr):
    cdef int n = len(arr)
    cdef int* s_arr = <int *> malloc(n * sizeof(int))
    for i in range(n):
        if type((arr[i])) != int:
            print("Invalid Integer Array")
            free(s_arr)
            return -1
        s_arr[i] = arr[i]
    cdef int maxValue = __getMin__(s_arr, n)
    free(s_arr)
    return maxValue

cpdef int modulo2(int a):
    return __modulo2__(a)

cpdef int nearestEven(int a):
    return __nearestEven__(a)

cpdef int incr(int a):
    return __incr__(a)

cpdef int decr(int a):
    return __decr__(a)

