def automatic_inference():
    i = 1
    d = 2.0
    c = 3 + 4j
    r = i * d + c
    return r

# 对于 d = 2.0，则可以自动推断为 C 的 double，因为 Python 的浮点数对应的值在底层就是使用一个 double 来存储的。
# 变量 d 看似是一个 Python 的对象，但是 Cython 在执行的时候会将其视为 C 的 double 以提高性能。



cimport cython

@cython.infer_types(True) # 强制猜想，一般不推荐
def more_inference():
    i = 1
    d = 2.0
    c = 3 + 4j
    r = i * d + c
    return r
