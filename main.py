import collection.zero as z
import collection.sort as s
from time import time
arr = [5, 2, 9, 1, 5, 6, 3, 4, 2, 3, 6, 3, 8, 3, 7, 2, 1, 4, 6, 3, 5, 6, 2, 4, 33, 42, 13, 23, 12, 34, 45, 56, 67, 78, 89, 90]


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
for i in range(100000):
    s.insertion(arr)
b = time() - a 
print("Insertion sort time:", b/100000)

a = time()
for i in range(100000):
    insertion_sort(arr)
b = time() - a
print("Insertion sort time:", b/100000)
