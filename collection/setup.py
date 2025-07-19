# setup.py
from setuptools import setup, Extension
from Cython.Build import cythonize

def addDir(dirs, add = "src/"):
    return [add+i for i in dirs]

def generate_library(name, sources):
    ext = Extension(
        name=name,
        sources=sources
    )

    setup(
        ext_modules=cythonize([ext], compiler_directives={"language_level": "3"}, force=True)
    )

# generate_library(
#     "sort",
#     ["cython_src/sort.pyx"]+addDir(["heap.c", "merge.c", "quick.c", "radix.c", "regular.c", "zero.c"])
# )

# generate_library(
#     "zero",
#     ["cython_src/zero.pyx", "src/zero.c"]
# )

# generate_library(
#     "search",
#     ["cython_src/search.pyx", "src/search.c"]
# )

generate_library(
    "os",
    ["cython_src/os.pyx"]+addDir(["ls.c"])
)


