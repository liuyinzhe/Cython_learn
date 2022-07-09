cdef double a = 3.14
cdef double *b = &a  #C 中的指针(内存地址)，对于array,取值，可以取第一个元素；

print(f"a = {a}")
# 修改b指向的内存 ，指向b地址 
b[0] = 6.28
# 再次打印a
print(f"a = {a}")


cdef int a, b, c 
t = (a, b, c)
