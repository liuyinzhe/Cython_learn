cdef double a = 3.14
cdef double *b = &a # 指针
# & 符号取内存地址

print(f"a = {a}")
# 修改 b 指向的内存
b[0] = 6.28
# b[0] 就是 b 指向的内存

# 再次打印 a
print(f"a = {a}")