# 信息来自 古明地觉的编程教室

[1] static 不是一个有效的 Cython 关键字

[2] const 是支持的，但是它只能在定义函数参数的时候使用

[3]Cython 可以使用的 C 类型不仅有 int 和 float，像 short, int, long, unsigned short, long long, size_t, ssize_t 等基础类型都是支持的，声明变量的方式均为 cdef 类型 变量名。声明的时候可以赋初始值，也可以不赋初始值。除了基础类型，还有指针、数组、定义类型别名、结构体、共同体、函数指针等等也是支持的
