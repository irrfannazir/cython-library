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

generate_library("os", ["cython_src/os.pyx"]+addDir(["ls.c"]))

# ext = Extension(
#     name="sort",
#     sources=["cython_src/sort.pyx"]+addDir(["heap.c", "merge.c", "quick.c", "radix.c", "regular.c", "zero.c"])
# )

# setup(
#     ext_modules=cythonize([ext], compiler_directives={"language_level": "3"}, force=True)
# )

# ext = Extension(
#     name="zero",
#     sources=["cython_src/zero.pyx", "src/zero.c"]
# )

# setup(
#     ext_modules=cythonize([ext], compiler_directives={"language_level": "3"}, force=True)
# )

# ext = Extension(
#     name = "search",
#     sources=["cython_src/search.pyx", "src/search.c"]
# )

# setup(
#     ext_modules = cythonize([ext], force=True)
# )


# ext = Extension(
#     name = "search",
#     sources=["cython_src/search.pyx", "src/search.c"]
# )

# setup(
#     ext_modules = cythonize([ext], force=True)
# )

