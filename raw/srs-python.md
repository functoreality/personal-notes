x}# Python
	* 2026-09-20 从 tech.md 独立
* Linux 下执行 python3 file.py > res.out 发现的结果{n88n79}
	* 只有在 Python 执行完毕后，才会一次性把所有内容写入 res.out
	* 除非添加 -u 参数，表示 print 不缓存
* 集群上已有 Python 版本较低，希望使用新版本 Python，在已有 Anaconda 环境时的方式{n8hg94}
	* conda create -n 名称 python==3.8 （记得 conda create 即可）
	* 之后用 conda activate 名称 来进入该环境
* Python import 某包后提示不存在某 submodule，重点考虑的原因{n9cn02}
	* 由于重名导致 import 的东西来自当前目录，而非系统包目录
	* 例如：脚本文件与包重名，（试图从源码安装时，如 dedalus）当前所在位置就是包的源码的目录
* Python 自己写 module，内部 `import .submodule` 写法不对，应该写为{nbfl6j}
	* `from . import submodule`
* Python 中同时获得 `m//n, m%n`，可使用什么写法{n9ub4p}
	* divmod(m, n)
* Python 中希望传入不同参数时生成不同的函数（调用方式形如 `meta_func(a)(b)`），除使用嵌套的 def/lambda，还可以怎么实现{n9uj6b}
	* `class MetaFunc`，实现 `__init__(self, a), __call__(self, b)` 两个成员函数
	* 注：这种方式还可以进行类继承等
* Python 中函数修饰器构建，以下代码的含义{n9uj79}
	> ```python
	> def aop_with_param(args):
		def aop(func):
			def wrapper():
				...
			return wrapper
		return aop
	> ```
	* aop_with_param 函数负责生成修饰器，aop 是生成的修饰器，wrapper 是被修饰器修饰后得到的真实函数
* Python 面向对象编程，普通实例方法、classmethod、staticmethod 参数形式{nagn2d}
	* 
	> ```python
	> def m1(self, *args):
		pass
	> @classmethod
	> def m2(cls, *args):
		pass
	> @staticmethod
	> def m3(*args):
		pass
	> ```
* Python 面向对象编程，下面的代码中定义 __update 方法有什么用{ncub3p}
	> ```python
	> class MyCls:
		def update(self):
			# ...
		__update = update
	> ```
	* 避免被子类重载，形如 `__spam` 的标识符会被替换为 `_classname__spam`,
	* 注：称为 mangling 机制，[src](https://docs.python.org/3/tutorial/classes.html)
* Python 面向对象编程，下面的代码运行结果{o31k6h}
	> ```python
	> class Cls1:
		def __init__(self):
			super().__init__()
			print("1")
	> class Cls2:
		def __init__(self):
			print("2")
	> class Cls3(Cls1, Cls2):  # 注意顺序
			pass
	> obj = Cls3()
	> ```
	* 两行分别为：2，1（注意顺序）
	* 注：我猜测 `super()` 命令只是沿着 `mro()` 前进一位
* Python 面向对象编程，下面的代码运行结果{o31k6j}
	> ```python
	> class Cls1:
		def __init__(self):
			super().__init__()
			print("1")
	> class Cls2:
		def __init__(self):
			print("2")
	> class Cls3(Cls2, Cls1):  # 注意顺序
			pass
	> obj = Cls3()
	> ```
	* 只有 2
* Python 异常处理，下面的代码运行结果{nb4h14}
	> ```python
	> def test():
		try:
			return 0
		except:
			return 1
		else:
			return 2
		finally:
			return 3
	> print(test())
	> ```
	* 3
	* 解释：finally 总是会被执行
* Python 异常处理，下面的代码运行结果{nb4h16}
	> ```python
	> def test():
		try:
			return 0
		except:
			return 1
		else:
			return 2
	> print(test())
	> ```
	* 0
	* 解释：未报错时通常会执行 else 部分，但若 try 内有 return 则不会执行；这不同于 finally
* Python 异常处理，希望执行 main()，若报错，则执行 cleanup() 函数后再显示所报的错，如何编写{nc1b47}
	* 用 raise 语句抛出之前检测到的异常：
	> ```python
	> try:
		main()
	> except:
		cleanup()
		raise
	> ```
* （仅重读）Python 定义较长的不换行文本（不破坏每行最大 80 长度的代码风格），raise error 时常用{nbnk3o}
	> ```python
	> print("word1 "
		"word2 "
		"word3 ")
	> ```
	* 仅重读
* Python argparse 结果转 dict，写 dict(args) 不对，应该写（两种等价方式）{ncta15}
	* args.__dict__
	* vars(args) ，可视为前者的封装
* Python 语法 `*my_tuple` 从哪个 Python3 版本开始支持{o3qb0v}
	* 3.8（应该是，不完全确定）
* Python 函数定义 `def my_func(arg1, /, arg2)` 中 `/` 含义{o3qb1g}
	* arg1 为 positional-only parameter
* Python 函数定义 `def my_func(arg1, *, arg2)` 中 `*` 含义{o3qb1i}
	* arg2 为 keyword-only parameter
	* 记忆：`def my_func(arg1, *args, arg2)` 会自动使所有 positional parameter 放进 args 里面
* Python 函数定义语法 `def my_func(arg1, /, arg2, *, arg3)` 从哪个 Python3 版本开始支持{o3qb1k}
	* 3.8
	* 信源：[官方语法介绍文档](https://peps.python.org/pep-0570/#specification)
* Python 代码规范，若函数定义为 `def my_func(arg1, *, x=0)`，pylint 是否会提示 x 不符合 snake_case 命名规范{o3qb1m}
	* 不会；如果去掉 `*` 就会提示
* 华为的 Python 代码规范，类方法（2+3+2 种）的排列顺序{o41b2k}
	* `__init__`，其他魔法函数（如 `__len__`）
	* @property, @staticmethod, @classmethod（私有方法除外）
	* 普通方法 method，私有方法 _method
* Python 中语句 `"中文".isalpha()` 运行结果{o4km9x}
	* True
* Bash 中 `ls mydir/prefix_*.ext` 对应的 Python 语句{o62g57}
	* `glob("mydir/prefix_*.ext")`
	* 之前需要 from glob import glob
* Python 中语句 `out = (ch for ch in 'xyz')`，所得 `out` 变量的 type{o65h12}
	* generator
	* 注：如果希望得到 tuple，应写为 `out = tuple(ch for ch in 'xyz')`
* Bash 语句 `df path/to/dir` 同功能的 Python 语句{o7bn7q}
	* `shutil.disk_usage("path/to/dir")`
* 命令 `python3 my_module/main.py` 在该脚本包含 `import my_module` 语句时会报错，如何修改{o7ib7k}
	* `python3 -m my_module.main`
* Python 间隔一定时间 print 以避免过于频繁，我写的类在哪里可以找到{occb3x}
	* file:///home/yzh/nutstoreFiles/nutstore/homeworkTmp/PDElargeModel/dataset_construct/load_data/ace-data-estimate-eps2.py
* `bash -c 'conda activate env_name'` 运行会报错，原因 [?1]，解决方式 [?2]{p1ln0n}
	* 未加载 ~/.bashrc 导致未初始化 conda 运行环境（因此会提示要求先运行 `conda init`）
	* 运行前加载 ~/.bashrc ；可通过 `bash -ic 'conda activate env_name'`
	* 注：执行 Dedalus 安装脚本时需考虑先 source ~/.bashrc
* `bash -ic 'conda activate env_name'` 运行结束、返回原 shell 后，conda env 是否会改变{p1ln0p}
	* 不会，bash 退出后里面开启的 conda env 似乎也会退出
	* 注：执行 Dedalus 安装脚本后若发现不成功，后续手动操作需先切换 env
* Python 如何获取字符的 ASCII/Unicode 编码{pa1h13}
	* ord('a')
* Python 程序运行限制最大可用内存，用什么函数{pakb06}
	* resource.setrlimit
	* 以下无需回忆
	> ```python
	> import resource
	> soft, hard = resource.getrlimit(resource.RLIMIT_AS)
	> resource.setrlimit(resource.RLIMIT_AS, (4 * 10**9, hard))
	> ```
* Python einops 自动判断输入的 backend，相应包 import 位置 [?1]，执行 import 条件 [?2]{pani8l}
	* class `__init__()`
	* 类属性保存包名，sys.modules 判断是否已加载
* Python 希望检测首次 import 某包的位置，我当前方案{pas040}
	* 当前目录下新建 包名.py（空文件），从而 import 时会报错
* Python staticmethod：如下代码会报错，我目前的修改方式为{pb7h76}
	> ```python
	> class Cls1:
		@staticmethod
		def foo():
			print(0)
	> class Cls2:
		foo = Cls1.foo
	> Cls2().foo()
	> ```
	* Cls2 定义中 `foo = staticmethod(Cls1.foo)`
* Python print 变量值格式 `var = 1.00`（2 位小数）用 f-string 写为（报错信息常用）{pc7a7a}
	* `f"{var = :.2f}"`
	* 注：无空格版本同理
* Python `default if val is None else val` 何时不应简写为 `val or default`{pc7a8r}
	* val 值可能为 0，False，[]，(,)，"" 等
* Python 中通过 `[?] = [val1], val2` 语法为变量赋值 val1 的方式{q35898}
	* `(res,), _ = [val1], val2`
* Python `defaultdict(defaultdict(list))` 写法不对，应为{q5cn51}
	* `defaultdict(lambda: defaultdict(list))`
* Python List[Tuple[Any, Any]] 转置可用语句，即 `l3 = list(zip(l1, l2))` 逆运算 `l1, l2 = [?](l3)`{q5cn53}
	> 设定：l1, l2: List[Any]
	* `l1, l2 = zip(*l3)`
	* 注：这样所得的 l1,l2 其实是 tuple 类型，不过无关紧要
#### 数据结构
* Python 标准库：最「小」堆数据结构对应的数据类型 [?1]，push, pop 操作对应的函数 [?2]{o9ik0t}
	* list
	* heapq.heappush(heap, item)
	* heapq.heappop(heap)
* Python 标准库：最「大」堆如何实现{o9ik1h}
	* heapq 实现最小堆，人为反号可实现最大堆
* Python 标准库：希望从一系列字符串中 pop 最短的，相应的最小堆如何实现{o9jf2d}
	* heapq.heappush(heap, (3, "abc"))
	* 即堆元素用 tuple 数据类型，首元素为排序依据
* Python 标准库：「队列」数据结构对应的数据类型 [?1]，push, pop 操作对应的函数 [?2]{o9ik1v}
	* collections.deque
	* .append(x)
		* 注：该语法同 list；不是 push
	* .popleft()
		* 注：.pop() 是「栈」结构的 pop
* Python 标准库：获得 my_list 中「重复出现」次数前 k 多的元素（如词频统计），可用什么函数{o9ik3d}
	* cnt = collections.Counter(my_list)
	* cnt.most_common(k)
* Python 中 collections.Counter 继承自什么类 [?1]，对 key 增加一次计数的方式 [?2]，删除 key 所有计数的方式 [?3]{o9ik3r}
	* dict
	* cnt[key] += 1 （实例名称 cnt: Counter）
	* del cnt[key]
		* cnt[key] = 0 只置零不删除
* TRIE 树用 Python dict 实现，核心语句（我见过的版本）{p87a5p}
	> 背景：TRIE 树用于词汇表中找前缀
	* node = node.setdefault(ch, {})
	* [src](https://leetcode.com/problems/minimum-number-of-valid-strings-to-form-target-i/solutions/5788363/python3-trie-dp/)
* TRIE 树用 Python 实现方式（我见过的 5 行版本）{p87a5r}
	> 设定：已有词汇集合 words: List[str]
	> 提示：关键语句 node = node.setdefault(ch, {})
	> 背景：TRIE 树用于词汇表中找前缀
	* 
	> ```python
	> trie = {}
	> for word in words:
		node = trie
		for ch in word:
			node = node.setdefault(ch, {})
		node["#"] = word  # 仅重读：标记完整单词；一个合法单词可能是另一个的前缀
	> ```
#### special packages
* NumPy 中 one_hot 函数实现方式，目标效果：one_hot([[0,1],[2,0]],3) 得到：{n7rb2y}
	> [[[1. 0. 0.]
	> [0. 1. 0.]]
	> [[0. 0. 1.]
	> [1. 0. 0.]]]
	* one_hot = lambda x, num_classes: np.eye(num_classes)[x]
	* 相关：Python 笔记的((n7rb2y))，矩阵取子矩阵方法
* NumPy 中判断两个 float array 取值接近，可用的语句{n9tn1f}
	* np.allclose(a, b)
* NumPy 中取出数组中最大的 N 个元素，可调用的函数{nc8j0y}
	* np.partition(), np.argpartition() ；比完整排序高效
* NumPy 中已有数组 a[i,j], inds[i,j]，希望构造新数组 b 满足 b[i,j] = a[i,inds[i,j]]，如何实现{o13m7n}
	* b = np.take_along_axis(a, inds, axis=1)
* NumPy 中已有数组 x[i], y[j]，希望构造新数组 xy 满足 xy[i,j,:] = [x[i],y[j]]，我如何实现（xyz 同理）{o1fm58}
	* `xy = np.stack(np.meshgrid(x, y, indexing="ij"), axis=-1)`
	* 注意传入了 indexing 参数，否则结果为 xy[j,i,:] = [x[i],y[j]]
* np.mgrid 用法，如何为 [0,1]×[-1,1] 生成 101×256 网格{p2kb6v}
	* np.mgrid[0:1:101j, -1:1:256j]
	* 注意 j
	* 注：结果 shape (2, 101, 256)
* NumPy 中 np.stack 不会自动 broadcast，我如何处理{o1fm5x}
	* 内部嵌套一层 np.broadcast_arrays()
	* 例如，np.stack((a, b)) 报错，可改为 np.stack(np.broadcast_arrays(a, b))
* NumPy 中 np.concatenate(np.broadcast_arrays(a, b), axis=-1) 写法我觉得应慎用，原因{o1fm5z}
	* 若 shape 分别 [2, 3]、[] 则 broadcast 后均为 [2, 3]，而本来只需要后者变成 [2, 1]
* NumPy 中生成随机 bool 数组，我认为 `np.random.rand(2, 3) < 0.1` 写法不规范，更合适的写法为（两点）{o2oe5n}
	* rng.choice([False, True], p=[0.9, 0.1], size=(2, 3))
		* 也可以 ((o46a1p))rng.choice(2, p=[0.9, 0.1], size=(2, 3)).astype(bool)
	* 两个要点：1. 用 rng 而非 np.random；2. 用 choice 而非随机实数比较方式
	* 注：不用 choice 的例外情况为各位置取 True 概率不等，此时可写 `rng.random((2, 3)) < prob_arr`
* NumPy 随机 bool 数组生成，rng.choice([False, True]) 我觉得可以怎么改写{o46a1p}
	* rng.choice(2).astype(bool)
* NumPy 中 np.zeros(size) + value 可以改写为{o43g0q}
	* np.full(size, value)
	* 其中 value 支持 float、array 类型
* NumPy 中计算 a[1:] - a[:-1] 可通过调用哪个函数实现{o45g0e}
	* np.diff(a)
	* 注：同时还支持计算高阶导数（相当于递归调用）
* NumPy 中判断数组 a 是否递增可用什么函数{o45g0l}
	* np.all(np.diff(a) >= 0)
* 自然数的随机拆分：将自然数 n 拆为 k 个随机自然数之和，我写的 Python 代码可以在哪里找到{o5ta8k}
	* pdeformer2d/data/dedalus/common/utils_random.py
	* 注：正实数的随机拆分可用 dirichlet 分布实现
* 自然数的均匀拆分：将自然数 n 拆为 k 个自然数之和（确定性，非随机），使拆分尽量均匀，Python 中可以如何实现{o5ta8l}
	* np.diff(np.linspace(0, n, k + 1, dtype=int))
	* 注意是 k + 1
* NumPy 中 type(np.meshgrid(..)) 的运行结果{o65m33}
	* list
* NumPy 中有 k 数组 coord0, coord1, ...，shape 分别 [n0], [n1], ...。希望将其 reshape 为 [n0, 1, .., 1], [1, n1, .., 1], .., [1, 1, .., nk]，可用什么语句{o65m4t}
	* coord0, .., coordk = np.meshgrid(coord0, .., coordk, sparse=True, indexing="ij")
	* 重点在 sparse=True 这个参数
* NumPy 中 `np.arange(8)[1:-1]` 运行结果{o8qb4l}
	* [1,2,3,4,5,6] ，与直观预期相符
* 设 NumPy 数组 a shape [n], 则 a.repeat(r) 与 np.concatenate([a] * r) 结果是否一致{o8qe9a}
	* 不一致，相当于前者 shape [n*r]，后者 [r*n]
	* eg. `a = [1,2]`，`r = 2` 情形，前者 `[1,1,2,2]`，后者 `[1,2,1,2]`
	* 注：用于 MindSpore 规避 bool repeat 操作((ncbl5y))
* Python 中若 arr1, arr2 类型均为 Optional[NDArray]，则语句 `None in [arr1, arr2]` 是否合适{o75g8x}
	* 不合适；该语句相当于 (None == arr1) or (None == arr2)，取值均为 NDArray 时 == 得两个 NDArray，此时 or 运算不合法
* # NumPy 中计算二向量「张量积」，可用什么函数{oc2b5n}
	* np.outer(a, b)
* # NumPy 中计算两个 3D 向量的「叉乘/外积」，可用什么函数{oc2b5p}
	* np.cross(a, b)
* NumPy 函数，计算两个 3D 向量的叉乘 [?1]、张量积 [?2]{oc2b5p}
	* np.cross(a, b)
	* np.outer(a, b)
* NumPy 中若 `a = np.array([[0,1],[2,3],[4,5]])`，则 (1) a[(1,0)], (2) a[[1,0]], (3) a[np.array([1,0])], (4) a[(1,0), :] 结果分别是{ocgb15}
	* (1) 2 （相当于 a[1,0]），(2,3,4) [[2,3],[0,1]] （只沿第一个维度展开）
* NumPy 中 rfftn 输出的最后一个轴有什么特殊性 [?1]，理由 [?2]{paik2c}
	> 注：PyTorch rfft，MindSpore FNO dft 同理
	* 只返回非负频率的结果，从而 axis 长度近似减半
	* 实信号 FFT 结果满足某种 Hermite 对称性：x[i, j] = conj(x[-i, -j])
* NumPy 数组中 NaN、无穷等替换为正常值，可用的函数{paqn7i}
	* np.nan_to_num()
* PyTorch 中希望变量 a 反传时将梯度全部给 b（同尺寸张量），方式{n61g1t}
	* a = (a - b).detach() + b
	* 注：用于 Gumbel-softmax trick
* PyTorch 中对 model 有内部 loss（如正则化），model 前传部分如何封装{n8m86o}
	* ...return y_pred, loss_in
	* loss = loss_fn(y_pred, y_label) + loss_in
	* loss.backward()
* Python 中用 SciPy 包对物理场插值：{o63b9o}
	> ```python
	> interp = RegularGridInterpolator((xc_old, yc_old), field_old)
	> field_new = interp((xc_new, yc_new))
	> ```
	> 若希望物理场 shape 由 [m1, m2] 变为 [n1, n2]，则 xc_old, yc_old, xc_new, yc_new 的 shape 分别应为
	* xc_old: [m1], yc_old: [m2]
	* xc_new: [n1, 1], yc_new: [1, n2]；或者两个都 [n1, n2]
* SciPy 用于对物理场插值，如下传入 list 而非 tuple，会在什么地方报错：{o65m3p}
	> ```python
	> interp = RegularGridInterpolator([xc_old, yc_old], field_old)
	> field_new = interp([xc_new, yc_new])
	> ```
	* 第一句类初始化正常，第二句 call 时报错
	* 注：该结论可能与 SciPy 版本相关
* Matplotlib 如何对 log(data) 绘制直方图{nc1e0m}
	* 自己定义收集数据的区间：logbins = np.logspace(..)
	* 然后 plt.hist(data, bins=logbins)
	* [src](https://www.pythonpool.com/matplotlib-log-scale/)，文中搜索“logscale Histogram”
* Matplotlib 如何绘制竖直线{o36a1x}
	* plt.axvline(x=1.5)
	* 注：应该是 axis verticle line 的缩写
* Matplotlib 如何依据 cmap 选曲线颜色（各曲线对应一个连续取值的参数，据参数取值选颜色）{o36a80}
	* my_cmap = plt.get_cmap('viridis')
	* plt.plot(.., color=my_cmap(normalized_param))
	* 注：normalized_param 放到 [0,1] 区间
* Matplotlib 提供了一个类，将 [min,max] 区间的数据归一化到 [0,1] 区间，具体用法{o36a8i}
	* norm = plt.Normalize(min_val, max_val)
	* 之后 normalized_val = norm(original_val)
* Matplotlib 如何读图片文件为 NumPy 数组、以及将数组存为图片{o3ik9w}
	* plt.imread(fname)
	* plt.imsave(fname, arr)
* Matplotlib 中 ax.pcolormesh() 希望按正方形（而非长方形）显示，需要什么命令{oamh9q}
	* ax.set_aspect(1)
* Dedalus 中计算 ‖∇u‖² 的代码{q35c3r}
	* d3.trace(grad_u.T @ grad_u)
	* 参考：PDEFoundry 项目下 `single-pde-data-verify/try_cns-dedalus.py`
* Dedalus 中计算 ∇·(u⊗v) 我推测代码可以怎么写{q35c3t}
	> 设定：要算的是 ∂ᵢ(uᵢvⱼ)
	* 先变形为 u·∇v + (∇·u)v
	* 注：原准备用于求解可压 NS 方程
#### mindspore
* {x}# MindSpore 框架用法
	* [doc](https://mindspore.cn/tutorials/zh-CN/master/index.html)
* MindSpore 中若前向网络有多输出分量 f(x) = (f1(x), f2(x))，则直接写 ms.grad(f) 结果为{n7pb0k}
	* f1 + f2 的 grad；MindSpore 会对所有输出结果求和后再统一求导
	* [src](https://mindspore.cn/tutorials/zh-CN/master/advanced/derivation.html)
		> 梯度计算时由于MindSpore采用的是反向自动微分机制，会对输出结果求和后再对输入求导。
* MindSpore 中若前向网络有多输出分量 f(x) = (f1(x), f2(x))，则希望只计算 f1 导数的写法{n7pb14}
	* ms.grad(f, hasAux=True)
* MindSpore 语法：NumPy/PyTorch 中 a[mask] = b[mask]（mask 为 bool 型）在 MindSpore 中写法{n81i8g}
	* a = ops.where(mask, b, a)
	* 注：PyTorch 两种写法均可，但 Ascend 芯片不支持直接元素赋值，只能用这种
* PyTorch、MindSpore 中 a = [[1,2],[3,4]], m = [True, False]，则二语句运行结果：(1) a[m] = 0, (2) a = a.masked_fill(a, m, 0){n81j3j}
	* (1) a = [[0,0],[3,4]]
	* (2) a = [[0,2],[0,4]]
	* 解释：后者 m 自动 broadcast 为与 a 相同的张量，故从后面的角标开始作用（这点同四则运算）
* MindSpore debug：报错的 call stack，若出现自己代码（construct()）中的 a.transpose(..), a.permute(..) 等语句，则真正出错的位置可能是{n84l60}
	* 其前面的 ops.bmm(..)
	* 具体出错方式可在 call stack 该处下方（MindSpore 库代码）找到。
* MindSpore 中 nn.Embedding() 调用时输入索引超出字典大小（如下方示例代码），会引发的报错为{n8891g}
	> emb = nn.Embedding(3, 2)
	> x_typ = ms.Tensor([[0,2,3,5]], dtype=ms.int32)
	> x_feat = emb(x_typ)
	* 不会报错（不同于 PyTorch）！超出范围的索引位置赋予全 0 embedding；只有反传时才会报错
* MindSpore debug：若前传不报错、反传报错，可能的出错位置有{n8891u}
	* nn.Embedding() 调用时输入索引超出字典大小
* （重读即可）MindSpore debug：Ascend 上反传出错，CPU 上或不反传都不出错，可能是因为{n88f3a}
	* 使用了 Dropout（可能目前 Ascend 芯片支持不好）
* MindSpore debug：CPU、PYNATIVE 模式下，模型前传报错张量尺寸不对（如 transpose 涉及的张量轴个数不等于参数轴个数），但实际检查发现张量尺寸是对的，则可能的原因{naca0l}
	* 开启了 ms.jit
	* 注：其实只是 PYNATIVE 的问题，CPU、GRAPH 下开 ms.jit 不会报错
	* 注：当时环境为 大连 AICC ModelArts
* MindSpore debug：CPU、PYNATIVE 模式下发现第一次前传 loss 正常，重新前传 loss 变成 nan（期间未进行参数更新，故理论上应为相同输出），解决方案可能为{nach6n}
	* PYNATIVE 改成 GRAPH mode（不知道为什么 PYNATIVE）
	* 注：当时环境为 大连 AICC ModelArts
* MindSpore debug：forward_fn 内若出现 class_obj.method(..) 表达式，前传会报错张量形状不对，解决方案{nack5p}
	* 在 forward_fn 外定义 method = class_obj.method ，从而 forward_fn 内只出现 method(..)
* MindSpore 混合精度计算，（我目前知道的）哪些模块应该保持 float32{nalb18}
	* softmax, layernorm
* MindSpore 数据加载，若共 5 条数据、数据并行 4 卡加载，则各卡加载的数据条数为{nave13}
	* 所有卡均为 2；此时有部分数据被多次加载
	* 注：当时的环境为 大连 AICC，MindSpore 2.0
* MindSpore 自带的 LayerNorm 不支持二阶导，如何解决{nbfg54}
	* 自己写一个，可抄 Pangu 的代码
	* 来源：2023-11-15 clh MFN 代码中用的类似的操作
* MindSpore 自带的 LayerNorm 中 epsilon 默认值不合适，应设为{nbfg5d}
	* 默认 1e-7，应设 1e-5（与 PyTorch 一致）
	* 相关：(('nbfg0u))LaViT 训练改成 1e-6 都会崩
* MindSpore 中 ops.select(mask, tensor1, tensor2) 或 ops.where(..)，若张量 shape 为 mask [2, 1], tensor1 tensor2 [2, 2]，则 CPU、Ascend 上是否能正常运行{ncbl5n}
	* CPU 正常，Ascend 上会报错
* MindSpore 中 mask.repeat(..) 不支持 mstype.bool_ 类型，我想到的 3 种解决方案{ncbl5y}
	* 1. 先转 NumPy
	* 2. 利用 ops.cat([mask] * N, axis=..) 或 ops.stack(..)
		* 小心 shape：((o8qe9a))repeat 为 [d] -> [d*N], cat 为 [d] -> [N*d]；可考虑 stack 再 reshape
	* 3. 先 cast 成 mstype.int16
* MindSpore 中大数据训练时是否应开启数据下沉{o4pa6z}
	* 不应该开启
* MindSpore 中希望让大网络加载已训好的小网络的部分参数（只加载 shape 相同的），我如何获知大网络参数的 shape{o7ln2m}
	* 先保存当前大网络参数到文件，再加载得 param_dict
	* 注（仅重读）：运行不要用 MPI；我的代码见 file:///home/yzh/nutstoreFiles/nutstore/homeworkTmp/PDElargeModel/dataset_construct/load-ckpt-from-smaller-model.py
* MindSpore nn.Cell 实现方式，model._cell 如何记录所有类型为 Cell 的属性{p2af09}
	* 重载了 `__setattr__()` 方法，识别到传入 Cell 时登记到 _cell 属性中
* np.take_along_axis 在 MindSpore 中类似功能的函数{p6k939}
	* ops.gather
* MindSpore DropPath 代码可在哪找到{p6kb5b}
	* MindEarth AFNO
	* 具体地：mindscience/MindEarth/mindearth/cell/neural_operators/afno2d.py
	* 注：mindflow.cell.basic_block.py 似乎也有
* 将 PyTorch 等其他框架代码转换成可 MindSpore 运行，工具名称{p74f2a}
	* MSAdapter
	* [公众号介绍](https://mp.weixin.qq.com/s/F4HQzW_a3O-NAkMfc8zkbw)
	* 2026-03-17 补：另可用 agent skill https://skillsmp.com/skills/vigo999-mindspore-skills-skills-model-migrate-skill-md
* 中关村学院开发机上 训练杀死后 NPU 仍占用，我曾用什么命令解决{p74f5u}
	* pkill python3
	* 注：npu-smi info 中未看到占用 NPU 的进程，但 `ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head` 命令能看到
* MindFlow 对 [H,W] 输入 dft2d，modes=(m1,m2)，输出 shape [?1]，我推测的补零动机 [?2]{pajb0b}
	* [H,m2]
	* 非末维的变换结果中间补 0，以防止用户误解数据含义，且更容易与 FFT 比较结果、联合使用
* MindSpore Ascend 图模式 debug，print 建议用什么方式，区分少量、大量内容{pb1b2v}
	* 少量内容：ops.print_()
	* 大量内容：Summary 功能
* PyTorch、MindSpore 权重初始化，normal 的默认 std 分别为{pb5d8a}
	* PyTorch 1，MindSpore 0.01
* NN 训练中 label 含 NaN，为何 MSE loss 用 nanmean 仍有问题{q2qk3n}
	* 关键：d = NaN 导致 BP 时 ∂d²/∂d = NaN
	* 具体地：设某元素 label n = NaN、预测 x，d = x - n = NaN，loss l(d²) ≡ 0
	* 则 ∂l/∂x = ∂l/∂d²·∂d²/∂d·∂d/∂x = 0·NaN·1 = NaN
* MindSpore cell.parameters_and_names() 返回的 name、param.name 有什么不同 [?1]，保存的 ckpt 文件内容采用哪种 [?2]{q3ti6c}
	* 假定有成员变量 layers: nn.CellList
	* name == layers.0.sub_network...
	* param.name == 0.sub_network...
	* 同 param.name
* PyTorch model.state_dict() 在 MindSpore 中对应{q3ti6e}
	* model.parameters_dict()
