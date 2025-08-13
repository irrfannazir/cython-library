from cpython cimport PyObject, PyList_New, PyList_SET_ITEM
from libc.stdlib cimport malloc, free
from libc.string cimport strlen
from libc.errno cimport errno
from libc.stdio cimport perror

cdef extern from "../include/os.h":
    char** get_directory_contents(int *count)
    void free_directory_contents(char **contents, int count)

cdef extern from *:
    """
    #ifdef _WIN32
    #include <direct.h>
    #define getcwd _getcwd
    #else
    #include <unistd.h>
    #endif
    """
    char *getcwd(char *buf, int size)


cdef int PATH_MAX = 4096  # typical max path length

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


def getdir():
    cdef char *buf = <char *>malloc(PATH_MAX)
    if not buf:
        raise MemoryError("Failed to allocate memory for cwd buffer")

    cdef char *res = getcwd(buf, PATH_MAX)
    if res == NULL:
        free(buf)
        raise OSError(errno, "getcwd failed")
    else:
        py_str = buf.decode('utf-8')
        free(buf)
        return py_str
