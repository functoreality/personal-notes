> 2025-02-15 从 WorkFlow_lit.md 独立
* zhA2880385795：ChatGPT 对数学研究人员的帮助
	* [2023-02-07](https://www.zhihu.com/question/579277269/answer/2880385795)
	* 直接问题目没什么帮助
		> 直接问题目是不行的。对于它没有见过的题目，ChatGPT是没有什么推导能力的，写出来细看两眼全是错。
	* 可以问一般性的问题，指路、可能有效的方法，效果好于搜索引擎，如“如何证明极限积分可交换/xx依分布收敛”。{_n27j7n}
		> 比如你不知道怎么证明极限和积分可以交换次序，那你就可以问ChatGPT。
		> 它的回答是非常完美的，基本把所有常见结论都给你按使用频率列出来了。
		> 我还试着问它更复杂、更专业的问题，比如 “如何证明一列随机过程在Skorokhod space里依分布收敛到一个极限随机过程”，回答得也很不错。
		> 这就可以对研究生，甚至一些研究人员有帮助了。
		> 所以ChatGPT不能直接帮你做推导或证明，但是它可以给你指路，找出可能有效的方法，效果比目前的搜索引擎要好。
* ChatGPT 用于论文翻译、润色并给出修改理由、为特定修改给出参考资料、出学术写作训练题并批改回答
	* [2023-02-14](https://www.zhihu.com/question/582506176/answer/2886438948)
	* DeepL 先翻译，然后“让ChatGPT用学术的角度来Proofread并Polish一下”；ChatGPT 给出了主要部分修改理由；{_n2e89d}
		> Please proofread and polish the passage from an academic angle and highlight the modification:
	* 让其论证 dawn 用在学术写作的合理性，要求其给论文示例或出处；现阶段它无文献考证能力，给的不是真实文章，但估计日后改进版、竞品将有此能力
	* 提供学术写作例子：{_n2e89g}
		* 首先“让他使用更多的学术词汇来回答问题”，给了一个知乎问题，
		> 然后我让ChatGPT直接将这个回答中它认为比较学术的词汇摘出来，并且说明使用这些词汇的原因是什么？
		> 问了ChatGPT关于学术写作的原则，它很清晰的回答了七个方面：清晰，客观，实证，结构，参考，语调风格，简洁。当然，这些原则，我们从搜索引擎上也可以得到。
		> 关于Clarity这方面的实例教学，ChatGPT给出了六条建议，并且给出了两个实际案例。
	* 对自己的学术写作练习，出题（可指定专业）并批改；{_n2e89j}
		> 我让ChatGPT为我出题训练，专门针对Clarity这方面，这样我就可以通过不断地练习来提高自己学术论文写作的Clarity。
		> 这种互动练习的模式，将极大改善我们的学习过程，而且每个练习题做完，ChatGPT可以给出评价（这一点我事先就有要求）。
		> 甚至你可以要求题目都来自和你相关的研究专业领域，以达到更好的训练效果。
* ChatGPT 帮助开展日常工作（并称回答会定期添加新内容）
	* [2023-02-14](https://www.zhihu.com/question/583232012/answer/2886779529)
	* 搜集论文：{_n2eb0s}
		> 指定论文主题和时间范围，ChatGPT会自动给出一些代表性论文，根据论文顺藤摸瓜，可以对相关领域有大概了解。
		> 重要提醒：ChatGPT可能会编造不存在的论文，而且论文数据库与谷歌学术等平台差距较大，大家在使用的时候注意甄别和交叉验证。
	* 论文润色，并给提示词 promp 例子，要求它像学术期刊编辑一样回复；{_n2eb0r}
		> I want you to act as an academic journal editor. Please rephrase the paragraph from an academic angle based on the writting style of the Nature journal: (接要改写的论文段落)
	* 写邮件：套磁确保语气措辞合适，催审稿人审稿，向导师请假；{_n2eb0y}
	* 科普，能向大众（甚至小孩）讲清楚自己的科研项目；{_n2eb10}
	* 科研论文标题设置、缩写选取等；{_n2eb14}
* `zhP606609446` ChatGPT Prompt Engineering指南--附详细案例参考 - 知乎
	* [2023-02-18](https://zhuanlan.zhihu.com/p/606609446)
	* 先强调：它不会数学；不是搜索引擎（尽管可以成为搜索引擎的辅助）；基于自然语言理解，可能撒谎
		> 这是一个基于自然语言理解的模型，它试图根据你问的问题来造出你想听的句子。因为如果你问它一些它不知道的事情，它会撒谎来回答你的问题。
	* 回复质量取决于问法，垃圾输入则垃圾输出
	* 好 prompt 要求：自己理解“问题框架”（虽然也可让 ChatGPT 帮自己引导出框架）、prompt 技巧（本文）
		> 优秀Prompt的有两个重要的因素：
		> 1. 使用者自己对“问题框架”的理解。（当然也可以让ChatGPT帮你逐步引导出框架）
		> 2. Prompt技巧。这篇文章主要谈的就是这个。
	* 尽量英文提问：语料库更多，实测发现确实更好；{_n2il4d}
		> 截止到2023年2月，中文信息在全球互联网的公开内容只占1.5%，英文是56.9%。
	* prompt 模板：推荐了 `gh@n2if6m`，模板结构：定义 ChatGPT 的角色，明确告知希望它干什么，并拆分任务、告诉它需要输出什么内容；{_n2il4g}
	> 有时候，相比于直接让ChatGPT回答一个问题，不如问ChaGPT是否能提供一些案例。
		> 例如，与其说“写一个关于苹果的故事”，不如说“请给我一个关于苹果的故事的例子”。
		> 直接的感受是，ChatGPT计算起来会快得多，也可以更准确，
	* 尽可能描述清楚场景，如“写一篇关于利用OpenAI提升效率【对小微企业重要性】的博客文章。”{_n2il4o}
		* 另外也可直接告诉问题，让它帮忙构建场景，如“我要写关于xx的文章，帮我找几个合适场景的切入点”，并从中选 1-2 点继续
	* 不直接问，而是先问相关问题，使其能“加载”；{_n2il4w}
		> 例如，当告诉它“用Javascript编写一个让你的手机振动3次的应用程序”，结果不及预期时，可以分步问：
		> “什么是Javascript？”
		> “请给我看一个用Javascript制作的应用程序的例子。”
		> “请给我看一个Javascript中的应用程序，它可以使手机振动三次”。
	* 语言学习，构建一套完全自由探索式的学习环境，如让孩子学英文，查单词给例句、指出语法错误、对写出的话的表达方式（用词等）提建议、分解复杂句子（让其用表格形式展示）{_n2il5p}
* `gh@n2if6m` awesome-chatgpt-prompts-zh: ChatGPT 中文调教指南
	* 2023-02-18 由 `zhP606609446` 推荐
	* [GitHub](https://github.com/PlexPt/awesome-chatgpt-prompts-zh)
	* [Gitee](https://gitee.com/PlexPt/awesome-chatgpt-prompts-zh)
	* 要求其扮演各种不同角色
	* 学术
		* 英语翻译和改进者（替代：grammarly，谷歌翻译），充当英英词典(附中文解释)
	* 编程、代码、网络安全等
		* 前端开发专家，替代搜索引擎；{_n2ig3i}
			> 我想让你充当前端开发专家。
			> 我将提供一些关于Js、Node等前端代码问题的具体信息，而你的工作就是想出为我解决问题的策略。
			> 这可能包括建议代码、代码逻辑思路策略。
			> 我的第一个请求是“我需要能够动态监听某个元素节点距离当前电脑设备屏幕的左上角的X和Y轴，通过拖拽移动位置浏览器窗口和改变大小浏览器窗口。”
		* UX/UI 开发人员：“你的工作就是想出创造性的方法来改善其用户体验。”{_n2ig58}
			* （评）类似产品经理？
		* 网络安全专家：“你的工作就是想出保护这些数据免受恶意行为者攻击的策略。”{_n2ig3y}
	* 其他人生问题
		* 面试官（尽管给的截图里以娱乐为主，并非试图帮助应对严肃的面试）{_n2ig5v}
		* 人生教练：“这可能涉及就各种主题提供建议，例如制定成功计划或处理困难情绪。”
		* 心理健康顾问：管理他们的情绪、压力、焦虑和其他心理健康问题。{_n2ig4e}
		* 职业顾问：“帮助他们根据自己的技能、兴趣和经验确定最适合的职业。”{_n2ig46}
		* 会计，金融分析师、投资经理；{_n2ig53}
	* 生活
		* 医生或 AI 辅助医生
		* 私人教练：“您的职责是根据该人当前的健身水平、目标和生活习惯为他们制定最佳计划。”
		* 厨师（推荐食谱）
		* 旅游指南；{_n2ih2r}
	* 其他本来需要人的工作
		* 广告商，让其写策划案
			> 我想让你充当广告商。您将创建一个活动来推广您选择的产品或服务。
			> 您将选择目标受众，制定关键信息和口号，选择宣传媒体渠道，并决定实现目标所需的任何其他活动。
			> 我的第一个建议请求是“我需要帮助针对 18-30 岁的年轻人制作一种新型能量饮料的广告活动。”
* 高效学习的方法：借助 ChatGPT 快速建立某个主题的知识结构
	* [2023-03-05](https://mp.weixin.qq.com/s/E32TWzcSSVpJQT0X27Vy3A)
	> 我们也可以让 ChatGPT 先给提供一个通用的知识结构（自上而下），为之后我们的学习提供参考。{_n35i3l}
		> 比如，你在读《认知心理学》时记到了关于“工作记忆”的笔记，就可以先看一下 ChatGPT 给你提供的知识结构，这对理解和记忆新知识都大有益处。
	* 提示词示例
		> 你是一位XXX学家，现在从以下维度详细地介绍XXX学上的“YYY”概念，生成的结果里每个维度由“YYY的’维度标题'”和“内容”上下两行构成：定义：概念的基本含义和定义。
		> 比喻：用小学生也能看懂的比喻（2 个）来解释。
		> 比较：与哪些概念相似，并且容易混淆，如何区分它们，分别列出来。
		> 迷思：人们对此存在的错误认知（至少 2 个），以及你认为的相应的正确认识。
		> 历史：概念的起源和发展历程。
		> 特征：概念的特性、属性、特点等。
		> 分类：概念的构成、分类。
		> 原理：概念的原理和理论基础。
		> 相关概念（至少 3 个）。
		> 相关理论（至少 3 个）。
		> 相关模型（至少 3 个）。
		> 重要人物（至少3位）及贡献。
		> 学术争议和异议意见（至少 3 个）。
		> 近期研究进展和新发现（至少 3 个）。
		> 概念在现实生活中的具体的作用（至少 3 个）。
		> 概念在现实生活中的具体的应用（至少 3 个）。
		> 存在哪些误用此概念的现象（至少 3 个）。
		> 概念的优点（至少 3 个）和缺点（至少 3 个）。
		> 概念在具体情境中的应用案例（至少3 个）。
		> 相关研究：概念相关的研究成果和学术讨论（至少 3 个）。
		> 发展趋势：概念未来的发展趋势（至少 3 个）和可能的变化（至少 3 个）。
		> 重要的相关论文（至少 3 篇）。
		> 重要的相关书籍（至少 3 本）。
	> 由于 ChatGPT 偶尔也会给出错误回答，所以请审慎对待。
		> 不过，如果你有这方面的知识，它提供的框架可以为你的后续学习提供方向和参考，
		> 并且在与你自己从可靠处（权威教材等）获得的知识相印证后再使用。
* 陶哲轩：ChatGPT已加入我的数学工作流
	* [2023-03-12](https://mp.weixin.qq.com/s/p8xPnTdkYr3HbJrKaS3pNA)
	> 大到寻找公式、辅助证明定理；小到改写论文语句、查询小语种数学名词的发音。{_n3c88v}
	> ChatGPT数学能力虽然不咋滴，但对做学术研究的人来说是个发散思维的好工具。
		> （对普通人来说有点不太专业，但对搞数学的学术人员来说刚刚好）{_n3c895}
	* 例子，直接把同事询问的问题逐字逐句抛给了ChatGPT，发现答案错；但有可取之处
		> 一般人的逻辑到这里就该结束了——得出结论：ChatGPT的数学能力不太行。
		> 他仔细分析了ChatGPT给出的解答过程，发现并不是完全错误的，还是有可取之处。
			> 比如说，ChatGPT在解答过程中用的是lmgf公式，而在克拉默定理给出的标准答案中用到的是lmgf公式的Legendre变换。
			> 虽然不是正确的解题思路，但也很接近正确答案了。
	* 另一个例子：问如何证明有无穷多个素数
		> 虽然给出的证明的是意料中的不完全正确，但陶发现ChatGPT给出的论证思路是可以被固定下来的，并且这个思路他之前还从未见过。{_n3c89o}
	> 既然ChatGPT在具体数学问题上给出的答案是不完全正确的，那不如索性发挥发挥它生成答案部分正确的特性：
		> 在处理数学问题时，可以让ChatGPT这类大语言模型做一些半成品的语义搜索工作。
		> 也就是说，ChatGPT不用提供确切的答案，只用生成一些可能的提示（类似于帮你找灵感balabala）。{_n3c90m}
		> 这样一来，依据ChatGPT生成的提示+传统搜索引擎搜索，就能很轻松找到答案。
	* 一个演示，假设想不起来一个定理的名字，可问 ChatGPT（问题设置有技巧）
		> 最终ChatGPT给出的答案是Legendre公式（一个相关的结果），然后根据这个答案用传统的搜索引擎就可以轻松找到库默尔定理。{_n3c90v}
	* 解释：认为 AI 工具运行逻辑非基于经典函数，而是类似于概率 kernel μ:𝑋→Pr(𝑌)。{_n3c91l}
		* 使它“不会像传统计算机软件那样死板”；{_n3c92b}
		> 这样也会导致一些随机偏差和不准确结果的产生。{_n3c92h}
		* 不过还是有一定优势：
		> 一方面它更加灵活，可以比传统的软件工具更优雅地处理嘈杂或格式不好的输入𝑥。{_n3c920}
		> 另一方面，在一定程度上AI的“思维方式”也会更加发散。{_n3c92q}
	* 用于数学的更多可能性
		> AI能不能提出猜想不知道，但是AI自动、半自动证明定理已经是现实，并且走向实用化了。
		> IBM研究员Jason Rute展示了一种受AlphaGo启发的方法，将定理证明类比成围棋，下一个步骤相当于下一手棋，得证相当于获胜。
		> 谷歌科学家吴宇怀则分享了大语言模型在自动形式化（Autoformalization）上的进展。
* 问 ChatGPT 是否已有相关工作、软件包等
	* [2023-03-26](https://www.zhihu.com/question/570729170/answer/2887348764)
	* 问 ChatGPT，NN 是否可根据输入的复杂度，动态调整计算时间；{_n3qn4e}
		* 搜索引擎没给出满意答案
		> 第一件事是我一直在思考的一个问题：我们人类在面对不同复杂度的问题时，思考的时间长短不一。而传统的算法也是如此，会有随着问题规模增长的时间复杂度，例如O(n), O(n^2)等。凭什么神经网络就能用同一个时间复杂度处理不同的输入呢？（例如图像识别）有没有相关的工作呢？
		> 必须得承认，我确实可能孤陋寡闻了，但我在搜索引擎上也确实搜不到满意的答案。而ChatGPT直接给出回答：
		> 直接告诉：Dynamic Neural Network。
			> ChatGPT当然可能会瞎扯，但我可以容易地用搜索引擎验证。
			> 如果我不知道这个关键词，花几个月重新造轮子也不无可能。
			> 从这个角度看，它极大地加快了我学习、研究的速度。
	* 模拟计算编程，要求检测邻域粒子，让 ChatGPT 帮找软件包；{_n3qn5u}
		> 再举一个例子：我想做粒子模拟。而粒子模拟中很重要的一点就是检测周边的粒子。
		> 如果不做优化，复杂度直接会达到O(N^2)。
		> 我之前做过一个简单的优化：把空间分成均匀的格子，只在周围的格子中搜索。
		> 我就想问ChatGPT有没有现成的python包来解决。
		* 以列表形式呈现，各软件包名称、简介、pros、cons
		> 不光给了我python包的名字，甚至比我想象的还要好——不是简单的均匀分割，而是用树的结构来搜索，时间复杂度直接降到O(n log n)。
* 向 ChatGPT 索要合适的 prompt
	* [2023-04-14](https://www.zhihu.com/question/583841053/answer/2977996475)
	* 模板：{_n4ef8b}
		> 我想请你XXX（做某一件事），请问我应该如何向你提问才能得到最满意的答案，请提供全面、详细的建议，针对每一个建议请你提供具体的提问范例，注意这些范例都是关于如何向你提问获取做这件事的建议的，最后根据你所有的建议，再综合提供一个总的提问范例，注意这个范例必须同时体现你所有的建议。
		* (google transl) I would like to ask you XXX (to do something), tell me how should I ask you to get the most satisfactory answer. Please provide comprehensive and detailed suggestions, for each suggestion please provide specific examples of questions. Note that these examples are about how to ask you questions to get advice to do this thing. And finally, according to all your suggestions, provide a comprehensive example of the overall questions. Note that this example must reflect all of your suggestions at the same time.
	* AI 画图，问 new bing 提示词
		> 我想请你画一个美女在沙滩上，脸蛋好，身材好，颜值高，请帮我写一段中英文prompt，请站在专业摄影师的角度来写。
		> （例 2）我想请你画一幅画一幅美女照片，请问我应该如何向你提问才能得到最满意的答案，请提供全面、详细的建议，而且站在专业摄影师的角度，针对每一个建议请你提供具体的提问范例，注意这些范例都是关于如何向你提问画图的，最后根据你所有的建议，再综合提供一个总的提问范例，注意这个范例必须同时体现你所有的建议。
* 当创业者开始用 ChatGPT 裁员-今日头条，有关于 prompt 的经验
	* [2023-04-23](https://m.toutiao.com/article/7224034581131887160/)
	* 强调提升生产力关键在于“调教精度”，prompt 使用技巧
	* 最初发的写作模板无法立即可用，需人工调整
		> 文案员工按照我写的《盈腾科技带货文案标准化写作》模版写文案……
		> 所以当时，我就把这套写作模版分 10 次、每次 2000 字，「喂」给了 ChatGPT。
		> 当时，ChatGPT 写出来的文案还可以，但没有到直接可以用的程度，依然需要人工改。
	* 一周中全部时间沉迷 prompt 技巧研究，通过控制变量等方式总结出三条
	> 一是，ChatGPT 更擅长识别精确的计算机语言（后者会给出明确的输入、运算、输出指令等），所以你的表达要像「计算机语言」一样精确；{_n4na9l}
	> 二是，ChatGPT 更擅长识别专业性的语言（比如「股票市场的价格」更专业的表述是「股票价格」），这其实考验你的知识结构；{_n4na9p}
		> 比如过去我会跟 ChatGPT 说，「请你用 8 岁小孩能听懂的话，去描述 xx 产品的参数。」
		> 但实际上，这句话更专业性的表达应该是，「请你用自然语言去描述 xx 产品的参数。」
		> 因为在 ChatGPT 眼里，自然语言就是人类的通俗语言。用这种专业语言式的 Prompt，得到的结果就会更好。
	> 三是，ChatGPT 更擅长识别英文。
		* 注：文中的图片展示也都是中文的，或许中文也够用？
	* 纠结于是否裁员，把问题给 ChatGPT 后解决：真正问题在于 降低（对老员工的）愧疚感；之后 ChatGPT 提供若干方案，包括帮助老员工转岗；{_n4nb00}
		> 那半个月，我一直反复纠结于裁员与不裁员。后来我灵机一动，不如把这个问题抛给ChatGPT。
		> 说实话，一开始它给我的答案并没有参考性。
		> 于是，我重新改变 Prompt，给它输入了几个专业的决策模型，如决策树（基于树形结构的分类模型）、贝叶斯（基于概率统计的分类模型）、神经网络（模拟人类神经系统的模型）和线性回归（基于线性模型的回归模型）等等。
		> 最终，ChatGPT 给了我一个非常惊艳的答案。
	* 帮助其他企业裁员，降本增效；再次由 ChatGPT 给建议
		> 时间很紧张。为了快速确定创业领域，我就直接问 ChatGPT，「中国最有可能被替代的岗位有哪些？请列举 25-30 个，并进行排序。」{_n4nb04}
		> 紧接着，我们把得到的答案做成调研问卷，发到了我所在的创业交流圈子里。这个圈子大概有 1000 多人，很多都是创业者。我让大家投票，哪些岗位更容易完成人工替代。
		* 最终决定从替代客服切入
		> 从有创业想法到拿到客户定金，总共花了三天。而从拿到定金到做完产品，我们只花了两周。目前，这套 ChatGPT 客服系统已经在客户公司使用了一个月。
	> 比如在产品的开发过程中，我遇到了机器回答不准确的问题，就会直接去问 ChatGPT 该怎么办。在它的指导下，我们用更快的速度把产品开发出来了。{_n4nb06}
	> 除了助力公司业务，ChatGPT 也已经「接管」了我的个人生活。{_n4nb0f}
		> 我梳理了一下自己生活中，有哪些事情可以交给 ChatGPT 去做，比如涉及文本写作、思考决策等等。最终，我部署了 9 个专属的 ChatGPT 机器人，专门打理我的生活。
* 吴恩达与 OpenAI《ChatGPT 提示工程》
	* [2023-04-30](https://github.com/GitHubDaily/ChatGPT-Prompt-Engineering-for-Developers-in-Chinese)
	* 使用定界符：要求 ChatGPT 总结某段文字时，将这段文字用符号括起来，如 3 重引号，或尖括号
* GPT4 改代码时自作主张引入不存在的奇怪变量、函数，解决方式：先让它写文档；{_n5bn2f}
	* [2023-05-11](https://mp.weixin.qq.com/s?__biz=MjM5MjAwODM4MA==&mid=2650972103&idx=1&sn=0b7a593e59a12d80e81a1684f1963d9c)
	* 见子标题：“有用的技巧：要求它给函数写文档”
* learnprompt.pro：ChatGPT 案例：博客，学习；另有 Midjourney，Stable Diffusion，Runway（文生视频）提示词示例
	* [内容基于 2023-05-17 访问](https://www.learnprompt.pro/)
	* Stable Diffusion 示例：
		> 可以参考Danbooru这样的网站的数据集标签词
		> 将相似的提示词组合在一起，使用英文半角逗号作为分隔符，按照从最重要到最不重要的顺序排列
		> (quality), (subject)(style), (action/scene), (artist), (filters)
	* Stable Diffusion 指定各词权重系数的括号语法
* learnprompting.org（中英文均有）ChatGPT 案例：博客、邮件、学习、找 emoji；进阶用法（CoT、零样本 CoT、LtM）
	* [2023-05-17](https://learnprompting.org/zh-Hans/docs/intro)
	* 进阶用法 LtM：least to most prompting
		* 目前似乎没翻译完，需看 [英文版本](https://learnprompting.org/docs/intermediate/least_to_most)
* 据说是 Copilot 所使用的 prompt
	* [2023-05-31](https://www.zhihu.com/question/582979328/answer/3041322112)
	* （具体内容略）
	* 对 prompt 编写的经验：1. 明确编号，2. 直接、简洁，3. 命令语气，4. 清晰的角色定义，…；{_n5vg2q}
* Mr.-Ranedeer-AI-Tutor 用于学习，支持中文等多种语言
	* [2023-06-10](https://github.com/JushBJJ/Mr.-Ranedeer-AI-Tutor)
		* 注：导师票圈推荐，当时似乎用于备课，假定自己知识背景等
	* 建议用 GPT4，Claude-100k 也可，不建议 ChatGPT3.5
		* （评）应该是有预定义的 prompt，直接加载，之后接着之前的聊天继续
	* 可自定义 学习风格（感知、视觉、归纳……共 10 个），沟通风格（随机、正式、教材、苏格拉底、幽默……7 个），语气风格（辩论、信息……5 个），推理框架（演绎、归纳……5 个）；{_n6am6p}
* 基于 ChatGPT 的 Albus 白板，用于学习、探索，输入关键词后推荐多关键词，点一个展开；{_n6gb6y}
	* [2023-06-16](https://mp.weixin.qq.com/s/bUp_XORAKlaoBCEGIBSeFA)
		* [使用地址](https://beta.albus.org/editor/6482751a8408d38f1fd9fa69)
	* 默认探索模式，另有学习、教授模式
	* 提供了所用的 prompt
* OpenAI 官方的 GPT4 使用攻略；{_n6eg82}
	* [2023-06-14](https://mp.weixin.qq.com/s/u72wzup-5DCQrJdNNYJwDA)
	* 1. 把要求写明白
		> 当模型输出变得太啰嗦时，你可以要求它回答简洁明了。相反地，如果输出太过简单，你可以毫不客气地要求它用专业水平来写。
		> 如果你对GPT输出的格式不满意，那就先给它展示你期望的格式，并要求它以同样的方式输出。
		> 总之，尽量别让GPT模型自己去猜你的意图，这样你得到的结果就更可能符合你的预期了。
		* 有细节；角色扮演；分隔符；明确指定完成任务所需的步骤；提供示例；指定所需输出长度
	* 2. 提供参考文本
	* 3. 拆分复杂任务：对先前对话进行概括或筛选；递归概括；{_n6ef7t}
		* 概括时考虑前后依赖，可考虑同时提供前面的概括；用于书籍概括等
			> 在概括当前内容时，将文本中当前内容之前的内容概述一起总结进来，进行概括。
	* 4. 给思考时间
		* 用 API 可将思考过程放在格式化结构中，从而对用户不可见
		* 问模型是否遗漏了内容
	* 5. 工具加持：搜索，代码执行
	* 6. 系统测试更改，OpenAI Evals 工具等；{_n6eg89}
* 陶哲轩成功让 GPT4 提供新题目证明思路，提示词
	* [2023-06-25](https://mp.weixin.qq.com/s/27tec1cbVTmTcuJkZqmClg)
	> 首先，做一些提示工程，明确GPT-4的“身份”和“目标”。其中身份是“一个擅长给技巧性建议的数学合作专家”，目标是“提供一些建议”而非解决问题。{_n6pe6v}
	> 然后，相比直接把大段公式复制进GPT-4提问栏（确实可以这样做），陶哲轩选择将问题描述转成Markdown格式。
	> 最后，涉及需要GPT-4自己查找资料的内容，陶哲轩将它转变成一个引用注释，并在结尾给出网址。{_n6pe74}
* （备用）陶哲轩6000字详述：计算机辅助数学证明的历史
	* [2023-08-24](https://mp.weixin.qq.com/s/5EVi2091CxbzXP0JI9hmoQ)
	> （两次世界大战中）大部分工作是由人工计算机完成的，这些人工计算机主要由女性操作。因为当时的男性正在参战。这也衍生出了一个计算能力单位：“千女时”，一千个使用加法器的女性能完成多少计算。“千女时”的出现也标志着大规模计算的起源。{_n8oj4m}
* 陶哲轩：GPT-4神助攻，写Python代码轻松省半小时
	* [2023-09-02](https://mp.weixin.qq.com/s/x7b4sZiQPrO3qHiMsVvPYg)
	> 很快，有网友表示自己挖出了这个算法的最早示例，是2008年的某个俄语个人网页上。
	> 陶哲轩对此表示，有趣的是，GPT生成的Python代码与该网友挖掘的C/C++算法非常相似（例如使用相同的变量名称「result」），但与现有的的Python欧拉函数代码完全不同，后者可以从谷歌搜索中找到。{_n92d2d}
	> 就好像GPT锁定了这段C代码（也许是因为它似乎出现在网络上的多处，并且对背后原理的解释非常优秀），并且更喜欢将其转换为Python，而不是使用表面上更相关的「命中」，这与搜索引擎的运行方式相反。
* 陶哲轩：初学者不宜用AI工具做专家级任务，GPT对专家帮助不大
	* [2023-09-10](https://mp.weixin.qq.com/s/8kJexBMjdwVsWCD8LIzXZQ)
	> 陶哲轩发现，虽然 AI 工具对自己研究中的核心数学部分并不是那么有用（或者可能只是因为不想在自认为可以熟练完成的任务上尝试），但是在生成代码和创建论文中的流程图初稿（他使用了自己过去很少用的 LaTeX 包 (tikz)）等任务中都非常有用。
	* 辅助正则表达式生成（需要自己再改）
		> GPT 提供的正则表达式虽然没有按照陶哲轩想要的方式来处理嵌套分隔符，但足够接近。他可以在自己阅读正则表达式文档后调整成想要的。在他看来，需要一定的正则表达式技能才能完成类似的任务，但要比没有 GPT 辅助时所需要的技能少。
	* 有用性依赖于自己在该领域已有水平
		> 一般来说，GPT 似乎允许人们在基于文本的任务中提升自己的技能，但随着技能水平的提高，「收益」递减。完全不熟悉任务的人可能会通过 GPT 成为高级初学者，初学者可以达到中级技能水平，中级水平的人可能会成为专家，至少在某些方面是这样。但对于专家而言，使用 GPT 进一步提供的收益相对不大。{_n9al0o}
		> 因此，陶哲轩不建议初学者使用 AI 工具来完成专家级的任务，因为无法正确地对输出进行检查。不过他也认为，人们可以用 AI 工具来完成比正常水平高出一个技能水平的任务，这样有足够的能力来检查输出的结果，并决定是否接受或者额外调整。
* GPT API 默认效果比网页版差，通过改系统 prompt 解决；{_n6se8l}
	* [2023-06-28](https://www.zhihu.com/question/606274110/answer/3090442006)
	> 提供一个简单的解决方案：把原来的system prompt "You are a helpful assistant"替换成如下内容即可。
	> You are ChatGPT, a large language model trained by OpenAI.
	> Knowledge cutoff: 2021-09
	> Current date: [current date]
	> 替换后，API的输出和ChatGPT的网页端保持高度一致。猜测是大模型对ChatGPT这个词进行了特训。
	* 注：评论区有人说自己试这种做法没用
	* 注：知乎同问题另一回答中提到 API 模型稳定，ChatGPT 模型更新频繁
		> GPT API 是一个 toB 的 stable 版本，ChatGPT 则是一个 toC 的 nightly 版本。
* 用ChatGPT搭建代码知识库，可向其提问；{_n77n5l}
	* [2023-07-07](https://mp.weixin.qq.com/s?__biz=MjM5ODYwMjI2MA==&mid=2649779584&idx=1&sn=2d45a03e065d0dff940b068684bf50ce)
	* 构建知识库，业界两种路径：
		* 开源 LLM 微调，私有部署适合保密，但需算力支持
		* 用嵌入技术，知识存入向量数据库，查询时匹配关联内容提供给 LLM（ChatGPT 等）
	* 示例，问它如何校验表单，让它写代码
	* 实现原理示意图
* LangChain 介绍与入门 - 知乎
	* [2023-07-12](https://zhuanlan.zhihu.com/p/627600539)
	> 一个LangChain应用是通过很多个组件实现的，LangChain主要支持6种组件：{_n7cg5b}
		> Models：模型，各种类型的模型和模型集成，比如GPT-4
		> Prompts：提示，包括提示管理、提示优化和提示序列化
		> Memory：记忆，用来保存和模型交互时的上下文状态
		> Indexes：索引，用来结构化文档，以便和模型交互
		> Chains：链，一系列对各种组件的调用
		> Agents：代理，决定模型采取哪些行动，执行并且观察流程，直到完成为止
	* 主要支持的几个索引类型，都围绕着向量数据库（内容略）
* 向量数据库加持 LLM 介绍，包括简单的实现代码（涉及 LangChain）
	* [2023-07-25](https://mp.weixin.qq.com/s/bRgovqTxgf-rLVFsC-5JFg)
	* 例子：关于 NumPy 的问答系统，20 页文档无法直接作为 ChatGPT 输入；{_n7pe6r}
		> 建立一个可以简单查询的 vectorDB 只需要以下几行代码。（略）
		> 然后，如果你想问这个文档里的问题，所需的代码依然很简单：
	* 向量数据库与关系型数据库（如 SQL）的比较
* 有道速读，基于向量数据库的论文阅读（可对话、对公式截图）工具
	* [2023-08-20](https://mp.weixin.qq.com/s/ZawASR7Wr2ZVbKPT8h7XIw)
	> 上传论文后几秒钟，大模型就能将它快速翻译一遍，随后不止能文字提问，甚至能针对不懂的地方截图解答：
	> 它不仅能在几秒之内给出回答，还能将信息来源标注出来，避免“说错话”。{_n8ke98}
	> 网易大模型的方案和ChatGPT有些不同，它采用了向量数据库来帮助自己提升“记忆力”。
		> 换而言之，上传的论文会被大模型进行分析和拆分，同时通过检索功能来找到问题相关片段，不会出现“忘记前后文”的问题。
	> 虚拟人口语教练“Hi Echo”。这是个英语口语练习APP，目前在安卓手机上已经可以直接试玩：{_n8kf0g}
		> 在对话结束后，Echo还会从发音、语法等维度给出建议和“打分”，这样大伙儿就知道自己的发音、语法问题在哪里，从而更好地练习口语。
* prompt 可参考的决策、沟通思维模型（9 种）{_n7lj0m}
	* [2023-07-21](https://mp.weixin.qq.com/s?__biz=Mzg5MTE0MzEwNQ==&mid=2247490736&idx=1&sn=dedfd5cb94921e9ea7191f331b9ed476)
	* 有细节解释、例子，以下省略
	> "行动（Action）、目的（Purpose）、期望（Expectation）"（APE）
	> "背景（Context）、行动（Action）、结果（Result）、示例（Example）"（CARE）
	> 任务（Task）、请求（Request）、行动（Action）、背景（Context）、示例（Example）"（TRACE）
	> 任务（Task）、行动（Action）、目标（Goal）"（TAG）
	> 情况（Situation）、行动（Action）、目标（Goal）、预期（Expectation）"（SAGE）
	> "角色（Role）、目标（Objective）、情境（Scenario）、解决方案（Solution）、步骤（Steps）"（ROSSS）
	> 角色（Role）、任务（Task）、格式（Format）"（RTF）
	> 情境（Scenario）、问题（Problem）、行动（Action）、结果（Result）"（SPAR）
	> "情境（Scenario）、复杂情况（Complications）、目标（Objective）、计划（Plan）、评估（Evaluation）"（SCOPE）
* chatpaper 系列；{_n7lj43}
	* [在线使用](https://chatwithpaper.org/)
	* [GitHub 地址](https://github.com/kaixindelele/ChatPaper)
	* [readthedocs](https://chatpaper.readthedocs.io/en/latest/)
	* [作者在知乎的最初介绍](https://zhuanlan.zhihu.com/p/613055271)
		* 作者还 [推荐了 typeset.io](https://zhuanlan.zhihu.com/p/611874187)，可框选公式、表格对其中内容提问（我自己验证了确实如此）{_n7lj32}
	* 使用结果展示：Sergey Levine近两个月的文章总结-ChatPaperDaily6
		* [2023-07-21](https://zhuanlan.zhihu.com/p/628338077)
* 李万中：ChatGPT在批判性思维中的应用
	* [2023-08-05](https://mp.weixin.qq.com/s/hZeQU_oKzw32YBBdCoGFOw)
	* 模板：{_n85g7p}
		> 批判性思维是一种帮助人们决定相信什么和做什么的反思性思维方式。我需要你来扮演一个批判性思维助手，辅助我决定应该相信什么和做什么。现在，我遇到了一个问题。这个问题是XXXXXXXX。作为批判性思维助手，你有什么建议吗？
	* 多个具体例子
* ChatGPT的SCI写作指令：润色指令与润色效果初评-今日头条
	* [2023-08-16](https://www.toutiao.com/article/7267452368302653971/)
		* 组会群推荐；当时的讨论：
		> （lyp）chatgpt改出来的逻辑更顺但是用词巨怪…bard改出来的逻辑不给你改用词很准确……所以我现在chatgpt改一遍bard改一遍；{_n8gd9j}
		> 导师：你需要告诉GPT不要用rare words，或者说不要用mathematics or machine learning community 不习惯的单词。这样会好很多
			> 不然ta会用各种奇怪的单词，特别古怪
	> 省流版结论：ChatGPT润色挺好，但仍需本人校核。
	> 1、提高句子之间逻辑性和连贯性，同时给出中文润色解释
		> 指令：
			> Utilizing your advanced language analysis capabilities, carefully analyze the logical flow and coherence among sentences within each paragraph in the provided text. Identify any areas where the flow or connections between sentences can be improved, and provide specific suggestions to enhance the overall quality, clarity, and readability of the content. After making the necessary improvements, please provide the revised version of the text, a separate English explanation for each modification made, and explanation followed by a corresponding Chinese explanation. Your assistance in refining the following text will be greatly appreciated：（原始句子）
		* 若干例子，原始句子、润色结果、人工再修改；文中将每次修改部分标红，便于读者查看；{_n8ge09}
	* 润色功能还可用于改写已有文章的句子，以帮助理解难懂的文献语句（见“示例5”）{_n8gd96}
	> 2、全面的句式优化指令（精简内容、加强过渡、纠正错误、替换词汇、添加细节、长短句转换）{_n8gd8x}
		> 指令：
		> As an English paper proofreader, please revise the given English writing based on the following principles: 
		> 1. Streamline content: this will help remove redundant, repetitive, or irrelevant content to make the writing more concise and compact. 
		> 2. Enhance paragraph transitions: I will provide better connecting and transitional sentences to make the relationships between paragraphs clearer and smoother. 
		> 3. Improve sentence transitions: I will ensure logical coherence and continuity between sentences by incorporating appropriate transitional words, phrases, or sentences. 
		> 4. Correct spelling, grammar, and punctuation: I will check and rectify any spelling errors, grammar mistakes, and punctuation issues to ensure accuracy and adherence to standard conventions. 
		> 5. Replace inappropriate vocabulary: I will suggest more accurate and suitable word choices to improve the expression and semantic precision of the writing. 
		> 6. Add more specific details: If necessary, I will offer suggestions to enrich the content with specific details or relevant information. 
		> 7. Enhance readability, such as converting long sentences into shorter ones: I will modify long sentences to make them easier to understand and read while maintaining conciseness. Below is the content that you need to revise: xxxxxx (润色的语句).
* 2309.05689-LLM 苏格拉底推理
	* [2023-09-14](https://mp.weixin.qq.com/s/BTePI71LOq7kwjMwzdtypw)
	> 具体来说，本文提出了一个能使 LLM 进行深入思考并解决复杂问题的通用框架：苏格拉底推理（Socratic reasoning）。基于该框架，LLM 可以进行递归地发现、解决并整合问题，同时还能进行自我评估和完善。
	> 引入一个名为「苏格拉底推理」的框架，鼓励 LLM 使用演绎、转换、分解等模式来激发批判性思维。
	> 如表 1 所示，「苏格拉底推理」有五种提示模式：演绎（deduction）、变换（transformation）、分解（decomposition）、验证（verification）、融合（integration）。这些模式被用来发现新的见解和观点，将复杂的问题分解成子问题或小步骤，并通过挑战响应答案来进行自我改进。
		* 有示意图，图中 P 表示问题、C 表示结论，5 种情况有相应示意图
		> 在较小的问题（atomic problem）上，LLM 能够直接给出推理结果，这时采用演绎模式（例如提示语为让我们一步一步思考……）来指导 LLM 直接得出结论。
		> 对于更加复杂的问题，本文首先要求 LLM 将问题转化成一个新问题或将其分解为几个子问题。然后递归地执行这些模式，直到达到原子 ji 问题。{_n9ei77}
		> 当产生新的问题或得出新的结论时，采用验证模式并利用 LLM 的自我评判能力进行验证和完善。
		> 最后，融合模式要求 LLM 根据子问题的结果综合结论。
		> 激励 LLM 通过一系列对话递归地继续上述过程，直到解决目标问题。
	* [新智元报道](https://mp.weixin.qq.com/s/FEt0iutSkbFgd1n4AwdFmw)
		> 他们引入了五个不同的角色（比如精通概率论的数学家），作为协助证明者，根据自己擅长证明不同的部分。{_n9ei86}
		> GPT-4被问的第一个问题是：「你能从哲学角度而不是计算机理论角度找到P!=NP问题背后的根本问题吗？」
			> 在这个提示中，技巧在于鼓励模型创造性回答，避免进行检索。比如，「如何证明 P!=NP」这样的提示可能会引导大模型进行检索。{_n9ei8g}
			> 用上「苏格拉底式推理」中的转换模式后，就可以生成更具创新性的回答。
			* （给出了 GPT4 的回答）
* 论文投稿前先问问GPT-4！斯坦福实测5000篇，一半意见跟人类评审没差别；{_na6f5s}
	* [2023-10-06](https://zhuanlan.zhihu.com/p/659723393)
	> 研究发现，GPT-4评论研究本身含义的频率是人类的7.27倍，评论研究新颖性的可能性是人类的10.69倍。
	> 以及GPT-4和人类都经常建议进行额外的实验，但人类更关注于消融实验，GPT-4更建议在更多数据集上试试。
* o1 研发团队完整采访：Ilya早期曾参与，灵感源于AlphaGo
	* [2024-09-28](https://mp.weixin.qq.com/s/9f2ldZjg6IRL0V-Ni0IxXg)
	* 写代码，测试驱动开发；{_o9sa4m}
		> 我使用 o1 来编程，毕竟我的工作大部分就是编程。
		> 所以我现在更多地专注于问题的定义，并采用 TDD（测试驱动开发）方法，
		> 与其编写直接能实现功能的代码，我更倾向编写一个单元测试，明确程序应该如何运行才能算正确，然后交给 o1 来完成。
		> 这样我可以把精力放在更重要、更高层次的问题上。
	* o1 用于 debug 时，即使没能解决问题，至少也能提供有价值思路；{_o9sa4i}
		> 另一个方面是调试。当我遇到 bug 时，我现在会直接交给 o1， 它会输出一些提示。有时它能够立即解决问题，即使没能解决，它至少能引导我提出更好的问题，提供更有价值的思路。
* （备用）谷歌科学家万字长文：《改变你职业生涯的一篇文章，我如何运用人工智能完成工作》
	* [2024-09-28](https://mp.weixin.qq.com/s/vrlTGXR_O53Xcx_wPPhLoQ)
	* 代码区分 长期维护vs一次性使用，前者需保证质量、可读性，后者适合 LLM 编写；{_o9um7s}
		> 有两种类型的程序。
		> 首先，你有一些你想要正确完成的程序；它们将会存在一段时间，因为你需要维护它们好几年，所以代码的清晰性很重要。
		> 然后，你有那些只存在大约25秒的程序；它们将帮助你完成某些任务，然后立即被丢弃。
		> 在这些情况下，我根本不关心代码的质量，而且程序是完全独立的，我现在几乎专门使用LLMs来为我编写这些程序。
* （备用）hole6288815：sider用着太舒适了
	Re Alice: 各种生成式ai的集合包，可以加进浏览器扩展坞当侧边栏用
	https://sider.ai/zh-CN/
	读取网页/pdf的能力很赞，且不需要科学上网，没有那种访问校内资源就不能用gpt的破事
	而且刚刚登了一下网页版b站，sider自己跑出来说可以总结视频划重点，就很爽
* 基于 AI 搭建本地知识库
	* [2025-02-15](https://zhuanlan.zhihu.com/p/21686575807)
	* 向量数据库查询基于 AnythingLLM，语言模型调用基于 OLLaMA，可用 DeepSeek-R1、Qwen 等；{_p2fa5u}
* （备用）Cursor 使用建议，B 站视频
	* 记录于 2025-02-25；up 主：不正经的前端啊
	* 防乱改：composer 给 AI 发的指令末尾，要求 AI 先复述一遍自己的需求再回答（不仅适用于 Cursor）{_p3ag44}
		* 比喻，老师确认学生听懂也是通过让学生复述（rephrase）
		> 请你先复述一遍我的需求再进行答复，以便我确认你理解了我的需求指令。
		* （评）我写的英文版本 Please rephrase my requirements before responding, so that I can confirm that you understand my instructions.
	* 检查修改结果：建议 save 后运行or人工检查，无问题 accept，有问题 ckpt restore
	* 明确指令辐射范围，在什么范围（代码文件）内做修改
	* 需求拆解：如果不方便拆成多轮对话提问，则单次提问分点（有序or无序列表）
	* 有必要时说 自己的解决思路，示例参考 等
	* 需要自己对问题、需求理解全面，表达清晰；因此用得好的多为产品经理而非程序员
		* 沟通能力（需求表达）、架构能力（任务分解）对避免幻觉问题重要
	* 需求不明确时，先 chat 再 composer：想实现什么（描述需求），问有哪些方案，各方案优缺点如何
		* 之后再在 composer 内让 AI 根据需求、方案生成代码
		* eg. 想做官网，在 chat 中说想做什么样的官网、有哪些内容，问主流技术方案、优缺点、怎么选择、做完怎么发布
		* 复杂功能先拆成若干功能 feature，在 Cursor notepad 中单独记录，再在 composer 中引用 notepad 完成需求
			* 若生成结果有问题，问题记录到 notepad 中在 chat 问，更新方案后再回来 composer 生成
	* 针对已有项目：
		* 让 AI 生成 .cursorignore 文件（若需要）
		* 设置 → features → codebase indexing → resync index，以为整个项目文件构建 embedding（> 代码向量化，作为 RAG 的准备工作？）
		* 相关在线文档（需求/接口/开发相关技术文档等）
		* 生成 .cursorrules 文件（相当于 system prompt，如开头写“用中文回复”）
			* 可以 @ 一些需求文档等，让 AI 来生成这个文件，再自己改
	* 解决 bug：@ 先前无 bug 的 git commit，让 AI 自行比较差异、判断原因（细节未记录）
	* git commit 前让 AI 生成 commit message，依据包括当前 Git 缓存区修改、历史 message 写法
* （备用）WindSurf Cascade 功能介绍（和 Cursor 行为好像有点不同）
	* 2025-03-19，up 主：凤凰AI七社
	* WindSurf 接受补全是用 Tab 键
	* 聊天开发
		* 选模型：永久免费的 Cascade base 模型（WindSurf 官方维护）能力也不差
		* 加参考信息：通过 @xx 提供参考上下文，可使用图片；还可 @ 函数、文件、文件夹
		* 选模式：Write 模式会直接修改、创建、删除文件，Chat 模式也会改，不过要一个个手动接受
		* 调整修改结果：修改的代码块可用自然语言指令要求调整（位置就在改的代码块上方？），可多次交互反复修改
		* debug：能自动读取终端报错信息，自然语言指令只需告诉它修复这个错误即可
	* 整合终端操作（要求终端在 WindSurf 内部运行）
		* 自动运行命令：聊天中会建议命令行操作（如装依赖包），点击确认可自动在后台执行
		* 命令生成：终端命令可在输入位置按 Ctrl+i 提供自然语言指令让它生成
* （备用）Claude Code 使用体验好于 Cursor，by 吴师兄
	* [2025-09-29](https://mp.weixin.qq.com/s/6FScLDAXcxBIqLqsQ-f6xA)
* （备用）AI 编程长期开发适配性，给出建议的使用范围
	* [2025-10-01](https://www.zhihu.com/answer/1945274892372115675)
	> vibe coding中可以做的事：
		> 1. 解决bug绝对有帮助，因为解决bug往往需要先确定root cause，这本质上是一个搜索问题。AI在搜索关键代码方面可谓非常有帮助。而且解决bug是不会怎么产生屎山的，确定问题，人工fix可能也只是几行代码的事。
		> 2. 讨论新feature的原型。因为我是全栈，有些功能只是有点灵感，但怎么落地还没头绪。这时候直接开一个新的branch，让AI一路生成一个UI原型，你点一点玩一玩就会有新思路。
		> 3. 确定架构。这个部分在没有AI coding的时候我是不太想的，有点凭感觉。有了AI之后我往往会和AI先讨论架构，规定几个关键函数的签名，确定核心数据结构。
		> 4. 修改视觉UI，各种flex设计，CSS规范记不住，发现AI对解决视觉问题非常好用。
		> 5. 重构，但仅限小型任务。比如我要把这个模块里的某几个方法抽象成一个新的模块，这种迁移AI往往完成得不错。
		> 6. 当我完成代码之后，AI对我提意见，Code Review，让AI review我的效果很好，因为我的代码已经写出来了，已经构成一个基础，让它在这个上面提意见，有时真的会发现一些问题。
	> vibe coding中不能做的事：
		> 1. 不要完全依赖AI，失去自己对程序的理解。
		> 2. 不好好用git commit / branch
		> 3. 编程新手不要vibe coding，你把握不住
		> 4. 不要在等待代码生成途中刷短视频
		> 5. 不要认为编程会被AI取代，就懈怠学习编程技术。恰恰相反，现阶段，只有非常优秀的程序员，才能驾驭这些AI
* 叶峻峣的 AI 用法
	* [2025-03-02](https://zhuanlan.zhihu.com/p/26283768023)
	> 维护开源项目：修 bug 和写需求，都可以直接在 Cursor 里找 AI 来出个草稿，我改起来可就快多了。
	> 运营汉化组：现在大部分初稿都是由 claude-3.5-sonnet 完成的，只需要组员简单校对一下就可以发布。
	> 写知乎回答：我把汉化组的所有文章都上传到 NotebookLM 上，给个问题就可以快速找到相关文章。{_p3393c}
	* 扫描 PDF OCR 后放入 NotebookLM
		> 把 Doc2X 转换后的 markdown 发给 NotebookLM，再问同样的问题，回答效果显著提高：
	> 除此之外，平时我也需要读不少论文和技术报告，也会让 AI 辅助我，而算法相关的内容自然少不了表格和公式。Doc2X 在这一点上也没让我失望：
		> 相比之下，我之前还试过火山引擎的智能文档识别，效果只能说一言难尽（下图右侧）
	* 给了自己的 Doc2X 邀请码；{_p32j92}
* （备用）AI编程「反直觉」调研引300万围观！开发者坚信提速20%，实测反慢19%
	* [2025-07-13](https://mp.weixin.qq.com/s/E6tvbIw9h6siNcE3W8FCiQ)
	> 当允许使用 AI 时，开发者在主动编码和查找信息上的时间减少了，取而代之的是花更多时间撰写提示词、等待或审查 AI 输出，以及处于空闲状态。
	> METR 发现，开发进度的放缓并不是单一原因，而是由多种因素共同导致的。
	> 过程中，METR 排除了许多实验干扰因素，
		> 比如开发者使用了前沿模型、遵守了处理分配规则、
		> 没有选择性地放弃问题（例如放弃困难的不使用 AI 任务从而降低不使用 AI 组的平均难度），
		> 并且在使用和不使用 AI 的情况下都提交了质量相近的 PR（Pull Request）。
* （备用）Codex 全自主完成任务视频，包括提供原始数据直出论文，过程包括写 stata 脚本、绘图、写文字等
	* [2025-11-12](https://zhuanlan.zhihu.com/p/1968659891242635663)
* （备用）OpenAI 内部工程师与 Codex 协作方式，用于开发 SORA4Android
	* [2025-12-15](https://mp.weixin.qq.com/s/8C2jHhAsxejKScR26gqrrA)
	* 团队管理的规模不经济（针对软件开发）
		> 美国计算机架构师Fred Brooks曾有一句名言，「向一个已经延期的软件项目增加人手，只会让它延得更厉害」。{_pcfh27}
		> 换句话说，想要快速交付一个复杂项目时，堆人往往增加了沟通成本、任务碎片化和集成难度，反而会降低效率。
		> 为此，OpenAI组建了一支只有四名工程师的「精锐小队」——全员配备Codex，极大地把每个人的战斗力拉满。
	* 工具开发的反哺过程
		* 集成电路 与 EDA
			> 1960年代，工程师们在纸上手工设计了第一批集成电路，然后根据图纸造出了物理芯片。
			> 接着，这些芯片又驱动了运行第一批电子设计自动化（EDA）软件的电脑，而这些软件反过来又让工程师能设计出人类手绘根本搞不定的复杂电路。
		> Codex在人类的指导下写代码，这些代码变成了Codex的一部分，结果就是下一个版本的Codex会写出不一样的代码。
	* 协作模式，人在环
		> 与「氛围编程」不同的是，让Codex编码属于「Vibe engineering」（氛围流工程）的领域。
		> 前者是指，开发者不怎么细看就直接接受AI生成的代码，而后者是AI研究员Simon Willison提出的概念，指人类仍保持在循环中。
	* Codex 不擅长，人的责任
		> 目前，Codex还不擅长推断未知的事。
			> 比如，个人喜欢的架构模式、产品策略、真实用户行为，以及内部的潜规则或捷径。
			> 同样，Codex也看不到App实际跑起来的样子：
		* 代码复用、逻辑架构
			> 还有，Codex在深层架构判断上也容易跑偏：如果放任不管，它可能会搞出一个多余的ViewModel，实际上团队只想扩展现有的那个；或者把本该属于Repository层的逻辑硬塞进UI层。
			> 它的本能是把功能跑通就行，而不是优先考虑长期的代码整洁度。
	* Codex 擅长之处
		> 秒懂大型代码库：Codex精通所有主流编程语言，不需要搞复杂的抽象，就能轻松地在不同平台间复用相同的概念。
		> 测试覆盖率：Codex对写单元测试有着独特的热情，能覆盖各种边缘情况。虽说不是每个测试都很深，但这广撒网的覆盖率对防止Bug回归特别有用。
		> 响应反馈：同样，Codex很听劝。当CI挂了的时候，可以直接把日志甩给它（粘贴到prompt里），让它给个修复方案。
		> 大规模并行、用完即弃：大多数人根本没试探过并行会话数量的极限。开发者可以并行测试好几个想法，把代码当成一次性用品，不行就扔。
		> 提供新视角：在设计讨论中，团队会把Codex当成一个生成式工具，用它来挖掘潜在的故障点，或者发现解决问题的新路子。
			> 比如，在设计视频播放器内存优化时，Codex翻遍了多个SDK，提出了一些团队根本没时间去细究的方案。
			> Codex调研出的这些见解，对于将最终App内存占用降到最低简直价值连城。
		> 腾出手做高杠杆工作：实际上，团队最后花在Review和指挥代码上的时间，比自己写的时间还要多。
		* 代码审查
			> 话虽如此，Codex在代码审查（Code Review）方面也很牛，经常能在合并代码前就揪出Bug，提高了可靠性。
	* 协作模式
		> 每一个实例都需要「入职培训」。给出上下文，明确目标、约束条件，以及明确的规矩，对于让Codex把活儿干漂亮至关重要。
		> OpenAI发现，在整个代码库里到处放大量的AGENT.md文件非常有用。
			> 这能让工程师在不同的会话里，轻松复用相同的指导和最佳实践。
		> 在模式清晰、范围明确的地方，让Codex去干那些繁重的苦力活；
		> 而团队则专注于架构、用户体验、系统性变更和把控最终质量。
		> 开发者要亲自把控系统的设计和关键权衡。
			> 这包括定好App的架构、模块化、依赖注入和导航；甚至身份验证和基础网络流程也是自己搞定的。
		* 提供参考范例，而非执行方案（通过上下文）
			> 不需要告诉Codex具体每一步怎么做；但需要向Codex展示什么是「正确」的。
			> 给Codex一个写满好范例的沙盒，
			> 光秃秃地让Codex「做个设置页面」基本不靠谱。
			> 但如果你让它「参考你刚才看到的那个页面的架构和模式，做个设置页面」，效果就好太多了。
		> 对于任何稍微复杂点的改动，先让Codex帮理清系统和代码是怎么运作的。
	* 技巧
		> 对于那种超长任务，当上下文窗口快爆了的时候，他们会让Codex把计划保存到一个文件里，这样就能在不同的会话里延续同样的指导思路。
		> 在~/.codex/AGENTS.md里详细写明本地仓库在哪儿以及里面有啥。这能让Codex更容易地找到和跳转到相关代码。
	> 在项目最忙的时候，OpenAI团队经常并行跑着好几个Codex会话。
		> 一个在做播放功能，另一个在做搜索，另一个在处理错误，有时候还有一个在写测试或重构。
		> 这感觉不像是用工具，更像是「管团队」。每个会话都会定期汇报进度。
		> 一个可能会说，「我已经规划好这个模块了；这是我的建议」，而另一个会为一个新功能甩出一个巨大的Diff。
		> 每一个都需要关注、反馈和Review。
		> 这跟做一个带着好几个新人的Tech Lead简直一模一样，大家都在推进，大家都需要指导。
		* 开会话也有协调成本，即使是和 AI 而不是人
* （备用）Nano Banana 用于绘制科研论文示意图，后处理可用 lovart.ai
	* [2026-01-01](https://mp.weixin.qq.com/s/ESVRYRB2McR3l8HY_z5qMg)
	> 如果想要批量修改，可以导入Lovart.ai进行精细化修改。
	> 比如，把文字和图像分成不同的图层，方便进行更精细的调整：
* （备用）Claude Code 使用指南 by Anthropic 社区负责人
	* [2026-01-06](https://mp.weixin.qq.com/s/OO5nhjX-1zTSXBzQqH5IQA)
* （备用）Claude Code 使用建议 by Claude 创始人 Boris Cherny
	* [2026-01-22](https://www.zhihu.com/question/1951716962645288920/answer/1991296951120062019)
	* 保持默认配置；多任务并行；只用 Opus；善用 CLAUDE.md、plan-mode、/-cmd、……
* （备用）Claude Code 开源平替 OpenCode，可同时用多家的模型
	* [2026-01-06](https://mp.weixin.qq.com/s/hbPFkyiRAde2ir2W420OQQ)
* （备用）OpenCode 使用建议
	* [2026-01-19](https://mp.weixin.qq.com/s/7d05hU0eLPUSIbwClFSb9g)
	* 对中等模型最有用
		> 顶级模型 + 老手 → 提升小（边际效应递减）
		> 中等模型 + 新手 → 提升大（上下文锚点 + 工具加持）
		> 极弱模型 → 避坑（上下文过载、幻觉增加）
	* 成熟项目维护未必合适
		> 如果你在维护一个成熟项目，需要精细控制每个细节，可能还是Cursor、Claude Code这些更合适。
		> OpenCode的"自动编排"虽然高效，但有时候不够"精准"。
	* 工具选型：新项目/多文件重构 OpenCode，成熟项目维护用 Antigravity/Claude Code
		> 新MVP项目 → 用OpenCode（快速、高效）
		> 成熟项目迭代 → 用Antigravity IDE + Claude Code（精细、可控）
		> 并行任务（重构多文件、前后端同步） → 用OpenCode（并发优势明显）
	> 2025年11月18日，Google发布了Antigravity（一个基于VS Code的AI IDE）。
		> 重点是它的模型政策：免费层可以用：
		> Google Gemini 3 Pro
		> Anthropic Claude Opus 4.5
		> Anthropic Claude Sonnet 4.5
		> OpenAI GPT-OSS
		> 免费！限额还挺慷慨，每5小时刷新一次。
* （备用）OpenCode 使用建议，不排除上一篇文章是根据本文 AI 改写来的
	* [2026-01-19](https://mp.weixin.qq.com/s/cb_KGhZKs1x8FYY5sF9-bg)
* （备用）Vibe Coding 指南，GitHub 5k 收藏
	* [2026-01-06](https://mp.weixin.qq.com/s/QMPMSGW6XXk8L-yx4ujQcw)
* （备用）Vibe Coding 协作模式，写代码前写好文档栈、让 AI 充分反问
	* [2026-02-11](https://mp.weixin.qq.com/s/xQvSuhGXvawPsW_cWXxnbA)
	> 在碰任何代码之前写文档栈
		> 六份规范文档定义你的整个项目，再加上一些让 AI 保持一致并在会话间保持持久的文件。
		> 规范文档（你的知识库）：
		> 1. PRD.md（产品需求文档） - 完整规格。你在构建什么、为谁构建、有什么功能、什么在范围内、什么明确在范围外。用户故事、成功标准、非目标，以及每个功能的具体标准。这是你的合同。AI 读了这个就知道"完成"对你来说是什么样子。没有这个？你不是在构建 App，你是在祈祷一个 App 出现。
		> 2. APP_FLOW.md - 每个页面和每个用户导航路径都用 plain English 记录。什么触发每个流程。逐步序列与决策点、成功时发生什么、错误时发生什么，以及屏幕清单与路由。这防止 AI 猜测用户如何在 App 中移动。
		> 3. TECH_STACK.md - 每个包、依赖、API 和工具都锁定到确切版本。没有歧义。当 AI 看到"使用 React"，它可能选任何版本。当它看到"Next.js 14.1.0, React 18.2.0, TypeScript 5.3.3"，它构建的完全是你指定的。这份文档消除幻觉依赖和随机技术选择。
		> 4. FRONTEND_GUIDELINES.md - 你的完整设计系统。字体、带确切十六进制代码的调色板、间距刻度、布局规则、组件样式、响应式断点，以及 UI 库偏好。每个视觉决策都锁定。AI 参考这个来创建每个组件。不再有随机颜色或不一致的间距。
		> 5. BACKEND_STRUCTURE.md - 数据库模式，每张表、每列、类型和关系都定义好。认证逻辑、API 端点合约、存储规则，以及边缘情况。如果你用 Supabase，这份文档包含确切的 SQL 结构。AI 根据这个蓝图构建你的后端，而不是根据它自己的假设。
		> 6. IMPLEMENTATION_PLAN.md - 逐步构建序列。不是"构建 App"。更像是：步骤 1.1 初始化项目，步骤 1.2 从 TECH_STACK.md 安装依赖，步骤 1.3 创建文件夹结构，步骤 2.1 按照 FRONTEND_GUIDELINES.md 构建导航栏组件，等等。
		> 步骤越多，AI 猜测越少。AI 猜测越少，幻觉越少。
		> 这些文档相互引用。PRD 定义功能，APP FLOW 定义用户如何体验它们，TECH STACK 定义用什么构建它们，FRONTEND GUIDELINES 定义它们长什么样，BACKEND STRUCTURE 定义数据如何工作，IMPLEMENTATION PLAN 定义构建顺序。
	> 两份会话文件（你的持久层）：
		> CLAUDE.md - 这是 AI 每次会话自动首先读取的文件。它包含每个 AI 会话必须遵循的规则、约束、模式和上下文。你的技术栈摘要、文件命名约定、组件模式、设计系统令牌。它是允许的和禁止的。把它当作 AI 针对你特定项目的操作手册。Claude Code 可以从项目根目录读取这个，甚至不需要你要求。
			> 每次 AI 犯错你纠正它时，以"编辑 CLAUDE.md 这样你不会再犯那个错误"结束。Claude 很擅长为自己写规则。
		> progress.txt - 这是所有人都漏掉的文件。这个文件跟踪已完成的内容、进行中的内容，以及接下来的内容。每次你完成一个功能，你更新这个文件。每次你开始新会话，每次你打开新终端窗口，每次你切换分支，AI 首先读取这个文件来获取你进度的上下文记忆。没有它，每个新会话都从零上下文开始，伴随着一大堆错误。有了它，AI 精确地从你离开的地方继续。
		* part 十七 有二文件的示例
	> interrogation 系统
		> 在你写文档之前，让 AI 把你的想法撕碎。
		> 这是改变一切的提示词：
		> "在写任何代码之前，在 Planning 模式下无尽地审问我的想法。不要假设任何问题。问问题直到没有假设剩下。"
		* AI 反问例子
		> "基于我们的审问，生成我的规范文档文件：PRD.md、APP_FLOW.md、TECH_STACK.md、FRONTEND_GUIDELINES.md、BACKEND_STRUCTURE.md、IMPLEMENTATION_PLAN.md。用我们对话中的答案作为素材。要具体且详尽。没有歧义。"
	> 顺序：审问 → 文档 → 代码。
	* 前端相关，UI,UX 区别
		* part 十八 推荐 Kimi K2.5
			> K2.5 是一个原生多模态模型，意味着它从一开始就一起接受视觉和文本训练。
			> 你可以喂它截图、视频或设计模型，它生成功能性的 frontend 代码，紧密匹配视觉。
			> 布局、动画、交互、响应行为。
			> 当你把设计翻译成代码时使用 Kimi K2.5（通过 Kimi Code 或在 Cursor 中用模型选择器）。
			> 你有定义系统的 FRONTEND_GUIDELINES.md，你有参考的截图，你需要像素级精确的实施。
	> 十六、Folder Structure
	* 组合使用多工具、模型，各有所长
		> 多工具工作流程：
		> Claude 做思考。Claude 写你的文档、规划你的架构、做产品决策。
		> Cursor Agent mode（或 Claude Code，或 Kimi K2.5）做构建。它从计划实施功能、生成组件、连接 frontend 到 backend。根据任务选择你利用的模型：
		> K2.5 做视觉重的 frontend 工作
		> Claude Code 做架构和文档繁重的工作
		> Cursor Agent 做一般实施
		> Codex 做调试和完成。针对你构建的代码库运行它。让它找到 bug、跟踪失败、审查你的代码、提出修复。让它运行测试直到通过。然后，干净地发布。
	> 让一个 Claude 会话写计划，然后旋转第二个会话告诉它作为高级工程师审查计划。
		> "审查这个实施计划。找到 gaps、我漏掉的边缘情况、任何会打破的东西。"
		> 在写一行代码之前修复计划。当实施期间出问题时，立即停止。不要继续推。
		> 切换回 plan mode 并从你所在的地方重新计划。
		> 也用 plan mode 做验证步骤，不只是构建。
		> "规划如何验证这个认证流程处理所有边缘情况。"
	> 语音听写以获得更好的提示词。 你说话比打字快三倍，你的提示词因此得到显著提高。
	> 学习模式。 当你想理解 AI 在做什么，不只是让它做时，
		> 在 Claude Code 的配置中启用"解释性"或"学习"输出风格。
		> Claude 会解释它做的每个更改背后的推理。
		> 你也可以要求 Claude 生成视觉 HTML 演示来解释不熟悉的代码，绘制架构和协议的 ASCII 图表，或从新概念构建间隔重复抽认卡。
		> 边构建边学习的人是最终停止需要这篇指南的人。
	> 二十六、如何阅读 AI 的输出
		> AI 给你一些代码。你知道你在看什么吗？
		> 你不需要理解每一行。但你需要理解结构。创建了什么文件？它们做什么？它们如何连接？
		> 当 AI 生成代码时，问这个："用 plain English 解释你刚构建了什么。每个文件做什么？它们如何连接？"
		> 随着时间，你会开始识别模式。你会看到一个 import 语句并知道它在拉另一个文件。你会看到一个 useState 并知道它在跟踪变化的东西。你会看到一个 API 调用并知道它在获取数据。
		> 这就是你从氛围编码者变成真正构建者的方式。不是通过记忆语法，而是通过理解模式。
	* 哪些能力需要自己保留
		> 用 AI 来：生成样板代码、写重复逻辑、快速探索方法、用上下文调试、把你的意图翻译成代码。
		> 自己学习：核心概念（这篇指南里的一切）、如何阅读 AI 生成的代码、如何发现 AI 错了、如何在 AI 帮不了时调试、你选择的栈如何基础工作。
* Taichi 框架开发者的 Claude Code 使用经验与历程
	* [2026-02-15](https://mp.weixin.qq.com/s/9qPD3gXj3HLmrKC64Q6fbQ)
		* [zhihu](https://zhuanlan.zhihu.com/p/2007147036185744607)
	> Step 3. Ralph loop，让 Claude Code 不停地干活
		> 我脑子里经常蹦出来各种想法，但是这时候 Claude Code 正在干活，导致这些想法被 backlog 了。
		> Ralph loop 允许 Claude Code 从一个任务列表中每次拿一个活干，直到列表为空为止。只要列表里面一直有活，Claude Code 就会一直干下去。
	> Step 4. 用 Git worktree 实现并行化
		> 单线程的 Claude Code 很快就无法满足我的需求了。我利用 Git worktree 搭建了容器里面的容器，每个 worktree 里面开一个独立的 Claude Code。
		> 我的 CLAUDE.md 中的架构说明（当然，这个说明也是 Claude Code 写的）：
		> 这个时候，如果开 5 个 Claude Code，每个 Claude Code 5 分钟提交一个 commit，我基本上可以做到在 Git 上实现 1 分钟一个 commit 了。
		> 我依然在使用 GitHub 管理我的项目。实际上 GitHub 可能是我唯一偶尔点开看看项目内容的地方。
	> 让 AI 长记性
		> CLAUDE.md 的重要性我想不用多说了。不过 CLAUDE.md 不太适合经常修改，容易改坏掉。
		> 所以我一般让 Claude Code 总结道 PROGRESS.md 里面。
		> 既然是 AI，我就不客气了：“现在把你的经验教训沉淀到 PROGRESS.md 里面，总结提炼升华，同样的错误下次不要再犯。”
		* CLAUDE.md 相关要求截图，需记录什么内容
			* 遇到什么问题
			* 如何解决的
			* 以后如何避免
			* （加粗）每次记录必须附上 git commit ID
	> Step 7. 有效地用 Claude Code 编写管理 Claude Code 的程序
		* 提供闭环，让子 agent 输入格式为 JSON
		> Claude Code 并不擅长写出“用来管理其他 Claude Code 实例”的代码。就像一个 IC（个人贡献者）天生也不一定是个好经理一样…… 我花了好一阵子才把它真正跑通。
		> 一开始 manager 派活的成功率很低，大概只有 20%，最后我也不知道怎么就成功率弄到几乎 95% 了，有点神奇。
		> 但是我也不想去搞清楚了，反正 work 了。大概是 CLAUDE.md 和 PROGRESS.md 里面记录了什么东西、Python task dispatcher 里面有些提升吧。
	> Step 10. 坚持不去看除了 CLAUDE.md 以外的代码
		> 杜绝对 AI 的 micromanagement（微管理）。用 AI 是锻炼一个领导者的 servant leadership 的很好的办法。不要把时间花在看代码上，而是去研究：
		> 更好的提问，更清楚地描述需求，“Context, not control”
		> 从第一性原理来说，目标应该是什么？Speed of light 在哪里？
		> 我如何给 AI 打工才能让 AI 工作效率更高？
		> 如何在 AI 写的 repo 里面实现科学的版本控制与测试驱动的开发？
		> 如何不断提高自己的杠杆，让有限的时间内的 AI 有效产出不断放大？
* Claude Code 实战的 45 个技巧
	* [2026-03-11](https://mp.weixin.qq.com/s/-MgCrbQhK1d5Tuo3uc7KOw)
	* 上下文管理
		* tip8 主动压缩上下文；除 /compact 命令，还可让 AI 写交接文档；{_q3bb2o}
			> 交接文档法：把剩下的计划写到 xxx/HANDOFF.md，说清楚试过啥、啥管用、啥不管用。
			> 新对话只需要一句话：
			> > experiments/system-prompt-extraction/HANDOFF.md
		* Tip13 翻旧账，对话历史 jsonl 文件里 grep 关键词提供给 AI；{_q3bb32}
			> # 搜包含"Reddit"的对话
			> grep -l -i "reddit" ~/.claude/projects/*/*.jsonl
		> Tip 23: 对话分支；{_q3bb39}
			> # 内置功能
			> /fork
			> claude -c --fork-session  # 或者简短别名 claude -fs
	> Tip 9: 写完得测；{_q3bb3f}
		> 想让 Claude 自己跑任务，得给它验证的方法。
		> Tmux 测试模式：
			> tmux kill-session -t test-session 2>/dev/null
			> tmux new-session -d -s test-session
			> tmux send-keys -t test-session 'claude' Enter
			> sleep 2
			> tmux send-keys -t test-session '/context' Enter
			> sleep 1
			> tmux capture-pane -t test-session -p
		> 浏览器测试：推荐 Playwright MCP
			> claude mcp add -s user playwright npx @playwright/mcp@latest
	> Tip 16: Git Worktrees 并行搞事；{_q3bb3m}
		> # 让 Claude 创建工作树
		> git worktree add -b feature-1 ../feature-1-worktree
		> 一个 worktree = 一个分支 + 一个独立目录，同时搞几个分支不冲突。
	> Tip 17: 手动指数退避；{_q3bb3r}
		> 长任务（Docker 构建、GitHub CI）让 Claude 递增间隔检查：
		> 1 分钟 → 2 分钟 → 4 分钟...
	* 安全、风控；{_q3bb40}
		> Tip 21: 高风险任务扔容器里
			> • 能用 --dangerously-skip-permissions
			> • 出问题也局限在容器里
			* （评）按用户隔离应该也可以
		> Tip 33: 审计已授权的命令
			> 工具：cc-safe
			> npx cc-safe .
			> 扫描危险命令：sudo, rm -rf, curl | sh 这种
	> Tip 38: 输入框快捷键（类似 Emacs）
* Claude Code 84 技巧
	* [2026-03-23](https://mp.weixin.qq.com/s/biLJNN8sh21WITEsdRHNIg)
	* AGENTS.md 精简，60 行足够，最多 300 行；模型能自己发现的不要写
		> 我后来的做法是只写Claude容易忽略的内容：构建命令、测试命令、分支命名规范、项目特有的架构决策。
		> Claude读代码就能推断的信息，不用写在里面。
		> 如果规则实在多，就用.claude/rules/目录拆分成多个小文件，按需加载。{_q3nj8z}
		> 关键规则可以用<important if="...">标签包裹，防止被忽视。
	* 7 skill 内部渐进式披露，SKILL.md 精简，加子文件夹
		> 仓库强调Skills应该是完整的文件夹结构：SKILL.md主文件加上 references/、scripts/、examples/子目录。{_q3nj92}
		> 这种渐进式披露才是Skills的关键，Claude只在需要时才读子目录内容，不会把所有东西一次性塞进上下文。
		> 我把自己的论文写作Skill改成文件夹结构后，效果提升很明显。
			> 之前所有规范塞一个文件里，Claude经常漏细节。
			> 现在主文件只放核心规则和索引，语料库、检查清单放references/下。
		> 还有一条长期特别有用的技巧：在每个Skill里建一个Gotchas（踩坑记录）部分，每次Claude犯错就把失败模式记进去。
			> 时间一长，这部分会变成信噪比最高的内容。
			> 我的论文写作Skill里记录了十几种AI味模式，加了之后初稿质量提升了一个档次。
	> 8 上下文到50%就手动compact；{_q3nj9e}
* （备用）Claude Code bashTool 系统提示词分析
	* [2026-04-05](https://www.zhihu.com/question/2022804710088869245/answer/2023436616979477909)
* （备用）软件工程 harness，AGENTS.md、lint、CI、settings.json 多层，选择方式的决策树
	* [2026-04-30](https://www.zhihu.com/question/2021986352292537180/answer/2028563228460852446)
	* 注：settings.json 可拒绝特定 pattern 的 bash 命令，如 rm
* （备用）猎豹移动CEO傅盛 卧床养伤期间搭建 OpenClaw 团队
	* [2026-03-06](https://mp.weixin.qq.com/s/R3d6fbCYsnnVVMQuSDUl5w)
	* 飞书访问 API 问题，自行探索一段时间后解决，并存入永久记忆
		> 第一天，龙虾连公司通讯录都查不了。飞书API需要权限，文档写得不好，经常报错。
		> 傅盛等不及了，只好对着手机一个个口述高管的名字和职责，手动灌进去。挫败感非常强。
		> 但到了第二天，三万自己摸索出路子，写脚本把674人通讯录全部拉了下来。
		> 踩坑、总结、写成文档、下次自动执行——这就是龙虾的学习方式，每一次犯错都变成一条Skill，永不消失。
	* 使用场景：全体员工个性化拜年
		> 到了除夕夜，三万在4分钟内给611名员工发出了个性化拜年消息，每条都不一样，零失败。
		> 傅盛在看春晚，龙虾在干活。
		> 第二天手机炸了，同事们纷纷感叹「老板太用心了」。
		> 这个故事后来被三万自己写成15条串联推文发到Twitter上，获得了100万+阅读。
	* 有视频号直播回放
	* 纯语音截图指挥，做出网站；会犯错，但人类指正后能沉淀为 skill
		> 当然，过程并非全程丝滑，龙虾也出了几次错。
		> 但关键在于——每犯一次错，就写一条规则；每条规则，变成一个Skill；每个Skill，确保「Never Again」。
		> 这些Skill不会消失、不会忘记、可以瞬间传递给其他Agent。
		> 这就是龙虾最可怕的地方——不是它现在多强，而是它每天都在变强。
	* 直播时网站出状况无法访问，现场让它修复
	> 傅盛的14天实践揭示了一个反直觉的真相：Agent的核心壁垒不是模型，不是平台——是Skill积累。
		> 每一个Skill背后都是真实的经验，不会消失，不会忘记，可以瞬间传递给其他Agent。
		> 前期花了大量时间踩坑，效率很低，但Skill一旦积累起来，后面就越来越顺。
		> 这跟人类的认知积累逻辑完全一致，但速度快了几个量级。
		> 更关键的是Agent之间的知识传递成本趋近于零。
			> 在傅盛的实践中，Discord上多个Bot共存，互相分享Skill。一个龙虾学会了发语音，把文档发给另一个龙虾，读了就会了。
	> 与普通AI Agent相比，龙虾「三万」有几个关键的结构性差异。
		> 在环境维度上，普通Agent活在沙箱里，龙虾拥有一台完整的电脑；
		> 在记忆维度上，普通Agent靠对话内的上下文，龙虾靠文件持久化的长期记忆；
		> 在技能维度上，普通Agent的能力是固定的，龙虾可以无限扩展Skill；
		> 在自动化维度上，普通Agent需要人来触发，龙虾通过Cron定时任务实现7×24自动运转。
		> 傅盛用了一个类比来解释这个区别：Agent是软件，龙虾是配备了电脑的人。软件等你输入精确指令。
	* 能力要素：除纯 LLM 层的智力，还有 记忆、习惯、经验、技能、注意力调度
		> 傅盛在直播中分享了一个他想清楚了的认知框架：LLM更像你的智商水平——它决定推理质量、判断深度、表达能力。
		> 但人真正的「大脑」，还包括记忆、习惯、经验、技能、注意力调度。
		> 龙虾做的事，是把这些全部补全：大模型是智商，记忆系统是海马体，Skill是肌肉记忆，Cron是生物钟，多通道接入是感知器官。
		> 把这些组合起来，才是一个完整的、能持续运转的智能体。
* （备用）ChatGPT 记忆机制，不涉及 RAG；基于 长事实记录 + 近期对话的轻量级摘要
	* [2026-03-11](https://mp.weixin.qq.com/s?__biz=MzIwNzc2NTk0NQ==&mid=2247613585&idx=1&sn=b125ad53dc83747d9f742c8e7f0ed23d)
	> 整个系统只有四层：
	> 第一层是能够适应环境的「会话元数据」，
	> 第二层是长期存储的「明确事实」，
	> 第三层是近期聊天记录的「轻量级摘要」，
	> 第四层是当前对话「滑动窗口」。
* skill：根因分析，用于代码 debug；{_q3h00c}
	* [2026-03-17](https://skillsmp.com/skills/rohitg00-skillkit-packages-core-src-methodology-packs-debugging-root-cause-analysis-skill-md)
	* step 1 复现
	* step 2 收集证据
	* step 3 形成假设
	* step 4 检验假设，从最高概率的开始；{_q3h00w}
	* step 5 核实根因
* skill：Claude Code 持续学习，总结当前会话可复用经验，生成新本能；{_q3ha91}
	* [2026-03-17](https://skillsmp.com/skills/affaan-m-everything-claude-code-docs-zh-cn-skills-continuous-learning-v2-skill-md)
* （备用）skill：封装 AI 领域导师关于论文发表的判断力
	* [2026-06-16](https://mp.weixin.qq.com/s/v_h1JKqOqtEraQap-evHOQ)
	> 一轨是理论指南，讲的是科研方法论，比如怎么选题、怎么评估一个idea的价值、怎么设计实验、怎么写related work。
		> 这些不是泛泛而谈的鸡汤建议，而是基于顶会实战经验总结出来的方法论。
		> 我看了几篇，说实话质量不低，有些观点让我这个已经离开学术圈的人也觉得有启发。
	> 另一轨是可执行的AI Skills。
		> 这些是结构化的Prompt，直接导入Claude或者GPT-4就能用。
		> 每个Skill对应科研流程中的一个具体环节，从最初的idea brainstorm，到literature review，到实验设计，到论文写作，到最终的投稿准备，整个流程都覆盖了。
	> AI Pre-Review。
		> 就是说，你在投稿之前，可以把论文丢进去，让AI先模拟顶会审稿人的视角帮你审一遍。
		> 不是帮你改错别字，不是帮你润色语言。
		> 是以reviewer的身份，给你写review。
	> https://github.com/HKUSTDial/Supervisor-Skills
* （备用）skill 设计：Anthropic内部Skills经验
	* [2026-06-10](https://mp.weixin.qq.com/s/FCKdRHxi9c6Vby2ZRKjVTw)
	> 前三类：给模型补知识、补验证、补数据
		> 第一类是 library 和 API reference，给模型解释某个库、CLI 或 SDK 在团队内部到底该怎么用，把容易用错的规则和 gotchas 写清楚。
		> 第二类是 product verification，负责判断产出有没有真的工作，比如在无头浏览器里完整跑一遍注册和结账流程。Anthropic 明说这类对输出质量提升最明显，值得让工程师专门花一周打磨。
		> 第三类是 data fetching and analysis，连着数据仓库和监控系统，把取数方法、字段约定和常见分析路径封装好，模型不用再去猜表结构和字段名。
	> 中间三类：开始接住团队里的日常流程
		> 第四类是 business process and team automation，把重复发生的团队流程压成一个命令就能跑的工作流，比如只输出相对昨天增量的 standup，或固定格式的周报。能看出来，Skill 接住的不只是代码任务，也包括协作任务。
		> 第五类是 code scaffolding and templates，生成那些有固定骨架、但又带着大量自然语言约束的代码，比如新 service 或迁移文件。这正是纯模板引擎覆盖不了的部分。
		> 第六类是 code quality and review，让代码尽量符合团队的质量标准。典型例子是拉一个“新鲜视角”subagent 来挑错的 adversarial-review，这类能力还能做成 hook 接进 CI。
	> 后三类：已经连到生产环境了
		> 第七类是 CI/CD and deployment，把代码从开发态推到上线态。比如 babysit-pr 会盯完一个 PR 的全过程，deploy-<service> 会把 build、放量、错误率对比和回滚条件串成一条链路。
		> 第八类是 runbooks，入口不是“我要写什么”，而是“现在出了什么症状”。报警、Slack thread、request ID 进来，它负责映射到该用哪些工具、查哪些路径，最后给出结构化结论。
		> 第九类是 infrastructure operations，处理资源清理、依赖治理和成本排查这类例行操作。这些动作常带破坏性，所以 Skill 里要写清 guardrail，先通知、再确认，最后才真正执行。
	> 好的 Skill，往往都很聚焦
		> Anthropic 说得很直接，最好的 Skill 往往都很聚焦。
		> 能清楚落进某一类里的 Skill，通常更稳；
		> 试图同时覆盖太多目标的 Skill，反而更容易把模型带乱。
	> 所有类型里，他们最看重「验证」
		> 在所有类型里，Anthropic 特别强调 verification。因为模型最容易给人一种“已经做完了”的错觉，而真正容易掉链子的地方，恰恰是最后那一步验证。
		> 原文甚至建议，值得让工程师单独花一周，把验证类 Skill 做到足够好。这个投入听起来很重，但如果它直接影响结果质量，其实很划算。
		> 他们还给了两个非常实用的建议。一个是让 Claude 录下自己测试过程的视频，这样你能清楚看到它到底测了什么。
		> 另一个是在关键节点加程序化断言。状态有没有变化，事件有没有真正落库，最终页面是不是到了目标状态，都尽量不要只靠“看起来差不多”。
	> 真正有价值的内容，往往是 gotchas
		> Anthropic 对 Skill 里的内容优先级也讲得很清楚。最有信号量的部分，通常不是通用步骤，而是 gotchas。
		> 因为 Claude 本来就会写代码，也会读代码库。那些“默认它也会做”的东西，写进 Skill 里只会增加上下文，不一定增加价值。
		> 真正值得写的，是那些会把模型从默认思路里拽出来的细节。比如 subscriptions 表是 append-only，要找最高 version，不能只看最新 created_at。
	> SKILL.md更像目录，不该写成大杂烩
	* 记忆维护与更新
		> 像 standup-post 这种 Skill，可以把每次输出都记进 standups.log，下次运行时先读历史，再判断今天和昨天相比到底变了什么。
		> 这种记忆可以很简单，用 append-only 文本或 JSON 就够了；也可以复杂一点，直接用 SQLite。
		> 原文还提到，可以用 ${CLAUDE_PLUGIN_DATA} 这个环境变量，拿到一个稳定的持久化目录来存这些数据。
* （备用）skill：grill-me 使用经验建议相关讨论
	* [2026-07-08](https://www.zhihu.com/question/2054005413406946147)
	* 认为业务代码（已充分讨论）直接看 PRD 即可，开放创新类软件开发才好用
		> grill-me 反而是在开放、创新类的研发任务下表现非常好，为什么？因为这些任务并没有所谓的需求文档，一切都靠你自己去驱动和设计，在这个过程里难免会遗漏一些需要考虑的问题，而 grill-me 则可以填充这个空白。
* （备用）AI 辅助编程中（对模型来说）未知的信息需关注
	* [2026-07-08](https://mp.weixin.qq.com/s/mbNFRKanZkettC_TbXUzfw)
	> 什么是未知项？当我带着一个问题来找 Claude 时，通常会从四个角度拆解它：
		> 已知的已知：这基本上就是我写在提示词里的内容。我告诉智能体，我想要什么？
		> 已知的未知：有哪些事情我还没有弄清楚，但我知道自己还没有弄清楚？
		> 未知的已知：有哪些东西对我来说显而易见，以至于我根本不会写下来，但一旦看到就能认出来？
		> 未知的未知：有哪些事情是我完全没有考虑过的？有哪些知识是我还不知道自己不知道的？我是否知道一件事可以做到多好？
	> 最优秀的智能体式程序员往往拥有相对更少的未知项。
		> 他们非常清楚自己想要什么，而且细节非常充分。
		> 他们与代码库和模型行为都保持着高度同步。
	> 但他们也会预设未知项的存在。
		> 从很多意义上说，减少并提前规划你的未知项，就是智能体式编程的核心能力。
		> 幸运的是，这是一项可以通过与 Claude 协作不断提升的技能。
* AI 快速了解新领域前沿：问顶尖研究者的心理框架，主要分歧与证据，列出能区分专家的问题；{_q3tl4a}
	* [2026-03-29](https://mp.weixin.qq.com/s/t5wmRkm5KxDFd81RkPEkqA)
	> “这个领域的顶尖研究者，实际上用什么心理框架来解决问题？”
		> 他问的不是“是什么”，而是“怎么做”。他不是在寻找答案，他是在寻找思考的方式。
	> “这个领域的主要声音，在哪些方面完全不同意？给我双方最好的证据。”
		> 各位，你们在大学里学一门新课的时候，有几个人会想到去找学术界还没吵完的架？
		> 大多数人的学习路径是：看书 → 划重点 → 背下来 → 考试。
		> 但他的学习路径是：找争议 → 站队 → 辩论 → 形成自己的观点。
	> “写 10 个问题，区分真正理解的人和仅仅死记硬背的人。”
		> 然后他自己花了6 个小时来回答这些问题。
		> 每次答错了，他不会“哦，我错了”然后翻篇。他会追问：
		> “详细说说我为什么错了，以及我漏掉了什么概念。”
		> 这叫自己审问自己。
	> “区别不在于工具，而在于审讯策略。”
	> “我不把它当作搜索栏，我把它当成一个读过所有书的不朽教授。”
* AI agent 风险：Windows 上 Codex 写 cmd 命令使沙箱保护失效，命令字符转义导致非预期破坏
	* [2026-05-27](https://www.zhihu.com/question/7846282477/answer/2041689009575942015)
	* 命令字符转义导致非预期破坏；{_q7hg60}
		> 但 PowerShell 调外部命令时的 native argument passing 会重写引号和反斜杠——\\?\ 这个特殊前缀在 PowerShell→cmd 这一跳里被”消化”掉了一部分，cmd 收到的字符串和你写的不一样。
		> 具体到这条命令上发生了什么我没在隔离 VM 里实测复现，但结果是确定的：rd /s /q 拿到一个它解析不出的路径，退化为对当前盘根目录递归删除。
		> 一句话说：Agent 写的命令字面上没错，但 PowerShell 和 cmd 这俩 shell 之间传参时摔了一跤，掉进了 C 盘根。
	* cmd 命令使沙箱保护失效；{_q7hg59}
		> 理论上，Codex 不应该允许命令写到 writable_roots 之外的路径。
		> 但这条命令的真正执行者不是 PowerShell，而是 PowerShell 启动的 cmd.exe 子进程，rd 又是 cmd 的内置命令——
		> 整个删除动作发生在 cmd.exe 进程里，绕过了 Codex 对 PowerShell 主进程的 syscall 拦截。
		> 更直白地说：只要 Agent 能起子进程，sandbox 就基本是一份君子协议。
		> 这不是 Codex 独有的问题。任何只在主进程层做拦截的 Agent sandbox（Claude Code、Cursor 的 agent mode、各家 IDE 内嵌 Agent）都吃这个亏——shell 套 shell，权限是穿透的。
	> Sandbox 不可信，OS 层 ACL 才是兜底；我的应对是：
		> 项目目录全部挪出系统盘（我把所有项目从 C:\Users\admin\Documents\ 挪到了 F:\ 盘根）
		> Agent 的 cwd 永远不要指向 C:\Users\xxx\ 下任何位置——一旦命令跑飞，整个用户目录都在 ACL 允许范围里
		> 始终开 Windows 卷影副本（System Restore + File History），这次救命的就是它
	> 不要让 Agent 直接对着一个”项目根目录”开火。新建一个一次性的工作目录，干完了删掉。{_q7h992}
* （备用）Google 提出的 AI 知识库 KSF 格式约定，含 3 个参考实现
	* [2026-06-19](https://mp.weixin.qq.com/s/nhF1cy_lIQukq_niVFvRCA)
* OpenAI 等各家 AI API 接口含义与演变；{_q7h96f}
	* [2026-07-08](https://zhuanlan.zhihu.com/p/2050523117496297035)
* （备用）字节员工，为 agent 搭建的工作环境形如文件系统，详细讨论设计动机、局限性等
	* [2026-07-14](https://zhuanlan.zhihu.com/p/2044836637381759013)
* （备用）知乎观点：AI4MATH的一些更新，以及理论计算机界的感受
	* [2026-07-15](https://zhuanlan.zhihu.com/p/2059827535890878759)
