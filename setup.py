# setup.py
from setuptools import setup, Extension
from Cython.Build import cythonize


ext = Extension(
    name="sort",
    sources=["sort.pyx", "heap.c", "merge.c", "quick.c", "radix.c", "regular.c", "zero_c.c"]
)

setup(
    ext_modules=cythonize([ext], compiler_directives={"language_level": "3"}, force=True)
)

ext = Extension(
    name="zero",
    sources=["zero.pyx", "zero_c.c"]
)

setup(
    ext_modules=cythonize([ext], compiler_directives={"language_level": "3"}, force=True)
)

