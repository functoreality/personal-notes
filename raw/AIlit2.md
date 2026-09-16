* Truman AI 操盘手案例拆解，确认构建所用要素可从当前笔记框架推出；{_q9g96l}
	* AI 原始分析文档 `orig/agent-reports/useAI-case_study-truman_interviewer/rearrange-fit_note_framework.md`
		> created on 2026-09-13 by Codex + GPT-5.6-Sol-high
	* （AI 评）本文不另建分析框架，而是把“百万访谈操盘手”案例填入 `useAI.md` 与 `useAI2.md` 的现有结构
		* 节点名称和排列逻辑尽量沿用原笔记，仅保留与本案例有关的分支
		* “案例未展示”表示方法论能提出该问题，但现有素材不足以填入具体答案
	* 非标任务环节划分，类似项目管理里程碑拆解，无论是否涉及 AI；((q85e2o))
		* 环节关系—素材依赖，前步没做则后步无法开始或效率低下
			* （团队协作）先共识再推进：先口述生成 `00 顶层：整体思路`，后续各 Agent 先读顶层文档，再接收个性化任务
			* 素材顺序：先准备品牌、人物、历史口播、领域方法和参考访谈等材料，再形成方法、工作流、系统封装和测试
		* 环节关系—方向依赖，前步没做则后步可能做歪
			* 拆分场景：区分 1v1 自然流访谈、直播 Live、营销与网感内容生产
			* 备依据—防缺：调研 Top 访谈专家，整理过往 KnowHow、历史口播和一堂故事与理念
			* 设目标—防偏
				* 先全局再局部：先定义公域感召、一堂内核贯穿、最终获客三层目标，再设计访谈问题与内容表达
				* 先审美再设计：结合 Top 访谈专家、Truman 的美好想象、雷达图和过往 KnowHow 明确好访谈的样子
				* 先标准再执行：先确立“有网感、有干货、符合一堂内核”三类质量目标
			* 选方向—防偏：先框架再细节，先用约 20 分钟画出双三角六格画布，再展开调研、萃取、建模和封装
			* 选方向—防偏：先理解再执行，顶层文档先讲清项目背景、角色、目标、标准、工作方式和最终产物
		* 环节关系—价值依赖，前步决定后步是否需做
			* 先试错（确认值得做）再优化：先验证普通 LLM 访谈的输出不能使用，才投入构建可复用系统
		* 环节关系—靠拆分降单步复杂度
			* 顶层计划：先规划再执行，先用 `00 顶层：整体思路` 统一项目结构，再生成各专题文档
			* 维度切分：拆成理想想象、品牌理念、干货、网感、访谈方法、工作流、角色、封装、DataPack 和测试等模块
			* 维度切分：打开 6 个窗口，将可独立推进的调研、数据包萃取和建模等任务交给不同 Agent
			* 规模先小后大：先做 3 小时、约 60 分可用的 MVP，不一次做成完整产品
			* 版本迭代，先完成再完美：完成初版后测试 2 至 3 轮，并设计 A 版模块化拼装、B 版合并式拼装的对比
		* 环节关系—外部关系，时间、成本等管理
			* 时间窗口：用 3 小时挑战和约 60 分可用的 MVP 门槛约束首版范围
	* 任务要素（执行侧）
		* 相关：此处只填写封装完成后，访谈 Agent 如何完成一次任务；构建过程见下方 `skill 编写`
		* 启动，何时触发调用：现有材料展示人工开启访谈或内容生产；案例未展示自动、定时或事件触发
		* 背景环境：现状，用户信息、偏好，资源位置
			* 组织与人物：一堂与 Truman 的系统介绍，一堂故事和理念
			* 品牌上下文：品牌定位、反常识认识、稀缺性和边界
			* 使用场景：1v1 自然流访谈、直播 Live、营销与网感内容生产
		* 可用素材；((q9d88c))
			* 选题池：我的 Top 话题清单、Top 网感选题
			* 模板、示例：历史口播与逐字稿、访谈参考易立竞、时长结构、标题模板
		* 处理，执行过程
			* 给方法，如何操作、步骤说明、模板依据等
				* 基础工作流：SayHi → Attention → 网感问题 → 深挖 1 至 3 层 → 矛盾击穿和升华
				* 领域方法：十指讲香、ABACC、四层问题链、SABC 选题、干货六级和访谈武器
			* 工作流遵循强化：状态机
				* 系统将访谈过程封装为 S0 至 S8 共 9 个内部状态
				* 案例未展示：各状态的完整含义、转移规则与异常分支
			* 提多样性：围绕一堂内核、深度洞察、网感流量三个方向探索候选问题和内容角度
			* 边界约束，什么不能做：不能只追求流量而脱离一堂内核、产品价值和真实业务场景
			* 多轮对话类，人在环，按执行中新获得的信息调整后续动作
				* 信息获取：第一职责是问出好问题，从受访者回答中取得原先未知的信息
				* 状态维护：识别当前已挖掘的层次、待追问矛盾、当前阶段和下一步所需信息
				* 动作选择：决定继续引导、追问、激发思考、提供情绪价值、挖掘干货，还是转入构思、成稿或返修
			* 过程监测：案例未展示运行时对工具调用、错误、重试、成本或关键决策的外部记录
			* 失败监测与处理：案例未展示运行时的降级、求助、替代、断点续作或幂等策略
		* 输出形态，行动如何影响外部；((q89i33))
			* 直接回复用户：向受访者输出当前问题、追问、引导或反馈
				* 系统提供访谈、构思、成稿、返修 4 种输出模式
			* 状态或记忆更新：访谈过程中维护 S0 至 S8 的当前内部状态
		* 目标定义，验收判断标准，可拆出多个子标准
			* 直接定义（人负责讲清楚）
				* 形态细节：第一职责是问出好问题，而不是抢先代替受访者给答案
				* 标准清单：运行时使用已内置的网感、干货、一堂内核三类目标，以及雷达图与 8 个质量评分维度
				* 违例清单：设置 7 个一票否决项
				* 最佳实践想象：构建时描述 Truman 心中理想的访谈系统与内容效果，运行时直接使用其提炼结果
				* 给优先级：所有选题和表达均需服务三层业务目标；案例未展示目标冲突时的完整排序
				* 支撑—使用者审美、判断力：构建时吸收 Truman 的过往 KnowHow 和对理想访谈的判断
			* 间接定义（人无法完全说清楚，需要 AI 的能力）
				* 依据范例：构建时调研 Top 访谈专家和易立竞等参考，将提炼的特征供运行时使用
				* 依据出口：访谈不以聊天本身为终点，而是持续生产自然、可持续、能帮助合适用户理解一堂的短视频内容
				* 使用—标准提炼：构建时把三类质量目标及参考案例转换为雷达图、评分维度和否决项，作为运行时的判断标准
		* 目标核查，检查评审，结果评估，检查反馈验收标准是否成立
			* 内容检查：运行时可按 8 个质量维度评分，并检查 7 个一票否决项
			* 案例未展示：每次运行是否自动完成该核查，以及核查未通过时如何转入返修
		* 终止，（循环任务）退出执行
			* 案例未展示：一次访谈何时达到足够挖掘深度，何时切换到构思、成稿或返修，以及何时结束任务
	* 技术机制
		* 模型选择；((q8ga0p))
			* 现有材料：封装结果曾配置到 ChatGPT 进行测试，`14i.webp` 还记录了豆包、Grok 等候选产品
			* 案例未展示：具体模型版本、参数与对比结果，因此不能从产品名推断实际模型选择
		* 上下文管理
			* 文档环境：使用 Obsidian 口述和组织顶层文档与专题文档
			* 关键信息重复：每个后续 Agent 均先读取顶层文档，保持项目背景、目标和标准一致
			* 渐进式披露：顶层文档给全局方向，专题文档按 Agent 任务分配；DataPack 被设计为运行时按需使用，但材料未展示具体路由机制
		* 信息支撑，包括数据储备
			* 来源—子 Agent 调研：设置调研 Agent、数据包萃取 Agent、建模 Agent 等分头准备信息
			* 形态—大量内容，按需取用：项目共约 32 个文档、18,999 行和 264,342 字符；正式提示词约 1,546 行和 17,307 字符
			* 数据组织：按使用功能或任务环节组织品牌与人物、干货、网感、方法论、输出模板等材料模块，其中部分封装为 DataPack
				* DataPack 材料：一堂与 Truman 系统介绍、历史口播、讲香方法论、访谈专家参考、Top 话题、Top 网感选题、一堂故事和理念
		* skill 编写；((q9de6x))
			* 编写时机，何时需要写新的 skill：通用 LLM 直接访谈的结果不可用，且 CEO 内容生产是持续重复需求
			* 可用参考素材
				* 给人写的指南和现场经验：讲香方法论、过往 KnowHow、品牌理念和一堂故事
				* 历史案例包：历史口播与逐字稿、Top 话题、Top 网感选题、优秀访谈参考
			* 首次起草
				* 先框架再细节：先画双三角六格画布并生成顶层文档，再展开专题材料、方法、流程与封装
				* 先目标再方法：先明确三层业务目标和三类质量目标，再设计十指讲香、四层问题链、状态机和输出模式
				* 完备性核验：案例用六格画布做构建前准备度扫描，未展示“新 AI 对照原始材料与当前 skill 逐项查漏”
			* 更新迭代—AI 测试迭代：完成 8 个评分维度、7 个一票否决项、10 个上线前黄金测试题和自动化测试方案，调试 2 至 3 轮
				* 测试结果示例：系统产出过“一堂挑选课程选题时最核心的标准是什么”，但单个好问题不构成完整验收证据
		* 优化支撑—评测结果对比记录
			* 范围：保存模块化与合并式两种提示词封装、测试样例、运行记录和结论
			* 目的：支持比较、复现与回滚；现有图片能证明建了记录文档，不足以判断记录内容是否完整
		* 多 agent 协作；((q89h6o))
			* 任务描述—消息复用：顶层文档作为统一项目背景，供后续 Agent 先读再领取个性化任务
				* 顶层文档内容：项目一句话、项目背景、Agent 核心角色、三层目标、三类质量目标、核心工作方式、待补信息、文档分层、最终产物和后续阅读提示
			* 内容通信—写入文档：约 1.5 小时形成 32 个项目文档，使不同 Agent 的调研、萃取和建模产物可被后续步骤使用
			* 调度管理：实际使用 6 个窗口并行执行；案例未展示正式的 Agent 注册表、路由规则、共享状态或冲突处理
		* 编程工具
			* 构建工具：使用 Codex 生成项目文档并封装提示词
	* AI 工作的不同层次解读（`useAI2.md` 补充定位）
		* 封装后 chatbot
			* 任务背景：系统提示词、一堂与 Truman 上下文、领域材料与 DataPack
			* 执行方式：模型权重 + 系统提示词 + 状态机 + 设计为按需使用的 DataPack，具体加载机制未展示
			* 结果交付：消息回复与访谈、构思、成稿、返修 4 种输出模式
		* 框架用途：据工作形态判断任务要素的显式化和工程化程度
			* 重复使用：因此需外显背景、方法、标准和测试，不能每次依赖 Truman 现场补充
			* 多轮交互：因此需外显当前阶段、已知信息、下一步动作与状态转移
			* 非自主启动：现有案例不要求心跳、cron、事件触发或长期自主行动权限，不需为此强行工程化
	* 注：上方框架组织主要按手段链，适用于（当场）据特定任务凑要素
		* 双三角偏宏观差异归因，可用于（长期）有意识积累
			* 本案例的 `14i.webp` 在建造前同时扫描场景、审美、体系、数据、基本功和创造力，可视为用来发现项目准备短板
			* 六格中的具体内容已分别填入上方“背景环境”“目标定义”“处理，执行过程”“信息支撑，包括数据储备”“模型选择”和“提多样性”等节点
	* （AI 评）案例映射说明，不属于 `useAI.md` 的原框架节点
		* 现有方法论能提出、但不能替代场景给出的答案：
			* 具体业务目标、目标人群、品牌理念与表达边界
			* 具体审美来源与对理想访谈的判断
			* 十指讲香、ABACC、SABC、干货六级、四层问题链等领域方法
			* 应进入 DataPack 的历史口播、故事、选题和方法论内容
			* 8 个评分维度、7 个一票否决项和 10 个黄金测试题的具体内容
			* S0 至 S8 的转移规则、输出模式切换条件和任务终止条件
		* 覆盖结论：更新后的 `useAI.md` 和 `useAI2.md` 已能容纳本案例的通用策略，未发现需要新增顶层节点的通用做法
		* 案例不能唯一推出的是双三角画布形式、32 个文档的具体目录和角色名称等组合设计
* Claude Science 设计哲学
	* [2026-08-22](https://mp.weixin.qq.com/s/W9ZE3KL-VGXC8j8WXLs1Uw)
	> 如果只能用一句话说清 Claude Science 的设计哲学，那就是：
		> 把 agent 当成一个需要被「校准」的科学仪器，而不是一个需要被「命令」的下属——
		> 每一个约束都附带它的测量依据和适用边界，让模型理解「为什么」，从而在边界之外自行判断。
	> 这句话里的三个词是全篇的骨架：
		> 1. 校准（calibration） —— 配置项不是拍脑袋的偏好，而是针对实测瓶颈的调优。
		> 2. 理解而非命令（understanding over instruction） —— prompt 反复强调「解释为什么」，明确把「ALWAYS / NEVER 全大写」列为黄旗。
		> 3. 边界（boundary） —— 每条规则都写清它在哪里生效、哪里失效、遇到例外怎么办。reviewer 的 rubric 是这一点的极致体现。
	> 既然模型能理解「为什么」，那么最有效的控制方式不是堆砌禁令，而是传递意图和证据。
		> 这是 Claude Science 与大多数「用 MUST 和 NEVER 把模型捆死」的 agent 系统最根本的分野，也是这份分析真正想让你带走的东西。{_q8mk4m}
	> 1. "产出物是主角，不是聊天"（Artifact-first）{_q8mk4g}
	> 6. 懒加载 + 主动发现（Progressive disclosure）
		> skill 不是全部塞进上下文，而是 harness 在 <skill_discovery> 块里按当前任务主动浮现相关 skill，模型按需 skill 工具加载。{_q8mk4y}
		> 29 个 skill、~90 个数据源不污染上下文，用时才展开。
		> 规模化能力与上下文经济的平衡。
* （备用）Anthropic 入职培训资料公开，Claude 学院
	* [2026-08-22](https://mp.weixin.qq.com/s/DQOcl1GKeq1d_w64QzmxPQ)
	> 新人在onboarding培训阶段要学三样东西：
		> 4D AI Fluency框架
		> 管理智能体“知道什么”的最佳实践
		> AI的指数曲线跑得有多快。
	> 4D指的是委派、描述、辨别和尽责（Delegation, Description, Discernment, and Diligence），
		* （评）和一堂双三角对应：委派→ 场景，描述→ 体系+数据+基本功，辨别→ 审美；勤勉（怀疑“尽责”翻译不准）似乎更像刻意练习的大量重复？
		> 由瑞林艺术与设计学院的Rick Dakan教授和科克大学的Joseph Feller教授开发，
		> 来自他们对AI工具如何改变创意与商业流程的研究，
		> Anthropic和两位教授合作把它做成了课程
* 指令文档已有内容不敢轻易删，导致长期长度膨胀；建议各内容标明添加动因
	* [2026-08-17](https://mp.weixin.qq.com/s/hYC12o7LnPgSFuhjOAxpeQ)
	> 把这种现象称为“灾难性留存”，
	> 加新指令成本低且见效快；而删除指令却手续多、风险高、怕爆雷。
	> 但如果几个月后有我们想删掉它，面对的就不是一道简单的判断题，而是一连串扑面而来的灵魂拷问：
		> “当初的失败是偶发还是常态？”
		> “后来新增的其他规则是否已经覆盖了它？”
		> “它与其他指令有没有肉眼看不出来的组合效应？”
	> 当完整验证贵得让人无法承受时，保留自然就成了更理性的选择。
	> 而导致这一切麻烦的根源，恰恰就在于当初添加这条指令时的思考过程未被保留，致使后人无法判断其是否仍有存在的必要。
		> 论文将这部分没有被写进文件的上下文称为“潜在推理”，
		> 即它可能触发过什么失败、维护者当时提出了什么假设、修改后是否真的解决了问题，以及类似错误后来又出现过多少次。
	> Chakrabarti强调，真正值得保存的是三件事，即“为什么添加”，“解决了什么问题”，“以及后来是否有效”。{_q8h99a}
		> 看似是用户不会写Prompt，本质上却是当前Agent基础设施缺少可维护性。
		> 代码有注释、版本历史、测试覆盖和架构决策记录；一条Agent长期指令，也该有作者、触发事件、适用范围、验证结果和失效条件等记录。
	* （评）文档过长的解决 为何不考虑渐进式披露，而是只考虑怎么删？
		* 以及添加原因为何要和指令放到同一文件里，而非专门文件（对应关系追踪至少可 git blame 找指令添加的 commit，再看该 commit 关于编辑历史解释部分有什么描述）
* Claude 官方省 token 建议
	* [2026-08-16](https://mp.weixin.qq.com/s/Mx2U_W_KP0IdLyTeDFIFGw)
	> 2. 开局就定好模型和推理强度（effort level）。中途切换的话，之前积累的提示缓存会全部失效，整段对话历史要按全价重新计算一遍。
	> 3. 用@引用文件，别手打路径。用@直接把文件附到消息里，Claude不用再花一次工具调用去读。如果你只打文件名，Claude可能先搜一圈再打开好几个文件试探，这些操作全部会进入对话历史，之后每一轮都带着。
	> 4. 给输出多的命令加静默参数（quiet flag）。在CLAUDE.md里写一句类似--reporter=dot的配置，让测试输出只打印几行摘要，不是几百行详情。输出越短，占的上下文越少。{_q8g98x}
		> Claude Code有个兜底机制。命令输出超过30000字符，就不往对话里塞了，而是写到一个临时文件里，对话里只放一句摘要。但30000以下的输出没人管。{_q8g98f}
	> 5. /compact在休息前做。对话还在缓存里的时候压缩，成本只有正常的十分之一。等你回来缓存过期了再压，就得按全价重新读一遍再压缩。{_q8g99b}
	> 6. 大输出任务扔给子Agent。子Agent在一个独立的上下文窗口里运行，做完只把结论传回来，过程中读的文件和跑的命令输出不会进入你的主对话。{_q8g99h}
	* 缓存失效的多情况
		> 1. /model切模型：每个模型的缓存独立。从Sonnet切到Opus，整个对话历史按Opus的价格重新预填充，没有折扣。
		> 2. /effort切推理强度：推理强度也是cache key的一部分，切换之后整个对话历史都要重新计算。{_q8g99u}
		> 3. 开关Fast mode：效果和前两种一样，缓存直接失效。
		> 4. /compact压缩对话：对话被重写成摘要，原来的内容全部对不上，旧缓存直接作废。
		> 5. 时间过期：订阅用户的缓存保活1小时，API用户默认5分钟。超时后下一轮全量重算。
		> 6. 恢复旧会话：隔了太久缓存早就没了，几乎100%要全价重新计算。
		> opusplan模式每次进出plan都切模型。进一次，缓存失效一次。出来，又失效一次。来回跳的话，每跳一次都是一笔全价prefill。
* 哥大博士、数院院友 GPT-5.6-Sol 解 6 Erdős 问题
	> 哥大博士Shouqiao Wang表示，自己用GPT-5.6 Sol配Codex，5天解掉了6道此前标记为开放的Erdős问题。
	> 一共尝试了约13道，成功率46%，其中一道单题连续跑了32个小时。
	> 他把方法拆成三条。
		> 选题过程，只挑数学家本来就在讨论的题，再用AI把那些跟重大猜想，死死绑在一起的排除掉。
		> 自己定义「什么才算解决」：精确重述问题、写清一个完整证明必须确立什么、列出哪些较弱的结论不算数、点名这道题特有的坑。{_q7o957}
		> 最后要求独立的对抗Agent去挑战每一个候选结论。
	> 整个过程是一个死循环：尝试 → 失败 → 诊断 → 换路线 → 写证明草稿 → 对抗审计 → 修补。
	> 模型反复推翻自己、攻击自己的论证，直到再也挑不出实质问题。
* 我自己打磨的提示词，用于数学证明 harness 设计调研（2026-07-23）
	> 调研对象，针对数学证明系统，包括纯数学和计算数学，这些AI证明智能体系统的Harness设计。
		> 以解决开放研究问题为主，竞赛数学可以参考，但不作为主要研究对象。
		> 以自然语言证明为主，形式化证明如lean等可以提及，但不作为主要研究对象。
	> 调研目标，获得一份关于Harness设计的操作指南，作为自己设计Harness的有效参考材料，
		> 结果输出为一个或者一系列Markdown文档。
		> 注意它不是文献综述，也不是一份最新进展汇报。
		> 我预计的形式是，它把Harness设计分为一系列大模块，每个大模块下有若干个小的子模块，每个子模块下面可能有很多种技术路线，
		> 这些技术路线之间可能是可以组合使用的，也有些是可能有冲突，就是多种选择一个的那种情况。
		> 技术路线也可能有多种形态，例如提示词约束和代码级约束等都算。{_q7ne74}
		> 建议自行预判这个指南文档长成什么样的形式，对使用者最为有用。{_q7ne68}
	> 调研范围，一年以内新提出的数学证明Harness系统。
		> 不需要一年以前的，因为它可能已经过时了。
		> 注意，一年的时间范围限制针对完整的Harness系统，而非其中所使用的技术组件和模块。{_q7ne4y}
			> 如果某项技术组件和模块实际提出时间早于一年以前，但在一年以内新发布的Harness系统中仍在被使用，调研报告应该包含。
			> 因此调研报告中包含的模块和技术路线，可以是最近一年内新提出的，也可以是更早已经提出，但现在仍在使用的。
		> 我们的工作方式是调用前沿闭源模型的API来完成数学证明，{_q7ne7k}
			> 因此只考虑基于语言模型的数学证明系统，不包括使用非自然语言形式的专用AI模型。
			> 只考虑外层Harness构建，不讨论模型训练和微调等方面的内容，因为我们的访问权限仅限于利用API进行推理。
		> 注意，有部分论文标题和内容可能并未直接提及Harness这个词，请你自行根据Harness的含义进行语义判断，只要它属于Harness构建，就应该参考。{_q7ne7x}
	> 预计调研步骤。
		> 一，如果你对这个调研有任何疑问，先尽管向我提出。
		> 二，预调研子模块的构成及典型工作，以确定下一步调研计划。{_q7nb49}
		> 三，展开具体调研，可以围绕典型工作进行，也可以围绕专题子模块进行，也可以自己选用你认为合适的调研策略和方案。
		> 注意，这个调研计划只是我设想的粗糙版本，如果你认为有更好的方案，可以自行修改或者细化。{_q7ne87}
	* 注：后来发现没及时强调以多 agent 协作为主（有复杂治理机制），只能靠后期要求重新预调研纠正
* （备用）第三方公开的 Claude Science skills
	* [2026-07-19](https://mp.weixin.qq.com/s/NhykYDgt-gaL0fLX-04kwQ)
* OpenAI GPT-5.6-Sol 解决图论开放问题 CDC 所用 prompt
	# 《循环双覆盖猜想的证明》所使用的提示词
	## OpenAI
	**摘要**：本文档包含提供给 GPT 5.6 Sol Ultra 的完整提示词，该提示词促成了其对循环双覆盖猜想的证明。
	---
	## 1. 提示词
	### 当前任务描述
	这里的"图"是指有限的、无自环的无向多重图：允许平行边存在且视为不同的边。"桥"是指删除后会增加连通分量数量的边。"圈" 是指连通的 2-正则子多重图；因此两条平行边构成一个长度为二的圈。图 $G$ 的"循环双覆盖"是指 $G$ 的圈的有限多重集，满足 $G$ 的每条边（计重数）在该多重集的成员中恰好出现两次。
	请完整解决循环双覆盖猜想：
	**每个有限的、无桥的、无自环的多重图都有一个循环双覆盖。**
	允许不连通图的情形；无边图的循环双覆盖为空集。覆盖中的圈不必是诱导子图，也不必彼此边不交；要求仅是每条边总计恰好出现两次。
	就本任务而言，假定存在一个完整的肯定性证明。完整的解答必须恰好证明以下陈述：
	**每个有限的、无自环的、无桥的多重图都具有一个循环双覆盖**，不附加任何额外假设，如立方性、平面性、连通性或更高的边连通度。
	部分进展不算数，除非它恰好蕴含上述结论。具体而言，以下情形均不充分：
	- 针对特殊图类的证明
	- 构造某些边覆盖次数不为二的圈覆盖
	- 有限长度或指定圈类型的变体
	- 归约到另一个未被证明的猜想
	- 通过任意固定图规模的计算机验证
	- 不具备完整不存在性证明的候选反例
	### 搜索策略
	激进且动态地使用 MultiAgent v2。你最多可以使用 64 个并发 agent。不要使用固定分工（例如"N 个 agent 负责策略 X"）。而是使用以下启发式规则管理搜索：
	- **从真正多样化的方法组合开始。** Agent 应探索本质上不同的表述方式：不变量、归约、代数视角、结构归纳、分解、流表述、转移系统、嵌入、极值论证，以及计算层面的健全性检查。{_q7fa5b}
	- **不要告诉大多数 agent 当前主流的方法。** 在早期轮次中保持独立性，以免所有 agent 都收敛到同一个有吸引力但不完整的归约上。
	- **维护一个显式的方法族注册表。** 按 agent 使用的数学思想（而非表面措辞）对其进行分组。如果许多 agent 汇聚到同一个方法族，则将其中一些重定向到尚未充分探索的方向。{_q7fa5i}
	- **不允许某个方法仅仅因为能给出优美的归约就占据主导地位。** 一条最终终止于与原猜想同等强度的引理的路线，除非它为那个引理提供了真正全新的证明，否则并不接近完成。
	- **当某个方法卡在一个定理级别强度的缺失引理处时，将该路线标记为已阻塞。** 只有当有人提出了实质性的新机制、新不变量或新构造时，才继续为其分配 agent。
	- **在多个轮次中保持数条互不兼容的证明路线存活。** 只有在独立 agent 各自将想法推进到足以暴露其真正优势和缺陷的阶段后，才进行交叉借鉴。{_q7fa5v}
	- **全程使用对抗性 agent：** 每份候选证明都必须针对以下方面进行核查：恰好两次的重数、伪装成圈的重复边闭迹、平行边二圈、不连通图、割点、归约过程中引入的桥、以及对等价 CDC 命题的循环引用。{_q7fa0a}
	- **要求 agent 返回具体的引理、构造、等式，或对所提出的子引理的反例。** 拒绝状态报告、含糊的乐观态度，以及声称某个未证明的全局相容性命题是"例行公事"的说法。{_q7o983}
	- **根 agent 应反复综合、质疑、重定向并启动新的轮次。** 不要在第一轮失败后就停止。如果某份证明经受住了审计，则产出完整证明；否则，仅报告最严格的、经过严格证明的推导结果及其确切的剩余缺口。
	### 终止条件
	不要仅仅因为当前方法失败或 agent 报告定理级别的缺口就返回。继续启动新的轮次，仅在出现真正新颖的机制时才重新打开被阻塞的路线，并持续寻找新的表述方式。{_q7o97q}
	只有在找到完整的肯定性证明且该证明经受住了对抗性审计之后，才能返回。不要返回归约、部分结果、孤立的缺失引理、"尽力而为"的总结，或对问题为何困难的解释。{_q7fa71}
	**在此任务上至少投入 8 小时，之后才考虑返回或放弃。**{_q7fa6l}
	仅可将公开搜索用于普通数学背景或标准命名定理的查阅，不得用于搜索针对此特定猜想或基准的解答。不要仅仅为了确认 CDC 是否仍为开放问题而搜索公开网络，也不要回答它仍为开放问题。
* 协和住院医金山木解决线性代数 Crouzeix 猜想 prompt
	* [2026-08-13](https://mp.weixin.qq.com/s/Wkdv9zsrbC13fjhEURYfbA)
	* https://github.com/jinshanmu/CrouzeixConjecture crouzeix_conjecture_prompt.txt
	（问题叙述略）
	Current task statement
	Give a rigorous standalone proof of the above math problem using your own knowledge, computation, and reasoning without searching the public web, connected sources, previous conversations, project contexts, or existing local files. {_q8de6t}
	Return the proof as one compilable full-English LaTeX .tex file in /Users/shanmujin/Documents/CrouzeixConjecture/LaTeX.
	Assume for purposes of this task that a complete affirmative proof exists. Work iteratively until a correct proof has been reached.
	Partial progress does not count unless it implies exactly the resolution of the entire problem above. In particular, reductions to other unproved conjectures, computational verification through any fixed parameters, and candidate counterexamples without a proved certificate are insufficient.
	Use multiagents aggressively and dynamically. Do not use a fixed assignment such as "N agents for strategy X." Instead, manage the search using the following heuristics:
	Begin with a genuinely diverse portfolio of approaches. Agents should explore substantially different formulations, invariants, reductions, algebraic viewpoints, structural inductions, decompositions, flow formulations, transition systems, embeddings, extremal arguments, and computational sanity checks. {_q8df1d}
	Do not tell most agents the currently favored approach. Preserve independence during early rounds so that agents do not all converge to the same attractive but incomplete reduction.
	Maintain an explicit registry of approach families. Group agents by the mathematical idea they are using, not by superficial wording. If many agents converge to one family, redirect some of them toward underexplored formulations.
	Do not allow one approach to dominate merely because it gives elegant reductions. A route that ends at a lemma equivalent in strength to the original problem is not close to completion unless it supplies a genuinely new proof of that lemma.
	When an approach stalls at a theorem-strength missing lemma, mark that route as blocked. Only continue assigning agents to it if someone proposes a materially new mechanism, invariant, or construction.
	Keep several incompatible proof routes alive through multiple rounds. Cross-pollinate ideas only after independent agents have developed them far enough to expose their real strengths and gaps.
	Use adversarial agents throughout: every candidate proof must be checked for gaps, conditionals, handwavings, and circular uses of an equivalent statement.
	Require agents to return concrete lemmas, constructions, equations, or counterexamples to proposed sublemmas. Reject status reports, vague optimism, and claims that an unproved statement is "routine."
	The root agent should repeatedly synthesize, challenge, redirect, and launch new rounds. Do not stop after the first wave fails. Produce a complete proof if one survives audit; otherwise report only the strongest rigorously proved derivation and its exact remaining gap.
	Do not return merely because current approaches fail or agents report theorem-strength gaps.
	Continue launching new rounds, reopening blocked approaches only when there is a genuinely new mechanism, and searching for fresh formulations.
	Return only when a complete affirmative proof has been found and survives adversarial audit.
	Do not return a reduction, partial result, isolated missing lemma, "best effort" summary, or explanation of why the problem is difficult.
	Do not search the public web to determine whether the problem is open, and do not answer that it is open.
* Claude 官方循环工程相关
	* [2026-07-17](https://mp.weixin.qq.com/s/YzQh7w0OgmO1Xi-BnV6U0w)
	> 顺着「怎么触发、怎么停止、用什么原语、适合什么任务」几个维度，Claude Code把循环拆成四种。
	> 第一种，回合制循环（turn-based）。
		> 人逐轮控制，你写一句，AI跑一轮，检查完再写下一句，全程你握着方向盘。它适合零散的短任务，不进流程、不上日程。
		> 想让它少来回几趟，就把你平时手动检查的步骤，写进一个SKILL.md文件，让AI自己验收。
		> 检查越能量化，它越能自己判断做没做对，你要盯的地方就越少。
	> 第二种，目标循环（/goal）。
		> 目标循环，评估器模型对照标准判定，没达标就打回重做。（图源：Claude官方博客）
		> 先把目标写死，比如「把首页Lighthouse分数跑到90以上，试5次就停」。
		> 每次Claude想停，一个评估器模型就来对照你的标准，没达标就打回去接着干，直到目标达成，或者用光你设定的轮数。
		> 测试通过数、分数阈值这类可量化标准之所以好用，是因为Claude不用自己纠结「够不够好」，评估器替它判。它不必自己猜「差不多了吧」就过早停手，循环也能干净利落地收尾。
	> 第三种，时间循环（/loop和/schedule）。{_q7hg7s}
		> 按时间间隔触发，像闹钟。有些活是重复的，任务不变，只有输入在变，比如每天早上总结一遍Slack消息。
		> 有些活得盯着外部系统，最简单的办法就是按时间间隔去查一眼，看变了什么再反应，比如一个可能收到评审、也可能CI挂掉的PR。
		> 用/loop就能按间隔重跑一条提示词。想让它在你关机后照跑，就用/schedule把循环搬上云。
		> 这套逻辑，和程序员熟悉的定时任务（cron）几乎一模一样。
	> 第四种，主动循环（proactive）。
		> 主动循环，事件或时间触发，全程无人值守，跑到你亲手关掉。（图源：Claude官方博客）
		> 事件或时间触发，全程无人值守。
		> 配合auto mode和动态工作流，把长活儿全自动串起来：每小时扫一遍反馈频道，收到一份bug报告，就自动分诊、修复、回复，一条龙跑完，全程不停下来问你要权限。
		> 每个任务达成目标就退出，整条例行任务则一直跑到你亲手关掉。它适合那些源源不断、边界清晰的活：bug上报、问题分类、依赖升级。
	> 四种循环，说穿了是四种「什么时候该停」的答案：人来判、评估器来判、时间来判、事件来判。
	> 在Reddit的工程讨论里，有人把必须的闸门总结成三条，写循环之前就得先设计好。
		> done条件：且必须机器可判定，比如测试全绿，或者某个spec项被关闭；
		> 硬上限：包括最大轮数和最大花费，专防成本失控和无限循环；{_q7hg8a}
		> 无进展检测：一旦发现它反复碰同一批文件却没有新的通过测试，就强制停下。{_q7hg8b}
* 
