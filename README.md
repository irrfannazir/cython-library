The python library made up of C language for faster calculation. implemented by cython.

The structure of library named "collection"
```sh
zero Module
-----------

getMax(arr: list or array) -> int
- Returns the maximum element in the array.
- Example: getMax([1, 4, 2, 7]) => 7

getMin(arr: list or array) -> int
- Returns the minimum element in the array.
- Example: getMin([1, 4, 2, 7]) => 1

modulo2(a: int) -> int
- Returns the remainder when a is divided by 2.
- Example: modulo2(5) => 1, modulo2(4) => 0

nearestEven(a: int) -> int
- Returns the nearest even integer less than or equal to a.
- Example: nearestEven(7) => 6

incr(a: int) -> int
- Returns a + 1.
- Example: incr(3) => 4

decr(a: int) -> int
- Returns a - 1.
- Example: decr(3) => 2


sort Module
-----------

bubble(arr: list or array) -> array
- Sorts the array using Bubble Sort algorithm.
- Time Complexity: O(n^2)

selection(arr: list or array) -> array
- Sorts the array using Selection Sort algorithm.
- Time Complexity: O(n^2)

insertion(arr: list or array) -> array
- Sorts the array using Insertion Sort algorithm.
- Time Complexity: O(n^2)

radix(arr: list or array) -> array
- Sorts the array using Radix Sort algorithm (non-comparative).
- Time Complexity: O(nk)

merge(arr: list or array) -> array
- Sorts the array using Merge Sort algorithm.
- Time Complexity: O(n log n)

quick(arr: list or array) -> array
- Sorts the array using Quick Sort algorithm.
- Time Complexity: Best/Average = O(n log n), Worst = O(n^2)

heap(arr: list or array) -> array
- Sorts the array using Heap Sort algorithm.
- Time Complexity: O(n log n)


search Module
-------------

linear(arr: list, target: int)
- Performs a Linear Search for the target.
- Time Complexity: O(n)
- Returns index if found, else -1.

binary(arr: list, target: int)
- Performs a Binary Search on a sorted array.
- Time Complexity: O(log n)
- Returns index if found, else -1.

```

To clone the git
```sh
git clone https://github.com/irrfannazir/cython-library/
cd cython-library
```

To compile it in your system.
On Linux
```sh
source env/bin/activate #Activate the Environment
cd collection
python setup.py build_ext --inplace #This setup.py compiles the program already written
cd .. #Go back to the previous directory
deactivate #This environment is only needed to compile the program
```


On Windows
```sh
./compile.bat
```
