The python library made up of C language for faster calculation. implemented by cython.

The structure of library named "collection"
```sh
zero >
  - getMax(arr : list or array) -> int
  - getMin(arr : list or array) -> int
  - modulo2(a : int)            -> int
  - nearestEven(a : int)        -> int
  - incr(a : int)               -> int
  - decr(a : int)               -> int
sort >
  - bubble(arr : list or array)    -> array
  - selection(arr : list or array) -> array
  - insertion(arr : list or array) -> array
  - radix(arr : list or array)     -> array
  - merge(arr : list or array)     -> array
  - quick(arr : list or array)     -> array
  - heap(arr : list or array)      -> array
search >
  - linear(arr: list, target : int)
  - binary(arr : list, target : int)
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
