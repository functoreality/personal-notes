n96i8s}浏览器中复制代码块，方式
	* Surfingkeys 快捷键 yq
* mg drill 时需中途退出，若希望保存当前已复习部分结果，退出方式为 [?]，不希望保存的退出方式 [?]{naum6j}
	* Ctrl+C
	* Ctrl+D
* ML 实验 config.yaml 文件批量自动生成（仅若干参数有差异），我采用的做法{nbpj53}
	* 1. 维护 config_base.yaml，其中待生成部分使用标记 `<TOFILL-name>`
	* 2. 使用文本替换获得具体的 config 文件
		* eg. bash sed，Python str.replace()
	* 注：最初在 PDEformer 与 baseline 对比的实验中使用该方案
* 中文排版规范：数字与单位间是否需要空格（“10TB” or “10 TB”）{o3fb2w}
	* 不需要，前者正确
	* [src](https://hub.nuaa.cf/mzlogin/chinese-copywriting-guidelines)
* 英文排版规范：连接号，数字（pages 1–10）、日期（Tuesday–Thursday）、年份（1949–2018）、地名（a Beijing–Shanghai train）所用的连接号名称{o3fb3h}
	* en dash（比连字符 hyphen 长，比 em dash 短）
	* [src](https://sspai.com/post/45516)，注意中文不需要
* 中文排版自动规范化，我在使用的 Vim 插件命令{o3fb5l}
	* :PanguAll
	* [src](https://hub.nuaa.cf/mzlogin/chinese-copywriting-guidelines)，该自动规范化功能有 Python 等其他语言的实现
* PPT 协作编辑，金山文档 kdocs.cn 网页版不允许插入大于 20MB 的文件（如 GIF 图），我的解决办法{o3lc27}
	* 1. 本地新建空白 PPT，并放入该 GIF 图像
	* 2. 该 PPT 上传金山文档
	* 3. 同时打开待编辑 PPT 与新上传 PPT，将后者里的 GIF 图像复制到前者当中
* Markdown 转 LaTeX，针对其中的图片语法，我写的 Vim script 可以在哪里找到{o3ub88}
	* SRS 中搜索 vim-md2tex-img 找到这条笔记（去掉前缀 vim- 也行）
	* （以下无需回忆）将以下 Vim script 保存到 `md2tex-fig.vim` 文件（因为比较长），之后敲 `:so md2tex-fig.vim` 即可
		* 注：该脚本针对 DOCX 转 Markdown 后的结果
	> ```vim
	> s/!\[\](media\/image\(\d\+\)\.png)\n图 \d\+ \(.\+\)$/
	> \\\begin{figure}[htpb]
	> \\r\t\\centering
	> \\r\t\\includegraphics[width=\\linewidth]{media\/image\1.png}
	> \\r\t\\caption{\2}%
	> \\r\t\\label{fig:\1}
	> \\r\\end{figure}/
	> ```
	* 相关：((o3ub9f))主笔记-非科研-技术-文本-格式转换
* 我在电脑上将文件照片（或局部字迹）处理为黑白图像，使用了什么方式{p19a82}
	* Python 中依据颜色取值划分黑白二区域（划分阈值可调）
		* 注：为避免锯齿化，可先 Gwenview 放大（会对像素插值）再处理
	* 注：当时所用代码
	> ```python
	> img = plt.imread("a.jpg")
	> img = img.mean(axis=-1)
	> img2 = np.where(img > 0.75 * img.mean(), 1., 0.)
	> img2 = np.stack([img2] * 3, axis=-1)
	> plt.imsave("b.png", img2)
	> ```
	* 2026-06-19 更新：AI 专为文件扫描压缩写了 `~/utility/hist/img-binarize.py`
* 文本文件中对行批量处理（规则明确），我常用的三种技术手段{p5498j}
	* Vim，shell（sed,awk），Python 短脚本
	* 注：复杂的脚本可让 AI 写
* 图片 OCR（小批量），我目前采用的技术手段{p75946}
	* 微信提取文字
* draw.io 调整文字（不改图形元素等），我用的方式{p7sh40}
	* 直接 Vim 编辑 .drawio 文件
* draw.io 网页版已打开一个文件，若希望改打开另一文件，我用的方式{p7sh42}
	> 不打开新网页：速度慢，且会遗忘导出 PDF 的设定
	* 文件—关闭，之后将新文件拖到页面内
* 如何将 Markdown 内容复制到浏览器富文本编辑框（如邮件多媒体格式，一堂作业系统）{p8ph9o}
	* 先渲染网页，从网页中复制进去
* 手机 Trime 怎么删除自造词（按我当前的配置）{p8vn7z}
	* 退格键上滑
* 视频录制并 AI 总结，我听说可用的工具{p99b8h}
	* 单人腾讯会议放视频，同时开启录屏 + AI 总结
	* 来源：一堂 25 秋马群群友建议
* 查看透明背景的 PNG、Webp 图片，我目前用的工具{p9jl6q}
	* Firefox
* 某软件编译教程说依赖另一软件，但没给具体安装说明，我打算怎么处理{pch08d}
	> 原场景：Dedalus pip 安装教程说需先安装 FFTW3
	* 直接尝试安装，报错信息输入搜索引擎看如何解决
	* 注：没必要自己尝试预先安装，这样的安装结果可能未必有用，白白浪费时间和磁盘空间
* LineageOS 上允许应用“显示在其他应用上层”，设置方式{q1pj7f}
	* 设置-应用列表，找到「该应用」，右上角“允许受限制的设置”
* AI 训练 MXFP4 浮点精度格式的数据结构{q5rf2x}
	* 张量切成小块（比如每 32 个元素一组）
	* 每小块分配一个共享指数（E8M0 格式）
	* 块内每元素用 4 比特浮点数表示
	* 注：见主笔记((srs:q5rf9g))
* OpenCode thinking 输出暂停，当前如何确认是否仍在产生新输出{q6e83s}
	* 尝试导出 session 会话历史，看最后的文字是否有更新
* 微信视频号链接获取方式{q75m2h}
	* PC 端打开→ 分享→ 复制链接
	* 注：可能需先收藏 or 转发到文件传输助手
* frontend-design、ui-ux-pro-max-skill 功能互补性，我听到的说法{q7dl3u}
	* 前者负责画面出彩，视觉上好看，没有 AI 味
	* 后者负责场景适配，如商业、医疗等场景分别什么配色有安全感、什么字体专业，给避坑指南（哪些设计不能碰）
		* 据说有 160 行业的深度规则
		* 安排交互细节、动效走位等，另可生成持久化复用的设计系统（文档），无需每次从零开始打磨风格
	* [src](https://weixin.qq.com/sph/AC2Ojh7GI7) 8:00
* 网页翻译后想临时看原文，我用的方案{q7q95c}
	* yt 新建标签页，原来已翻译页面不动
* 微信如何发 webp 文件{q8nk6t}
	* 后缀名改 png 即可（无需转格式），可同步避免图片被压缩
	* 注：缺点是聊天界面无缩略图、无法滑动查看前后图片；发朋友圈则正常

### 数据结构与算法
* 数据结构：完全二叉树（用于构造堆）的定义 [?1]，计算机表示可用最简单的 [?2] 数据结构{o95973}
	* （除末层）所有层满，末层所有结点靠左
	* 数组
* 数据结构：最小堆（min-heap）是一种什么样的完全二叉树{o95975}
	* 父节点的值小于子节点
* 数据结构：最小堆（min-heap）插入新元素（push）流程，两步{o95977}
	* 新元素插入堆尾部
	* （该元素）不断上浮调整位置
* 数据结构：最小堆（min-heap）移除最小元素（pop）流程，三步{o95979}
	* 删除堆顶元素
	* 末尾元素放到堆顶
	* （该末尾元素）不断下沉调整位置
* 数据结构：获得序列的第 k 大元素、前 k 大元素，分别常用什么算法{o9597b}
	* 仿照快速排序
	* 包含 k 个元素的最「小」堆，每次 push 新元素后 pop 出最小元素
		* 注：Python 的 PriorityQueue 的实现基于堆
* 快速排序，选定基准元素（如序列第一个）a 后，每步迭代要做哪 3 步；假设希望升序排列{o98m9n}
	* 从左找到大于 a 的第一个元素；从右找到小于 a 的第一个元素；交换两个元素
* 数据结构：二叉搜索树（升序）中删除节点，若待删节点有两个子节点，删除操作有哪 3 步（Python 数据结构与算法分析 p198）{o9bj70}
	* 找到右子树的最小节点（左子树最大节点同理），称为“后继节点”
	* 删除该后继节点
	* 当前待删节点的 key, value 换成刚被删的后继节点的值
* 数据结构：二叉搜索树（升序），如何找到 [?1] 并删除 [?2] 树中的最小节点（Python 数据结构与算法分析 p198）{o9bj72}
	* 找到：一直沿左子节点走，直到不再有左子节点为止
	* 删除：该节点被其右子节点替换（可为空节点）
* 数据结构：AVL 二叉搜索树（升序）要求每个节点满足什么样的“平衡”条件（Python 数据结构与算法分析 p202）{o9ck8q}
	* 平衡因子（左子树高度 - 右子树高度）为 -1,0,1
* 数据结构：AVL 二叉搜索树（升序）如图所示的树如何通过旋转恢复平衡（Python 数据结构与算法分析 p207）{o9cl02}
	> file:///home/yzh/oc-ptis/attached/o9ck9t-AVL-tree-front-SRS.png
	* file:///home/yzh/oc-ptis/attached/o9ck9v-AVL-tree-back-SRS.png
	* 注：一般地，LL 型非平衡通过右旋解决
* 数据结构：AVL 二叉搜索树（升序）如图所示的树如何通过旋转恢复平衡（Python 数据结构与算法分析 p207）{o9cl04}
	> file:///home/yzh/oc-ptis/attached/o9cl0t-AVL-tree-2-front-SRS.png
	* file:///home/yzh/oc-ptis/attached/o9cl0v-AVL-tree-2-back-SRS.png
	* 一般地，RL 型非平衡通过 先右旋，再左旋 解决
* 数据结构：B 树（作为二叉搜索树的改进）设计动机，面向什么场景 [?1]，希望算法有什么特性 [?2]{o9jm40}
	* 数据库，数据量大于内存容量、需磁盘存储
	* 每次读取磁盘的一个页，且减小读取总次数（从而希望树矮胖）
	* [src](https://mp.weixin.qq.com/s?__biz=MzUyNjQxNjYyMg==&mid=2247485383&idx=2&sn=826b59c9d92f6462a8eaf9586827473e)
* 数据结构：m 阶的 B 树中，每节点至多 [?1] 个 key，根节点至少 [?2] 个 key，普通节点至少 [?3] 个 key{o9jm42}
	* m - 1 （从而可划分出 m 个子树）
	* 1
	* ceil(m / 2) - 1 （记忆：m = 3,4 时为 1）
* 数据结构：B+ 树（作为 B 树的改进）设计动机，面向什么场景 [?1]，希望算法能避免 B 树会出现的什么问题 [?2]{o9jn1q}
	* 经常需要在数据库中取「连续」的多条数据
	* 读取连续数据不用跨层
	* [src](https://mp.weixin.qq.com/s?__biz=MzUyNjQxNjYyMg==&mid=2247486680&idx=1&sn=fec210ee18e81448e9e5245be7ebe03f)
* 数据结构：B+ 树相比 B 树有哪两个变化{o9jn1s}
	* 所有数据都在叶节点
	* 叶节点间有指针相连，形成链表
	* 注：B 树叶节点都在同一层，B+ 树同理，故指针也都在同一层
* 数据结构：B+ 树（作为 B 树的改进）中如何从中读取「连续」的多条数据{o9jn1u}
	* 找到首尾之后，利用链表结构
* 数据结构与算法：词梯问题解决过程，对于一个单词（如 pope），将它与所有只差一个字母的（同长度）单词连边，高效实现方式有哪两步（Python 数据结构与算法分析 p222）{o9dh5u}
	* 建立通配符字典，形如（引号略） `{_ope: [pope, rope, nope,..], p_pe: [pope, pipe, ..], ..}`
	* 遍历该字典连边
	* 注：我感觉词梯问题可直接基于通配符字典解决，不用第二步建立的图结构
		* 相当于对二部图直接 BFS
* 数据结构与算法：找有向图 G 的强连通单元，有哪两步（Python 数据结构与算法分析 p240）{o9ik5w}
	* 对 G DFS
	* 对 Gᵀ DFS
* 数据结构与算法：找有向图 G 的强连通单元，第二步对 Gᵀ DFS 的顺序 [?2]，其中要在第一步对 G DFS 时记录 [?1]（Python 数据结构与算法分析 p240）{obtf9u}
	* 第一步记录各顶点「最后」一次访问的时间 t（整数）
	* 第二步每次起点取为所有未访问顶点中 t「最大」的
* kd-tree 常用于 kNN 查找，其数据结构示例图片{p2ja72}
	* file:///home/yzh/oc-ptis/attached/p2ja7e-kdtree-SRS.jpg
	* 要点：节点组织成二叉树，每层选一点和一个坐标轴
	* [src](https://zhuanlan.zhihu.com/p/529487972)
* LRU cache 实现可使用什么数据结构{p66f8p}
	> 需求：缓存 N 个最近访问的数据；其中某数据被访问时会调整元素访问次序，使其变成最新的
	> 朴素做法：若用数组存储各数据，查找、改访问次序 复杂度均 O(N)，希望 O(1)
	* 双向链表 + hash（dict，由 key 指向链表节点，而非直接指向对应的 value）
	* [src](https://mp.weixin.qq.com/s/747cuXLlCDYHkAlnr38stA)
* 数据结构：可能为空的双向链表，实现时如何避免边界处理{p66f8r}
	* 添加伪头尾节点
	* [src](https://mp.weixin.qq.com/s/747cuXLlCDYHkAlnr38stA)
* 需结合 双向链表 + hash 实现的功能{p6hf77}
	* LRU cache：缓存 N 个最近访问的数据，其中某数据被访问时会调整元素访问次序，使其变成最新的
* LFU cache 实现相比 LRU cache 有什么变化{pb2f6x}
	> 背景：least frequently used 缓存，排序依据历史总使用次数，而非 LRU 依据最近使用时间
	> 要求：get(), put() 功能均 O(1) 时间复杂度；同次数前提下依据最近使用时间排序
	* 额外 hash 将使用频率映射到双链表，每个双链表存放该使用频率的内容
	* （仅重读）各内容同时记录自身使用总次数
	* [src](https://mp.weixin.qq.com/s/irbwDCod1DeLsKkOhmO_uw)
* 线段树的“延迟标记”中，修改区间、树节点对应的区间 是什么关系{p8kj6w}
	* 二者相等
	* [src](https://zhuanlan.zhihu.com/p/106118909)
* 链表找环入口，在快慢指针相遇后如何操作{p99l2h}
	* 相遇位置、链表头 同时出发，第一次相遇位置即入口
	* 注：基于 LeetCode 142
* 链表找环，快慢指针相遇时，慢指针已走步数为何是 nb（b 为环长度）{p99l2j}
	* 快慢指针若相遇，相差步数必为 nb
	* 慢指针步数 等于 快指针领先步数
* 链表找环入口，工作原理利用 快慢指针相遇位置、环入口 的什么关系{p99l2l}
	* 走 a + nb 步到环入口（n 自然数，a 环外长度，b 环长度）
	* 首次相遇位置共走 nb 步
	* 下次到环入口只需 a 步
* 最小栈 实现方式（除了常规栈操作，还希望 O(1) 时间获取栈中最小元素）{p9b00z}
	* 维护等容量的新栈，保存当前位置以下的最小元素
	* 注：基于 LeetCode 155
* 最小队列 实现需什么辅助数据结构 [?1]，Python 中实现可基于标准库 [?2] 数据类型{p9b010}
	> 最小队列：除常规队列操作，还需 O(1) 时间获取队列中最小元素
	* 递增的双边队列：作为当前队列子序列（不要求位置连续），且元素严格増
	* deque，因只涉及 popleft, pop, append 操作
	* 注：基于 LeetCode 239
* 最小队列 加入新元素时，如何更新辅助的 递增列表{p9b012}
	> 最小队列：除常规队列操作，还需 O(1) 时间获取队列中最小元素
	* 从列表右侧 pop 出所有 ≥ 新元素的元素（注意等于也要 pop）
	* 然后 append 当前新元素
* 最小队列 pop 前一最小值时，需避免误伤后一最小值，我打算如何解决{p9b014}
	> 设定：假定当前队列有多个最小值，其中一个在队头
	> 最小队列：除常规队列操作，还需 O(1) 时间获取队列中最小元素
	* 额外记录元素编号（是第几个加入队列）
	* 原队列只需记录队头编号，递增列表 要记录所有元素的

### TRIZ
* TRIZ-功能分析-有用功能等级，（基于装置）基本/附加/辅助 功能的区分方式 [?1]，（基于过程）生产/条件/矫正 功能的区分 [?2]{n5a95f}
	* 1. 按作用对象：目标、（其他）超系统组件、（其他）系统组件；（见 TRIZ打开创新之门的金钥匙I p59）
	* 2. （我的总结）按与流程其他步骤关系：不考虑其他步骤，支持某后续步骤，处理前步骤引入的缺陷
		* 注：这也导致不同的剪裁规则，见 金钥匙II p85
		* 注：我觉得矫正功能按目的可再细分为两种，消除产品缺陷（物）、避免影响后续步骤（过程）
* TRIZ 中物理矛盾的解决思路（6 + 1）{n5ji36}
	* 空间、时间、关系（对象）、方向、条件、系统 分离；绕过矛盾需求
	* 注：浮法玻璃制造 或可解释为绕过矛盾需求（尽管可用 STC 算子想到）？
* TRIZ 提示词公开贡献项目 ccTOPP 缩写的含义{o53g0k}
	* Collaborative and Creative TRIZ Open-Prompts Project
	* 注：笔记系统位置((o53f9n))
* TRIZ 中物理矛盾与技术矛盾的转化方式，按孙永伟《金钥匙 I》中的介绍{o5n95q}
	* 若 A 则 B，若 -A 则 C：B、C 为技术矛盾，A、-A 为物理矛盾
* （待确认）檀润华《TRIZ及应用》中技术系统 基于效应设计其 结构、功能、行为，四者关系示意图{o5u99v}
	* file:///home/yzh/oc-ptis/attached/o5u99q-TRIZ-effect-SRS.png
* 檀润华《TRIZ及应用》中技术系统 4 种拆分关系示意图，基于「效应」，从哪 3 个方面对系统进行设计{o96g66}
	* 结构、功能、行为
* 檀润华《TRIZ及应用》中技术系统 4 种拆分关系示意图，基于 [?]，从 结构、功能、行为 三方面对系统进行设计{o96g68}
	* 效应
* 「科学效应」的图示结构有哪些要素 [?1]，「超导」效应的例子 [?2]（赵敏《TRIZ进阶及实战》 p210）{obl93o}
	* 输入属性，输出属性，（控制流）
	* 低温，极低电阻
* 现代 TRIZ 强调多个效应的串联、复合使用，玻璃水银温度计使用效应表示的例子，先后涉及水银、玻璃细管（赵敏《TRIZ进阶及实战》 p211）{obl951}
	* 水银：内能-(热膨胀)-体积
	* 玻璃细管：体积-(限定形变方向)-长度
* U-TRIZ 所谓的 SAFC 模型基于物场模型发展而来，其示意图（赵敏《TRIZ进阶及实战》 p277）{obs95t}
	* file:///home/yzh/oc-ptis/attached/obs95p-UTRIZ-SAFC-SRS.jpg
* U-TRIZ 所谓的 SAFC 模型，S、A、F 分别是什么的缩写{obs963}
	* 物质 substance
	* 属性 attribute
	* 功能 function（注：源于物场分析，不清楚是否某些时候相当于「场」）
* U-TRIZ 所谓的 SAFC 模型示意图如下，其中 S₃ 是什么（赵敏《TRIZ进阶及实战》 p277）{obs96f}
	> file:///home/yzh/oc-ptis/attached/obs95p-UTRIZ-SAFC-SRS.jpg
	* 实现功能后衍生的第三物质
* （待重构）U-TRIZ 所谓的 SAFC 模型，解决问题的 6 种转换模式（赵敏《TRIZ进阶及实战》 p300）{obtk6e}
	* 置换、叠加、并联、串联、复合、内调
### LaTeX
* LaTeX 中加行号方式{n5ka5k}
	* `\usepackage{lineno}, \linenumbers`
* LaTeX 中 lineno、amsmath 宏包有冲突，我用了 [?] 提供的解决方案{n5km32}
	* neurips_2022.sty，l348-376
* LaTeX 中设定字号、行距的方式，要求指定具体数字（不用 `\small` 等预设命令）{o6ka7o}
	* `\fontsize{字号}{行距}\selectfont`
	* 注：回忆起关键词，能用它在 SRS 中搜索找到这条记录即可
	* （无需回忆）eg. `\footnotesize` 好像是 9pt, 11pt
* LaTeX 中指定通讯作者，希望写成上标带邮件形式，用什么命令{o71m4i}
	* `Author Name\textsuperscript{\Letter}`
	* `\Letter` 命令需 `\usepackage{marvosym}`
* LaTeX 中希望 PDF 1. 所有页不显示页码，2. 某页不显示页码，分别可用什么命令{ob7m6w}
	* 全部无页码： `\pagestyle{empty}`
		* 注：`\usepackage{nopageno}` 也可
	* 某页无页码： `\thispagestyle{empty}`
* LaTeX 中代码块注释如何实现{p41g9q}
	* `\iffalse`, `\fi`；改成 `\iftrue` 即可取消注释
	* 注：另可用 comment 包提供的同名环境
* LaTeX 中 `\vskip{1em}` 未在预想的位置引入空白，可能原因 [?1]、解决方式 [?2]{p6pa9e}
	* `\vskip` 的空白仅在段落结束位置引入，当前位置段落未结束
	* 在前面加一个空行，以分隔段落
* LaTeX 中 `first second third` 编译后在第二空格处断行，若希望提前到第一空格处，不用显式换行符 `\\` 的做法{p6ph7a}
	* 第二空格换为 `~`
* LaTeX Beamer 中 minipage 异常（并非横向排列），我的解决方案{p93j7h}
	* 改用 subfigure
	* 注：最初使用为 2025-06-28 AI4Science Beijing Meetup 讲 PDEformer-2 反问题恢复系数
* LaTeX Beamer minipage 中 footnote 过长，如何处理{p93j7j}
	* 用 `\parbox` 命令，成为 `\footnote{\parbox{\textwidth}{footnote content}}`
	* 注：最初使用为 2025-09-03 陆路组会讲 PDEformer-2 背景的 BCAT 系列
* LaTeX 分栏模式，`\textwidth` 和 `\linewidth` 分别的宽度（一栏、两栏）{pa3f4i}
	* text 两栏，line 一栏
* LaTeX 若出现如下报错，如何找所需的 tlmgr 包{pcpi9l}
	> `! Font U/pzd/m/n/10.03749=pzdr at 10.03749pt not loadable: Metric (TFM) file not found.`
	* `tlmgr info pzdr` 或 `tlmgr search --global --file pzdr.tfm`
* LaTeX 如何自定义命令，接收一个参数 + 一个可选参数（默认值 default）{pcpm7j}
	* `\newcommand\COMMAND[2][default]{CONTENTS #1 #2}`
### Vim
* Vim 中默认使用系统剪贴板，方式{n5uh2q}
	* set clipboard=unnamedplus
	* 选项缩写 cb
* Vim 中快速 diff 两个文件，我设置的快捷键{n81m0k}
	* `<leader>E`
* Vim 中希望删除包含 pat 的所有行的前一行，可用的命令{n8h95w}
	* :g/pat/-1d
	* 另：@Claude 给的版本 :g/^/if getline(line('.')+1) =~ 'pat' | d _ | endif
* Vim 中希望只保留包含 pat 的所有行的前一行，而删除其他行，可用的办法{n8ha8s}
	* :g/pat/-1m$ ，之后从文件末尾提取
	* 写入新文件亦可， :g/pat/-1w! >> new.out
* Vim script 跨行文本替换，`A换行B` 替换为 `C换行D`，命令怎么写{o3ub7a}
	* `:s/A\nB/C\rD/`
	* 注意被替换文本是 `\n`，替换结果是 `\r`
* Vim 中写 LaTeX/Markdown 若希望每个句号后换行，句号较多时，我认为相对高效的操作方式{o6qa97}
	* 用 `:s/\. /.\r/g` 命令（命令内容无需回忆）
	* 注：我认为这比反复按 ). 高效；不过需额外检查是否有误伤位置
* Vim visual mode 中希望将选中部分文本替换为剪贴板中内容，如何操作{o6rl8j}
	* 直接按 p 即可
	* 注：此时被替换内容会被保存到默认剪贴板 " 中
* Vim 中 ↔、⇔ 对应的 digraph 分别为{p7kh9i}
	* `<>`, `==`
* Vim 中 ¬, ∧, ∨ 对应的 digraph 分别为{p7kh9k}
	* `NO`, `AN`, `OR`
* Vim 中 ∀, ∃ 对应的 digraph 分别为{p7kh9m}
	* `FA`, `TE`
* Vim 命令 `:!system-cmd` 的非阻塞版本{pcng6v}
	* `:call system("system-cmd")`
### Python
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
### Git
* Git 不希望重复输入帐号密码，希望让其（针对当前仓库）记住，方式{n85m8e}
	* git config credential.helper store ；之后只需要输一次帐号密码即可
* Git 放弃所有修改，方式{n88n6p}
	* git stash
	* 相关：((n88n6x))单词含义，((nc1b4q))放弃对特定文件的所有修改
* Git 放弃对文件 file.ext 的所有修改，方式{nc1b4q}
	* git restore file.ext
	* 相关：((n88n6p))放弃对所有文件的所有修改
* Git 将状态回退到先前 commit，方式{n8en57}
	* git checkout 版本哈希值
	* 注意不是 rebase
* Git 查看某文件修改历史，方式{n94n4u}
	* git log -p -- file.ext
* Git 将 master 回退到之前的版本，并在 remote 端同步，我采用的策略{n94n4v}
	* 发起新 commit 而非用自带回退：回退后复制修改的文件，取消回退后再粘贴进来
* 如何用 git blame 查看特定文件特定行的修改历史{o5s94u}
	* `git blame -L <start>,<end> file.ext`
* 命令 `git diff <commit-1> <commit-2> file.ext` 中两个 commit 哪个是 old-commit，哪个是 new-commit{o94b1g}
	* `git diff <old-commit> <new-commit> file.ext`
* Git 查看某次 commit 引入的修改，用什么命令{o94b1o}
	* `git show <commit>`
* Git 查看某次 merge 涉及的「所有」冲突文件、每个文件选择了哪个分支的版本，用什么命令{o94b1w}
	* `git show <merge-commit>`
* Git 查看某「文件」的历史 merge 记录，只看相应的「分支示意图」，用什么命令{o94b26}
	* git log --graph --oneline file.ext
	* 注：无 file.ext 则绘制整个仓库的历史分支示意图
* Git 某文件修改多块，希望不同块内容分散在不同 commit 中，可用什么命令{p2rl8i}
	* git add -p file.ext
* Gitee repo wiki 与人合作编辑同一个文件，需注意{nakb5m}
	* 他人网页端的后续编辑会覆盖掉我之前的 git push
	* 注：目前与 hx 合作，暂定解决方案：若编辑同一个文件，我在微信上发过去
* {old}# Gitee Markdown 渲染，如果发现含复杂「行内」公式的段落渲染失败（比如公式开始位置识别错误，公式内容被当成普通文本、普通文本被按公式渲染），可考虑
	* 2025-07-14 重构卡片正面，因关注点被公式吸引（「」符号强度不如模式匹配）
* Gitee Markdown，若某段文本渲染 被复杂行内公式 干扰，考虑如何解决{o3kg5e}
	> 情形例：公式开始位置识别错误，公式内容被当成普通文本、普通文本被按公式渲染
	* 行内公式改为行间公式 `$$`，且前后各引入一个空行
* Git 协作，pull 时发现远程更改与本地冲突，我打算如何保留本地更改内容（不是仅保留本地版本），以供后续合并参考{p58a1q}
	* 先针对本地更改 git diff，保留结果展示窗口
	* 转移¹修改后文件后 git pull 同步远程更改
		* ¹没必要 git restore
* git diff 只显示修改了哪些文件，用什么命令{p66h5t}
	* git diff --name-only
* 代码仓需版本回退再整理开源，为使未回退版本被同步整理，我用了什么做法（来源：PDEformer-2 数据生成）{p6aa7n}
	* 回退版、最新版 两个 branch 同步编辑，每步操作在两个位置都做一遍
	* 二文件夹分别存两个 branch（而非通过命令反复切换）；最新版可通过独立 git clone --depth 1 独立存储
* Git 回退以重跑历史训练，判断需回退到哪一 commit，我当前做法两步（来源：51019_5c 重运行）{pald6m}
	* 筛时间：找时间目标训练接近的多个 commit
	* 查更改：逐 commit 检查当时引入了什么更改
* git clone --depth 1 默认仅保留主分支，获取全部分支的方式{pcmh30}
	* 补参数 --no-single-branch
	* 仅重读：为切换到非主分支，还需命令 
	> git branch -a
	> git checkout remotes/origin/NAME
	> git switch -c NAME
* Git 取消 git add file.ext 添加的更改，我当前用什么做法{q3uh1s}
	* 文件复制备份后，git checkout main file.ext，再把修改后的结果复制回来
### Linux
* Linux 下查看一个不断增长的文件（如某程序的输出文件），方式{n88n6g}
	* less 即可（按 G 加载新增内容）；另据说可用 tail +1f file
* zsh 下命令 `scp bicmr:job* ./` 执行失败，提示“no matches found: bicmr:job* ”，而 bash 下不会出现此现象。解决方案{n8hg9r}
	* `scp bicmr:job\* ./`，即把星号 escape 掉
* BICMR 计算集群用法：要通过 salloc 使用 GPU，方式为{n8p98q}
	* salloc （内存略） -G 1，申请到资源后再启动 python
	* 注意不能 salloc .. -G 1 python，这样没有 GPU 可用
	* 2025-09-18 补充：还需 ssh gpu01 后才能用 GPU
* Linux 命令：列出所有挂载的磁盘的使用情况{n8uh38}
	* df 
	* 注：指 disk filesystems
* Linux 命令：统计某文件夹总大小{n8uh39}
	* du -s
	* 注：指 disk usage，-s 表示求和（不是每个文件单独列出）
* Bash 脚本统计 *.ext 文件的数目，我用的方式{ncc922}
	* ls -1 *.ext 2>/dev/null | wc -l
	* 注意文件不存在时 ls 会报错，因此需要将报错信息重定向
* Bash 脚本判断是否存在 *.ext 文件，[ -e *.ext ] 写法不对，我之前用的写法{ncc924}
	* 先统计文件总数((ncc922))：num_ext=$(ls .. | wc -l)
	* 再判断数量 [ ! $num_ext = 0 ]
* Bash 脚本 **/*.ext 写法不能直接用，我知道的两种办法{o1of8x}
	* 通过 `$ shopt -s globstar` 启用 `**` 语法
	* 改用 `$(find . -name "*.ext")`，注意引号
		* 注：结果开头有多出来的 `./`
* Bash 脚本希望列出 **/*.ext，并且限制搜索深度，最多搜索到第 3 级子文件夹，我用的办法{o1of99}
	* `$(find . -maxdepth 3 -name "*.ext")`，注意引号
* Linux 终端打印 file tree 所用命令{o3fa9g}
	* tree
* Linux 下解压某 tgz 压缩包，发现解压所得的文件无法直接用 rm 删除，可以考虑{o3vh23}
	* 检查文件所在目录是否有写权限，没有则 chmod +w current_dir，之后再 rm
* Python 语句 `if num > 0:` 在 Bash 下的对应命令{o75g4z}
	* `if [ $num -gt 0 ]; then`
	* 注意 1. 单层中括号，2. 要写 -gt 而非 `>`
* Bash 数字运算，如何获取变量 `num` 模 2 的结果{o75g5u}
	* `$(($num % 2))`
	* 注意双括号，里外两个 `$`
* Bash 脚本中运行耗时程序（如 Python 脚本），希望 Ctrl+C 只中止该程序、不退出 Bash 脚本，如何实现{oaga62}
	* 使用 trap [COMMAND] INT 捕获 SIGINT，运行结束后恢复默认捕获方式
	> ```bash
	> trap "" INT
	> python3 script.py
	> trap - INT
	> ```
* Bash 脚本行为受某变量控制，我想到该变量可在哪 6 种位置设定{oaga7v}
	> （注）该变量在脚本运行过程中不变
	* flag 文件，shell 环境变量，命令环境变量
	* 命令行参数，read VAR 读入，脚本内定义
	* 注：主笔记位置((oaga8b))
* BICMR 服务器上连接网关，我知道哪两种方式{o7bn4h}
	* 用服务器上已装的 connect
	* 按学校官方官方教程用 curl，见 https://its.pku.edu.cn/download_ipgwclient.jsp
		* 注：网址无需回忆，搜 connect 找到本 SRS 条目即可
* Linux 终端统计当前文件夹下所有 `*.ext` 文件的总大小，可用什么命令{o7bn4o}
	* du -ch *.ext
	* 注意 -c 不是 -s，后者指 summarize
* Linux 终端 `ls -l folder` 会列出该文件夹下文件的信息，若希望列该文件夹本身的信息，命令应该如何修改{o7eh1f}
	* ls -dl folder
* # （仅重读）当前电脑 KDE 桌面，任务栏图标在什么设置下变窄{oboh0q}
	* 任务栏 - Configure - Apperance - Group 选 group by program name - 不选 open groups in popups
* Git 运行原理：如何基于 diff.txt 修改 old.py 使之与 new.py 相同 [?1]，以及改 new.py 使之与 old.py 相同 [?2]{ocig8r}
	> （注）假定 diff.txt 的产生方式为 `diff old.py new.py > diff.txt`
	* patch old.py diff.txt
	* patch -R new.py diff.txt
	* （无需回忆）被修改的文件在前，diff.txt 在后
* Bash 中如何用 nohup 运行自定义函数 my_func{p3an0n}
	* 使用子 bash 进程运行；需先将自定义函数导出到环境变量
	* export -f my_func
	* nohup bash -c "my_func" &
* Bash 中如下定义的两个变量是否会影响到子 bash 进程{p3an1i}
	> VAR1=1
	> export VAR2=2
	* 有 export 的会，没有的不会
	* 注：若补充命令 export VAR1 可使之影响到子进程
* Bash 中如何让当前任务转到后台运行{p3be74}
	* Ctrl+z 使之进入后台（挂起）
	* 再用 bg 命令使后台进程开始运行
	* 注：有多个后台进程时可 bg %1
* 如何向 nohup 后台任务发送一个 Ctrl+C 中断（程序接收中断后仍会继续运行）{p3bh55}
	> 需求场景：中关村学院开发机上用 nohup 跑训练，训练完成后不自动终止，需手动终止 Python 才能执行后续 bash 脚本以复制 results.log
	* fg 挪到前台
	* 发送 Ctrl+C
	* 放回后台（无需回忆：Ctrl+Z, bg）
* Bash 中如何终止所有 Python 进程{p3bj73}
	* pkill python （可能要写 python3）
	* 注：pkill -f python 会杀掉所有启动命令中包含 python 字样的进程
* Bash 中列出所有进程，可用什么命令{p3bj79}
	* ps -ef ，或 ps aux
	* 注：-e 列出所有，-f 展示详细信息
* Bash 中查看软链接指向的位置，用什么命令{p3jb4h}
	* readlink
* Bash 文本文件处理，重复的行只保留一次，重排序、保序的命令分别是{p53n2h}
	* 重排序：sort -u file.txt
	* 保序：awk '!seen[$0]++' file.txt
		* （评）记得 awk、seen 即可，需用时可搜该卡片
* Bash 命令 `convert file.png file.pdf` 可以怎么简写{p7si0i}
	* `convert file.{png,pdf}`
	* 注：`echo a{0,1,c}b` 运行结果即为 `a0b a1b acb`
* Bash 中 fname 字符串变量如何去除文件扩展名{p7si0u}
	* `${fname%.*}`
	* 注：1. % 从后去除，2. 只去最小匹配用 %（%% 会去除多次），3. 匹配模式中可用通配符 *
* 服务器 .bashrc 若包含 cd new_path 命令，scp 传文件的默认目标路径为{p9ne7c}
	* 就是 new_path，不再是家目录
* Linux 上创建特定尺寸的空白文件（用来占磁盘），可用命令的大意{pa7f6q}
	* 用 dd 命令读 /dev/zero 写入空白文件
	* （无需回忆）具体命令 dd if=/dev/zero of=./bigfile.bin bs=1M count=1024 status=progress
* # 当前电脑若待机失败，如何解决{pafm50}
	* 运行一次 tlp setcharge 命令
* sudo apt purge 后，如何进一步卸载之前随之自动安装的包{pcpi9x}
	* apt autoremove --purge
	* apt clean
* Linux 下检查二进制可执行文件是 x86 还是 ARM，可用的命令{q33a2d}
	* file binary-executable
* Linux 文件权限，读、写、新建、删除 分别对应什么权限{q35m9h}
	* 文件 r，文件 w，文件夹 w，文件夹 w
* Linux 文件权限，其他用户即使无文件 w 权限，仍可能如何危害文件安全{q35m9j}
	* 若有文件夹 w 权限，则可删除文件
