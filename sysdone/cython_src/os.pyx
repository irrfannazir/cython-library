from libc.stdlib cimport free
from cpython cimport PyObject, PyList_New, PyList_SET_ITEM

cdef extern from "../include/os.h":
    char** get_directory_contents(int *count)
    void free_directory_contents(char **contents, int count)

def ls():
    cdef int count = 0
    cdef char **contents = get_directory_contents(&count)
    
    if contents == NULL:
        return []
    
    try:
        result = []
        for i in range(count):
            # Convert each C string to Python string
            item = contents[i].decode('utf-8')
            result.append(item)
        return result
    finally:
        free_directory_contents(contents, count)
