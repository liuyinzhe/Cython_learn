import pyximport
# 这里同样指定 language_level=3
# 表示针对的是 py3
pyximport.install(language_level=3)
# 执行完之后, 解释器在导包的时候就会识别 Cython 文件了
# 当然这个过程也是需要先编译的

import fib
print(fib.fib(20))  # 6765.0
