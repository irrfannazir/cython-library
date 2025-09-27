import sysdone.zero as z
import sysdone.sort as s
from time import time
arr = [34, 45, 34, 78, 56, 34, 46, 37, 78, 73, 68, 65 , 5, 2, 9, 1, 5, 6, 3, 4, 2, 3, 6, 3, 8, 3, 7, 2, 1, 4, 6, 3, 5, 6, 2, 4, 33, 42, 13, 23, 12, 34, 45, 56, 67, 78, 89, 90]
arr = arr * 10

def insertion_sort(data):
    """Sorts a list in-place using the insertion sort algorithm."""
    n = len(data)
    for i in range(1, n):
        key = data[i]  
        j = i - 1      

        while j >= 0 and key < data[j]:
            data[j + 1] = data[j]
            j -= 1

        data[j + 1] = key

a = time()
iter = 100000
for i in range(iter):
    s.insertion(arr)
b = time() - a 
print("Sysdone Insertion sort time:", b/iter)

a = time()
for i in range(iter):
    insertion_sort(arr)
b = time() - a
print("Python Insertion sort time:", b/iter)
