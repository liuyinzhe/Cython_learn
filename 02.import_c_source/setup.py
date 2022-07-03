// python setup.py build

from distutils.core import setup, Extension
from Cython.Build import cythonize

"""
之前是直接往 cythonize 里面传入一个文件名即可
但是现在我们传入了一个 Extension 对象
通过 Extension 对象的方式可以实现更多功能

这里指定的 name 表示编译之后的文件名
显然编译之后会得到 wrapper_cfib.cp38-win_amd64.pyd

如果是之前的方式, 那么得到的就是 fib.cp38-win_amd64.pyd
默认会和 .pyx 文件名保持一致, 这里我们可以自己指定

sources 则是代表源文件，需要指定 .pyx 以及使用的 c 源文件
"""
ext = Extension(name="wrapper_cfib", 
                sources=["fib.pyx", "cfib.c"])
setup(ext_modules=cythonize(ext, language_level=3))
