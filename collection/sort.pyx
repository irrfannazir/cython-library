from libc.stdlib cimport malloc, free
cimport cython
import array

cdef extern from "sort.h":
    void __bubble__(int arr[], int n);
    void __selection__(int arr[], int n);
    void __insertion__(int arr[], int n);
    void __radix__(int arr[], int n);
    void __mergeSort__(int arr[], int l, int r);
    void __quick__(int arr[], int low, int high);
    void __heap__(int arr[], int n);

def bubble(arr):
    if not isinstance(arr, array.array):
        arr = array.array('i', arr)
    cdef int[:] c_arr = arr
    cdef Py_ssize_t n = len(arr)
    cdef int* s_arr = <int *> malloc(n * cython.sizeof(int))
    cdef Py_ssize_t i
    for i in range(n):
        s_arr[i] = c_arr[i]
    __bubble__(s_arr, <int>n)
    for i in range(n):
        arr[i] = s_arr[i]
    free(s_arr)
    return arr

def selection(arr):
    if not isinstance(arr, array.array):
        arr = array.array('i', arr)
    cdef int[:] c_arr = arr
    cdef Py_ssize_t n = c_arr.shape[0]
    cdef int* s_arr = <int *> malloc(n * cython.sizeof(int))
    cdef Py_ssize_t i
    for i in range(n):
        s_arr[i] = c_arr[i]
    __selection__(s_arr, <int>n)
    for i in range(n):
        arr[i] = s_arr[i]
    free(s_arr)
    return arr

def insertion(arr):
    if not isinstance(arr, array.array):
        arr = array.array('i', arr)
    cdef int[:] c_arr = arr
    cdef Py_ssize_t n = c_arr.shape[0]
    cdef int* s_arr = <int *> malloc(n * cython.sizeof(int))
    cdef Py_ssize_t i
    for i in range(n):
        s_arr[i] = c_arr[i]
    __insertion__(s_arr, <int>n)
    for i in range(n):
        arr[i] = s_arr[i]
    free(s_arr)
    return arr

def radix(arr):
    if not isinstance(arr, array.array):
        arr = array.array('i', arr)
    cdef int[:] c_arr = arr
    cdef Py_ssize_t n = c_arr.shape[0]
    cdef int* s_arr = <int *> malloc(n * cython.sizeof(int))
    cdef Py_ssize_t i
    for i in range(n):
        s_arr[i] = c_arr[i]
    __radix__(s_arr, <int>n)
    for i in range(n):
        arr[i] = s_arr[i]
    free(s_arr)
    return arr

def merge(arr):
    if not isinstance(arr, array.array):
        arr = array.array('i', arr)
    cdef int[:] c_arr = arr
    cdef Py_ssize_t n = c_arr.shape[0]
    cdef int* s_arr = <int *> malloc(n * cython.sizeof(int))
    cdef Py_ssize_t i
    for i in range(n):
        s_arr[i] = c_arr[i]
    __mergeSort__(s_arr, 0, <int>(n - 1))
    for i in range(n):
        arr[i] = s_arr[i]
    free(s_arr)
    return arr

def quick(arr):
    if not isinstance(arr, array.array):
        arr = array.array('i', arr)
    cdef int[:] c_arr = arr
    cdef Py_ssize_t n = c_arr.shape[0]
    cdef int* s_arr = <int *> malloc(n * cython.sizeof(int))
    cdef Py_ssize_t i
    for i in range(n):
        s_arr[i] = c_arr[i]
    __quick__(s_arr, 0, <int>(n - 1))
    for i in range(n):
        arr[i] = s_arr[i]
    free(s_arr)
    return arr

def heap(arr):
    if not isinstance(arr, array.array):
        arr = array.array('i', arr)
    cdef int[:] c_arr = arr
    cdef Py_ssize_t n = c_arr.shape[0]
    cdef int* s_arr = <int *> malloc(n * cython.sizeof(int))
    cdef Py_ssize_t i
    for i in range(n):
        s_arr[i] = c_arr[i]
    __heap__(s_arr, <int>n)
    for i in range(n):
        arr[i] = s_arr[i]
    free(s_arr)
    return arr