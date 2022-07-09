cdef int i
cdef int j
cdef float k
# Python 和 C ; 这里定义的风格为python 
# cdef 表示声明的变量是C语言的，而不是python的实现

'''
# 按照C语言风格的多个变量同时声明和赋值
cdef int i, j, k
cdef float x, y

# 声明的同时并赋值
cdef int a = 1, b = 2
cdef float c = 3.0, b = 4.1
'''
# 
j = 0
i = j
k = 12.0
j = 2 * k
assert i != j

# cdef 在函数中可以保持为局部变量

def foo_c():
    # 这里的 cdef 是缩进在函数内部的
    cdef int i
    cdef int N = 2000
    # a 没有初始值，默认是零值，即 0.0
    cdef float a, b = 2.1
    
def foo_python():
    # 这种声明方式也是可以的
    # 和上面的方式是完全等价的
    cdef:
        int i
        int N = 2000
        float a, b = 2.1
    # 但是声明变量时，要注意缩进
    # Python 对缩进是有讲究的, 它规定了作用域
    # 所以Cython在语法方面还是保留了Python的风格
    

    # 如果是动态声明，以下都是合法的
# a 可以指向任意的对像，没有限制
a = 123
a = []

# 但如果是静态声明
# 那么 b 的类型必须是整型
cdef int b = 123
# 将一个列表赋值给 a 是会出现编译错误的
b = []  # compile error
