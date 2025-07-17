# Collection library

A simplest and lightwieghted python library for executing calculations and algorithm effectively.    


*Why this even exists?*    
This is the fastest way possible for calculation.

*How did this made?*    
The functions are written in C programming language.    
Then, the function integrate with python, using cython.   

*How do i use it?*    
>> Clone it in your project.   
>> Then type "import collections as c"
>> Simply you can use all the function from collection.    
For example,   
>> Then type "print( c.zero.getMax([3,5,6,1]) )"

---

## Documentation

```sh
Collection Module Documentation
===========================

Module: zero
------------

getMax(arr: list or array) -> int
	- Returns the maximum element in the given list or array.
	- Example: getMax([1, 4, 2, 7]) -> 7

getMin(arr: list or array) -> int
	- Returns the minimum element in the given list or array.
	- Example: getMin([1, 4, 2, 7]) -> 1

modulo2(a: int) -> int
	- Returns the remainder when 'a' is divided by 2 (a % 2).
	- Example: modulo2(5) -> 1

nearestEven(a: int) -> int
	- Returns the nearest even number less than or equal to 'a'.
	- Example: nearestEven(7) -> 6

incr(a: int) -> int
	- Returns the value of 'a' incremented by 1.
	- Example: incr(3) -> 4

decr(a: int) -> int
	- Returns the value of 'a' decremented by 1.
	- Example: decr(3) -> 2


Module: sort
------------

bubble(arr: list or array) -> array
	- Sorts the array using the Bubble Sort algorithm.
	- Time Complexity: O(n^2)

selection(arr: list or array) -> array
	- Sorts the array using the Selection Sort algorithm.
	- Time Complexity: O(n^2)

insertion(arr: list or array) -> array
	- Sorts the array using the Insertion Sort algorithm.
	- Time Complexity: O(n^2)

radix(arr: list or array) -> array
	- Sorts the array using the Radix Sort algorithm (non-comparative).
	- Time Complexity: O(nk), where k is the number of digits.

merge(arr: list or array) -> array
	- Sorts the array using the Merge Sort algorithm.
	- Time Complexity: O(n log n)

quick(arr: list or array) -> array
	- Sorts the array using the Quick Sort algorithm.
	- Time Complexity: Best/Average: O(n log n), Worst: O(n^2)

heap(arr: list or array) -> array
	- Sorts the array using the Heap Sort algorithm.
	- Time Complexity: O(n log n)


Module: search
--------------

linear(arr: list, target: int) -> int
	- Performs a Linear Search for the target in the list.
	- Time Complexity: O(n)
	- Returns the index if found, else -1.

binary(arr: list, target: int) -> int
	- Performs a Binary Search for the target in a sorted list.
	- Time Complexity: O(log n)
	- Returns the index if found, else -1.


Module: os
--------------

ls() -> list
	- List all the directories in the current directory


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
