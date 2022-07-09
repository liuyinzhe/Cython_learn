import pyximport
pyximport.install(language_level=3)

import cython_test
"""
a = 3.14
a = 6.28
"""

# 静态声明的变量如果没有指定初始值
# 那么默认为零值
print(cython_test.t)  # (0, 0, 0)
print(type(cython_test.t))  # <class 'tuple'>
print(type(cython_test.t[0]))  # <class 'int'>

# 虽然t可以访问，但 a、b、c 是无法访问的，因为它们是 C 中的变量
# 使用 cdef 定义的变量都会被屏蔽掉，在 Python 中是无法使用的
try:
    print(cython_test.a)
except Exception as e:
    print(e)  # module 'cython_test' has no attribute 'a'
