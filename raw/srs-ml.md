x}# ML 相关内容
	* 2025-07-02 从 misc-srs.md 独立
* AI 大模型涌现现象 在特定任务出现，现有的两种解释 2023-04-13{n4lh0a}
	* ((_n4d99x))任务评价指标不平滑、((_n4d99z))测试任务由多个子任务组成（在这些子任务上为逐步提高）
* 模型训练多卡并行，数据并行，参数同步策略有哪两种{n8og8u}
	* Parameter Server算法 vs Ring AllReduce算法
	* [src](https://zhuanlan.zhihu.com/p/72939003)
* 模型训练多卡并行，数据并行，参数同步策略中的 Ring AllReduce 算法，两个步骤及示意图{n8og8v}
	* Scatter Reduce和All Gather
	* https://pic3.zhimg.com/v2-4590aeb5fd981b1e6f926cc68605884a_b.webp
	* https://pic4.zhimg.com/v2-c9df34575d7d95ec87d85575d25d6f37_b.webp
* 模型训练多卡并行，数据并行，参数同步策略中的 Ring AllReduce 算法，如何理解通信成本与 GPU 数量无关{n8og8w}
	* 卡变多时，数据绕一圈的长度变长、总发送次数变多，但数据切分的份数也变多，从而单次通信成本降低
	* 注：这里“通信成本”只考虑传输数据的量；若考虑通信时间，我觉得情况可能有点不一样
* Transformer 注意力-输出层线性投影 Wᴼ，若为单头注意力，（我认为）该线性投影在什么情况下不应去掉{nbdh37}
	* VWⱽ 的 embed_dim（论文中 dᵥ）与残差连接的 embed_dim（论文中 d_model）不同情形，此时 Wᴼ 不为方阵
* Transformer 注意力-输出层线性投影 Wᴼ，若为单头注意力，（我认为）该线性投影为方阵时是多余的、可去掉，理由{nbdh39}
	* 注意力计算结果的表达式为 WⱽWᴼ，可合并为一个新的矩阵 Wⱽ_new
* Transformer 注意力-输出层线性投影 Wᴼ，若为多头注意力，（我认为）与单头情形不同，该线性投影不应去掉（即使它是方阵），理由{nbdh3b}
	* 不同头的注意力矩阵不同，计算所得混合信息的来源分布不同，需要 Wᴼ 进一步混合这些不同来源分布的混合信息
	* 注：主笔记系统内记录位置((nbdh5m))
* 多头注意力的变种 MQA（multi-query attention）的形式{nbrm6k}
	* 不同头仅 query 不同，K,V 共享
	* 注：主笔记位置((nbrm6p))
* 多头注意力的变种 GQA（grouped-query attention）的形式{nbrm6n}
	* 对头分组，不同头 query 都不同，K,V 在组内共享、组间不同
	* 注：笔记中位置((nbrm5y))
* 多头注意力有变种 MQA（multi-query attention）与 GQA（grouped-query attention），为何不是简化 query 而各头分别用不同的 K、V，我的理解{o5bl63}
	* 对于 decoder-only Transformer 的推理过程，生成一个新 token 时需要历史所有位置的 key、value（似为所谓 KV 缓存），而 query 只需要当前位置的即可，Q 算完即可扔掉
* 多头注意力变种 MLA（multi-latent attention）的形式{o5mm2s}
	* 先压缩 cᵢ = xᵢW_c
	* 对 head s，qˢᵢ = cᵢWˢ_q，vˢᵢ = cᵢWˢᵥ
	* KV cache 变为只存 cᵢ
* 多头注意力变种 MLA（multi-latent attention）与 RoPE 位置编码不兼容，用于说明的公式{o5mm2t}
	* file:///home/yzh/oc-ptis/attached/o5mm3l-MLA-RoPE-incompat-SRS.pdf
* GELU、SiLU 激活函数的图像相似，二者函数表达式分别为{nbpj48}
	* GELU(x) = xΦ(x) ，其中 Φ 为正态分布 CDF
	* SiLU(x) = x/(1 + e⁻ˣ)
* NaViT 可处理不同尺寸、形状的图片，论文讨论的 3 种位置编码方式{o4hn6c}
	* file:///home/yzh/oc-ptis/attached/o4hn62-NaViT-PE-SRS.pdf
	* 主笔记位置((o4hn6z))
* MCTS（Monte-Carlo tree search）的 4 步{o7pb10}
	* selection（选已搜索节点中的叶节点）
	* expansion（新增子节点）
	* simulation（走到完整树的叶节点）
	* backpropagation（更新所有父节点价值评估）
* 张俊林（新浪新技术研发负责人）认为的 LLM 3 大基础能力{o9ff0r}
	* 语言（理解、表达）
	* 知识（存储、提取）
	* 推理
	* 来源((srs:o9ff0g))
* PINN 原始论文的 arXiv 预印本、JCP 发表版本 各自的发表时间 [?1]、标题开头 [?2]{o9nf3y}
	* arXiv：2017（1711.10561），Physics-Informed Deep Learning (Part I): ...
	* JCP：2019，Physics-informed neural networks: ...
* 姚期智的 DoT 推理，LLM 需饰演哪 3 种角色{o9of5k}
	* proposer, critic, summarizer
	* 见 DoT-2409.10038
* LLM 合成数据微调，RFT（rejection sampling fine-tuning）大意{oaum99}
	> （注）来源：2024-10-30 组会，YhPu
	* 采样多个解答，使用判别器（如代码运行）筛选正确样本，作为有监督微调数据
* LLM 合成数据微调，DPO（direct preference optimization）大意{oaum9b}
	* 采样多个解答，使用判别器（如代码运行）区分正确、错误样本，微调时每步增大正、负样本生成概率的「差值」
	* 每步所用数据形如 (x,y⁺,y⁻)
* LLM 合成数据微调 self-explore 范式，SFT、RFT、DPO、ICL（上下文学习）效果好坏顺序（通常情形）{oaum9d}
	* DPO > RFT > SFT > ICL
* LLM 合成数据微调，自动判断思维链到哪步出错了，基于 MCTS 的 omega process reward model（PRM）算法采用了什么策略{oaum9f}
	* simulate：从特定位置采样多次到结论的思维链，用判别器（如代码运行）
	* 如果正确概率 > 0，认为思维链直到该位置都正确；否则认为有错误
	* 二分法执行如上步骤，找到最开始出错位置
* LLM 合成数据微调，用 (x,y⁺) 和用 (x,y⁺,y⁻) 微调的方式分别叫做什么{p2de3q}
	> 设定：对问题 x 采样多解答，判别器（如代码运行）区分正确样本 y⁺、错误样本 y⁻
	* RFT（rejection sampling fine-tuning）
	* DPO（direct preference optimization）
* LLM 后训练，SFT 与 RL（策略梯度）所用 loss 的主要区别（我的理解）{p2di03}
	* SFT（只有正样本）只增加生成特定 token 的概率
	* RL（可有负样本）可降低生成特定 token 的概率，取决于 reward 大小
		* （某种意义上）相当于对训练样本进行有符号加权
* LLM RL 后训练，actor-critic 相比简单策略梯度的优势，我的理解{p2hm6x}
	* 减小方差：value model 打包预测了对后续 token 取期望的总 reward，降低样本 reward 方差
	* 过程奖励：相当于对中间思维过程引入监督，奖励过程中的合理步骤，而非（像 reward model 一样）仅依据最终结果正确性
* 不同表征网络算相似度：对 f: S → ℝⁿ 考察什么特征{p72e60}
	> 要求：特征与 n 无关；离散可计算版本
	* 样本对表征相似度矩阵：取数据集，求各样本表征，对所有样本对算相似度
	* （无需回忆）相似度计算默认用内积，得 XXᵀ，其中 X = [f(s₁),…,f(sₖ)]ᵀ
		* 也可用一般的 kernel k(s,t)，后者需减掉均值（尤其 kernel 恒非负情形）
	* 注：相关主笔记位置((p72b13))
* 表征网络 f: S → ℝⁿ 对应的 XXᵀ 为离散版本，其连续版本、概率版本对应概念（我的理解）{p72e62}
	> 背景：XXᵀ 为 f 的“样本对表征相似度矩阵”，线性情形；X = [f(s₁),…,f(sₖ)]ᵀ
	* （连续）样本对特征相似度函数 ds_f: S × S → ℝ, (s,t) ↦ ⟨f(s),f(t)⟩
	* （概率）为 S 赋予概率分布（对应数据分布）后，ds_f 成为「实值」（非向量值）随机变量
	* 注：ds_f 是我自己的记号
* 二表征网络 基于内积的相似度、线性 CKA 相似度 定义分别为{p72e64}
	> 要求：使用（已算出的）二者的样本对相似度矩阵 XXᵀ,YYᵀ，X = [f(s₁),…,f(sₖ)]ᵀ
	> 设定：二表征网络为 f: S → ℝⁿ，g: S → ℝᵐ
	* 基于内积的相似度：矩阵内积 ⟨XXᵀ,YYᵀ⟩
	* 线性 CKA 相似度：夹角余弦值 ⟨XXᵀ,YYᵀ⟩/√{⟨XXᵀ,XXᵀ⟩⟨YYᵀ,YYᵀ⟩}
* 二表征网络 基于内积的相似度 ⟨XXᵀ,YYᵀ⟩ = [?]（计算化简）{p72e66}
	> 设定：二表征网络为 f: S → ℝⁿ，g: S → ℝᵐ
	> 设定：XXᵀ,YYᵀ 为二者的样本对相似度矩阵，X = [f(s₁),…,f(sₖ)]ᵀ 
	* ⟨XXᵀ,YYᵀ⟩ = tr(XXᵀYYᵀ) = tr(YᵀX(YᵀX)ᵀ) = ‖YᵀX‖²_F
* {old}# （制卡时改写）二表征网络 相似度计算涉及 YᵀX，在什么意义下可以解读为 Cov(f,g)
	> 设定：二表征网络为 f: S → ℝⁿ，g: S → ℝᵐ，X = [f(s₁),…,f(sₖ)]ᵀ
	* 复合 S 上概率分布（即数据分布），从而 f,g 可视为向量值随机变量
	* YᵀX/k ≈ 𝔼ₛf⊗g 为 k-样本的 empirical mean
	* centered 情形（即 𝔼ₛf = 0, 𝔼ₛg = 0）成为 Cov(f,g)
	* 改写理由：回忆内容太多，故进行横向拆分
* 二表征网络 相似度计算涉及 YᵀX，我理解的与 f⊗g: S → ℝⁿ˟ᵐ 关系（≈ 表达式）{p72e68}
	> 设定：二表征网络为 f: S → ℝⁿ，g: S → ℝᵐ，X = [f(s₁),…,f(sₖ)]ᵀ
	* YᵀX/k ≈ 𝔼ₛf⊗g 为 k-样本的 empirical mean
	* 涉及的准备：复合 S 上概率分布（即数据分布），从而 f,g 可视为向量值随机变量
* 二表征网络 相似度计算涉及 YᵀX ∝ Cov(f,g) 成立需要什么条件 [?1]，原因 [?2]{p72e6a}
	> 设定：二表征网络为 f: S → ℝⁿ，g: S → ℝᵐ，X = [f(s₁),…,f(sₖ)]ᵀ
	* centered，即 𝔼ₛf = 0, 𝔼ₛg = 0
		* 似乎其中一个成立已足够？
	* 因为此时 YᵀX/k ≈ 𝔼ₛf⊗g 才等于协方差
* 研究 NN loss landscape 性质的相变，主要考察哪三种性质{p72f3a}
	* 全局连通性、局部平坦性、多次训练结果相似性
	* 注：主笔记位置((p72f3b))
* NN loss landscape 全局连通性 衡量所用 metric 大意{p72f3c}
	* 独立训两次，结果用低 loss 曲线连接
	* 找曲线上 loss 与首尾均值差异最大值
* NN loss landscape 多次训练结果相似性 衡量所用 metric，比 l2 好的是 [?1]，解释 [?2]{p72f3e}
	* CKA similarity
	* 其定义基于表征，而非基于权重；多个不同权重的网络可能表征等价
* 检测/干预推理模型思考进度，TPV 使用模型的哪层 [?1] 激活值，用 [?2] 架构的网络提取{p79l09}
	> 设定：Thinking Progress Vector，针对 DeepSeek-R1 的研究
	* 最后一个隐层
	* 线性投影
	* 见主笔记((p79l07))
* AlphaFold2 序列分析，为推测两个氨基酸是否有相互作用，分析数据库的什么特征{p7lf70}
	> 设定：传统算法、不涉及 NN，数据库为 大量无标注的 同系物蛋白质 氨基酸序列
	* 统计组合多样性，若常见组合少，很可能有直接相互作用
	* 来源：主笔记((srs:p7lg1k))、((srs:p7lg1m))
* AlphaFold2 序列分析，从数据库中调取哪些数据{p7lf72}
	> 目标：推测两个氨基酸是否有相互作用
	> 设定：传统算法、不涉及 NN
	* 同系物的氨基酸序列（通常无标注，即蛋白质结构未知）
	* 同系物：同一蛋白质在不同物种中的情况
* AlphaFold2 序列分析，工作原理利用蛋白质演化的什么特性 [?1]、氨基酸对的特性 [?2]{p7lf74}
	> 分析过程：通过分析数据库组合多样性，推测两个氨基酸是否有相互作用
	> 设定：传统算法、不涉及 NN，数据库为 大量无标注的 同系物蛋白质 氨基酸序列
	* 结构变化 比序列变化 保守
	* 因此有相互作用的氨基酸会协同演化，总是保证二者能吸引
* 有相互作用的氨基酸会协同演化、保持吸引，举例两种吸引方式{p7lf76}
	> 背景：AlphaFold2 序列分析使用该生物学原理，诺奖委员会介绍图片中举的例子
	* 电荷相反、疏水性
	* 注：我还听说有 氢键、二硫键
* AlphaFold2 从序列数据库中找输入序列同系物，所用软件包的工作原理{p7na21}
	* hidden Markov model（HMM）
	* 来源见主笔记((srs:p7na20))
* AlphaFold2 网络两个子模块名称{p7na23}
	* Evoformer module, Structure module
* AlphaFold2 网络两个子模块的输出分别为{p7na25}
	* 氨基酸残基 embedding + 残基对 embedding
	* 蛋白质 3D 结构
* AF2 Evoformer 更新残基表征、残基对表征，每块中 3 步骤{p7na27}
	* 用 残基对表征 更新 残基表征
	* 用 残基表征 更新 残基对表征
	* 对 残基对表征 用 三角不等式
* AF2 Evoformer 所用残基表征、残基对表征 的张量 shape 分别为{p7na29}
	> 设定：氨基酸序列长为 r，序列（输入+数据库中同系物）个数 s，表征维数 c
	* 残基表征 [s,r,c]，残基对 [r,r,c]
* AlphaFold2 残基对表征（[r,r,c]）初始化的依据{p7na2b}
	* 若数据库有同系物 3D 结构：依据其中残基对距离
	* 一般情况：用（合理的）默认值
* AF2 Evoformer 更新残基表征（[s,r,c]），注意力计算方式{p7na2d}
	* 类似 axial attention（二步顺序无需回忆）
	* 同序列跨残基（r）注意力（残基对表征 提供 attn bias）
	* 同残基跨序列（s）注意力
* AF2 Evoformer 用 残基表征（[s,r,c_m]）更新 残基对表征（[r,r,c_z]），方式大意{p84a1r}
	* 算 同序列跨残基（r）注意力图，对序列（s）取平均，加到目标表征上
		* 注：“注意力图”仅指计算方式，最终使用方式不同于普通注意力
	* 注：以下描述 shape [s,r,c_m] 变为 [r,r,c_z] 历程
		* 降维投影 [s,r,c] 得 Q,K（> 不降维会导致外积计算量过大）
		* 外积 [s,r,r,c,c]
		* 均值 [r,r,c,c]
		* 输出投影 [r,r,c_z]
* AlphaFold2 refinement 过程的思想来源于什么领域（非 AI4S）的研究{p84a1t}
	* CV 中人体姿态估计
	> （无需回忆）为了准确预测人体姿态，我们从一张图像和一个默认姿态开始，连接在一起作为单独的通道，让神经网络逐步选择最优姿态更新。
	> 蛋白质结构预测与人体姿势估计相差不大。 
* Google T5 论文考察了哪三种 LLM「架构」[?1]，消融实验后用了哪种 [?2]{p86c1h}
	* encoder-decoder，causal，prefix-LM
	* encoder-decoder
	* [src](https://zhuanlan.zhihu.com/p/88438851)
* Google T5 论文考察了哪三种「自监督预训练」范式 [?1]，消融实验后用了哪种 [?2]{p86c1j}
	* 自回归（GPT 式），掩码恢复（BERT 式），deshuffling（打乱文本顺序让模型还原）
	* 掩码恢复（BERT 式）
* Google T5 模型全称{p86c1l}
	* Text-to-Text Transfer Transformer
* MAE 训练时 encoder 输入不包括 masked patches，否则造成哪两种问题{p8ig43}
	> （注）输入的 un-masked patches 带位置编码，从而能保留空间位置信息
	* 训练耗时：encoder 本来就比 decoder 大，图像大部分 patches 已掩码，同时输入导致训练计算量激增
		* 注：encoder 是预训练的真正目标，decoder 可小到只有一层
	* 下游掉点：下游任务无 masked tokens，预训练阶段若有则存在 gap；BERT 也遇到类似问题
	* [src](https://zhuanlan.zhihu.com/p/439554945)
* MAE 训练时 decoder 输入的 masked token 包括哪两个分量{p8ig45}
	* 可学 latent（所有位置统一）
	* 固定位置编码
	* 无需回忆：un-masked token 即编码器输出
* MAE 训练时 mask 比例最优值约为{p8ig47}
	* 75%
	* 无需回忆：输出 loss 只算 masked 部分的 MSE，否则会掉点
* PPINN 对多时间区间并行调用 F，各区间初值选取策略（非首轮），我直观解读的示意图{pchm8a}
	> 设定：精确时间推进算子 F、粗糙版 f
	> 非首轮：首轮初值选取纯用 f，足够显然，无需回忆
	> 目标：预测-校正格式 以支持 F 时间层面的并行计算
	* file:///home/yzh/oc-ptis/attached/pchm90-PPINN-SRS.xoj
	* 解释：思路是 uₜ¹ ≈ F(uₜ₋₁¹)，预测利用假设 F(u¹) - f(u¹) ≈ F(u⁰) - f(u⁰)
* PPINN 停机准则{pchm8c}
	> 目标：对多时间区间并行计算 精确时间推进，用预测-校正思路
	* 所有时间区间初值 某次迭代后 更新量小于 ε（= 0.01）
* PPINN 停机后，各时间区间的解如何拼接为完整解{pchm8e}
	> 目标：对多时间区间并行计算 精确时间推进，用预测-校正思路
	* 对各区间 精确时间推进的解 整体平移
	* 注：平移目标似乎不是使其首尾相接，而是仿照各时间段初值选取策略，不要求保证最终解连续
	* 注：我推测可平移 ax+b 保证首尾相接，不是只平移 b
* TSONN 为解 Lu = 0 如何转化问题 [?1]，子方程形式 [?2]{q51l81}
	> 背景：作为 PINN 改进
	* 解作为对应含时系统 uₜ = Lu 在 t → ∞ 的极限
		* （无需回忆）原文强调是“伪”时间：1. 原方程可能含物理时间，2. 不要求收敛历史遵循时间演化，3. Lu 可体积加权，相当于各配点用不同时间步
	* 隐式时间离散 (u - uₙ)/τ = Lu，uₙ 为上一步状态
		* 注：arXiv 版本还有显式时间离散的版本 eTSONN (u - uₙ)/τ = Luₙ，实验中时间步长不受 CFL 限制；发表版本仅提及并引用 arXiv 版本
	* [src](https://mp.weixin.qq.com/s/JR3WeG-99t0pOHKPpIxauw)；注意原文 JCP 发表版本、arXiv 版本差异较大，标题也不同
	* 注：相应主笔记位置((q51m5f))
* TSONN 需解一系列子问题 (u - uₙ)/τ = Lu，算法内外层循环分别为 [?1]，优化器需注意的两点 [?2]{q51l83}
	> 背景：作为 PINN 改进，原始待解问题为 Lu = 0
	* 内层解（隐式时间离散所得）子问题，PINN loss 优化 K 步
	* 外层对含时系统 uₜ = Lu 伪时间推进，共 N 步
	* 用 LBFGS，每次外迭代重初始化（因子问题改变）
* TSONN 有效性解释，PINN 直接解 Lu = 0 为何低效{q51l85}
	* 原问题 PINN loss 梯度流 ∇ᵤ‖Lu‖²/2 = Lu·∂ᵤL
	* Jacobian ∂ᵤL 条件数大，某些方向（负）特征值过于接近 0，收敛慢
* TSONN 有效性解释，PINN 解 (u - uₙ)/τ = Lu 为何比直接解原问题更良态{q51l87}
	* 新问题残差 R(u) = Lu - (u - uₙ)/τ，PINN loss 梯度流 ∇ᵤ‖R(u)‖²/2 = R·∂ᵤR
	* Jacobian ∂ᵤR = ∂ᵤL - 1/τ 对所有负特征值平移了 -1/τ，条件数变小
* TSONN 有效性解释，加正则化的 PINN loss l(u) = ‖Lu‖² + ‖(u - uₙ)/τ‖² 为何无效（我的理解）{q51l89}
	> 背景：TSONN 作为 PINN 改进，原始待解问题为 Lu = 0
	* loss 梯度流 ∇ᵤl(u) = Lu·∂ᵤL + (u - uₙ)/τ²
	* Jacobian ∂ᵤL 特征值没有受到直接影响
	* 更具体地：1/τ² 引入时的权重是 (u - uₙ)，而权重是 Lu 时才能叠加到 ∂ᵤL 上
* # TSONN 设定，Jacobian ∂ᵤL 特征值为何均 ≤ 0{q51l8b}
	> 背景：作为 PINN 改进，原始待解问题为 Lu = 0
	* 物理背景，本来就只需求含时系统 uₜ = Lu 在 t → ∞ 的极限稳态解
	* Jacobian 特征值 > 0 对应方程 Lu = 0 的不稳定平衡点，微扰后系统演化会偏离，通常不对应 t → ∞ 的解
* TSONN 实验设计，为验证 PINN 解 (u - uₙ)/τ = Lu 比直接解原问题更良态，设计了什么实验{q51l8d}
	* 前一步解 uₙ 换为传统方法数值解 uᵣ
		* 注：仅用于分析受控系统性质，实际求解过程中无法获得
	* 从而新方程 R(u) := Lu - (u - uᵣ)/τ = 0 与原方程 Lu = 0 有相同的解
		* 注：在平移 Jacobian 特征值方面 效果与用 uₙ 的相同
	* 对两个问题同时用 PINN 解，比较收敛速度
* TSONN 用于解 uₜ = uuₓ - νuₓₓ, u|t=0 = g, u|∂D = h，含伪时间 s 的系统如何正确构造（IC/BC 有二版本）{q51l8f}
	> 背景：作为 PINN 改进
	* 只需回忆：RHS uₓₓ 系数正，u|.. 系数负，IC/BC 可硬约束
	* 总原则：uₛ = Lu 随 s → ∞ 收敛
	* 内部 uₛ = -uₜ - uuₓ + νuₓₓ（RHS νuₓₓ 项为正）
	* IC/BC v1 硬约束，设具体值：u|t=0 = g, u|∂D = h
		* 注：原文 eqn(9)+1 提到类似策略
	* IC/BC v2 设变化率：uₛ|t=0 = g - u|t=0, uₛ|∂D = h - u|∂D（RHS u|.. 项为负）
		* 注：原文 eqn(11)-1 提到
* 图像生成 FID 指标计算方式，度量哪两个对象的距离{q54a48}
	* 各样本过预训练网络提取隐表征
	* 对样本集算均值、协方差
	* 数据集、生成样例集 分别算均值、协方差，求其距离
	* [src](https://zhuanlan.zhihu.com/p/432965561)
* {old}# 图像生成 FID 指标计算公式，两个正态分布距离定义为
	* 公式 FID = ‖μ' - μ‖² + tr(Σ' + Σ - 2√{Σ'Σ})
	* 2026-06-27 重构
* FID = ‖μ' - μ‖² + [?]{q54a4a}
	> 设定：图像生成 FID 指标计算公式，两个正态分布距离定义
	* FID = ‖μ' - μ‖² + tr(Σ' + Σ - 2√{Σ'Σ})
	* 注意 1. 算距离的是 √Σ 不是单纯的 Σ；2. 范数用 tr 而非矩阵范数（因矩阵正定）
* softmax 计算的 tiling 方式，2-pass online-softmax 如何改进 3-pass safe-softmax{q5rl5q}
	> 背景：FlashAttention-1 前传算 softmax(S)V，SRAM 容量不足以保存完整的 S，需分块计算
	* 第一次遍历过程中同时动态更新 mₙ = maxⁿ(sᵢ) 和累积分母 dₙ = ∑ⁿexp(sᵢ - mₙ)
	* 具体计算方式 d₊ = dₙexp(mₙ - m₊) + exp(s₊ - m₊)
	* [参考](https://zhuanlan.zhihu.com/p/668888063)
* FlashAttention 前传算 softmax(S)V 方式如何改进 online-softmax{q5rl5s}
	* 1-pass 过程中额外动态更新 累积分子 rₙ = ∑ⁿexp(sᵢ - mₙ)vᵢ
	* 具体计算方式 r₊ = rₙexp(mₙ - m₊) + exp(s₊ - m₊)v₊
	* 注：FA1 原版的方式是直接算累积分式 oₙ = ∑ⁿexp(sᵢ - mₙ)vᵢ/dₙ
		* o₊ = oₙdₙexp(mₙ - m₊)/d₊ + exp(s₊ - m₊)v₊/d₊
		* 会引入额外除法运算，算力不如纯矩阵乘的 tensor core，因此 FA2 改掉了
* FlashAttention-1 动机，为何前传算 softmax(S)V 方式需改进{q5rl5u}
	* 芯片计算单元可直接访问的 SRAM 容量有限，不足以保存完整的 S
	* 希望 S 逐块计算（tiling），每块计算结果使用后可立即丢弃，而非保存整行结果后才统一算 softmax
* FlashAttention-1 对 softmax(S)V 反传计算方式{q5rl5w}
	* 现场重新计算 S
	* 前传阶段最终所得的（score 最大值）m，（累积分母）d 保存，反传时直接从 HBM 读取使用
### 多模态
* ControlNet 架构{n4sb38}
	* file:///home/yzh/oc-ptis/attached/n4sb2g-ControlNet.pdf
* CLIP 后续工作 ALBEF 架构{n5vn0z}
	* file:///home/yzh/oc-ptis/attached/n5vn0u-ALBEF.png
* CLIP 用于图片分类方式{n5vn3m}
	* 离线阶段：使用 prompt 'a photo of [class label]'，代入 N 个 class label 得到 N 句子、过文本编码器得 N 隐向量，拼接为矩阵
		* prompt ensemble：使用一系列不一样的 prompt，如 'an img of small/big [cls label]'，全过文本编码器，所得隐向量平均作为该类别的隐向量
	* 在线阶段：新图片来时，过图像编码器，所得隐向量与已有矩阵算相似度
	* 详见笔记系统((n37n4u))
* VLMo 提出的多路 Transformer（针对多模态）大意{n8jm0f}
	* 多种模态对应不同 FFN 参数，而注意力部分共享
	* 注：笔记系统中记录为((n8jm4l))
* VLMo 训练，若任务为根据图片对文本做完形填空，所用架构（注意力+FFN 的 类型+范围）{n8jm0o}
	* file:///home/yzh/oc-ptis/attached/n8jm14-VLMo-MaskedLM.png
	* 注意浅层注意力计算统一，不是（像对比学习中那样）分开算注意力
* VLMo 训练，若任务为图文对比学习，所用架构（注意力+FFN 的 类型+范围）{n8jm0p}
	* file:///home/yzh/oc-ptis/attached/n8jm1y-VLMo-contrast.png
	* 注意总层数一直是 L（无论哪个任务）
* DiT 论文考虑的 4 种条件生成方式{o3lg3t}
	* in-context conditioning（条件 token 直接 concat 到 patch 序列中）
	* cross-attention
	* adaptive layernorm (adaLN)
	* adaLN-Zero（modulation encoder 末层零初始化）
* DiT 论文中 N×DiT block 作为一个整体，其输入（两个）为 [?]，分别需做什么预处理{o3lg3v}
	* noised latent，需 patchify
	* timestep t + condition y，需 embed
* DiT 论文中 N×DiT block 作为一个整体，其输出（两个）为{o3lg3x}
	* noise
	* 扩散模型方差 Σ
* DiT 论文主要用的 adaLN-Zero 条件生成方式中，生成了哪 6 个 modulation{o3lg3z}
	* file:///home/yzh/oc-ptis/attached/o3lg5h-DiT-arch-SRS.jpg
### NO
* PDE-Net 1 中一个 δt-block 的表达式{n7g965}
	* file:///home/yzh/oc-ptis/attached/n7g960-PDE-Net-dt-SRS.png
	* 要点：F 为黑箱 NN，Dᵢⱼ ≈ ∂ⁱₓ∂ʲ_y 卷积核（包含可学系数）
	* 注意 D₀，D₀₀（平均算子）也可学：提升稳定性
* PDE-Net 中对可学卷积核 Dᵢⱼ ≈ ∂ⁱₓ∂ʲ_y 施加的矩约束，例子{n7g97c}
	* file:///home/yzh/oc-ptis/attached/n7g97x-PDE-Net-Mq-SRS.png
* 李宗宜给出的 NO 定义，中间层 iterative update 格式为（按 FNO 论文版本）{n7kk5n}
	* vₜ₊₁ = σ(Wvₜ + 𝓚vₜ)
	* 其中中间场 vₜ: Ω → ℝ^{dᵥ}
	* 注：别人文章转述的版本还有 bias
	* 注：我觉得理论上可以再引入 residual connection
* FNO 中算子 𝓚 ansatz{n7kk5z}
	* 𝓚v = 𝓕⁻¹(R(𝓕v))，𝓕 表示 FT（离散后为 FFT）
* FNO 实现时，频域作用矩阵场 R 的参化方式{n7kk7t}
	* 直接参化，张量尺寸 s₁ × ⋯ × s_d × dᵥ × dᵥ；其中 s₁×⋯×s_d 为网格尺寸
	* 注：原文还考虑了映射参化（依赖于 𝓕v），无效果提升
* ViT 对各 patch 线性编码为 token，AFNO 代码中的实现方式为{n8hm2d}
	* 卷积，卷积核尺寸、stride 均等于 patch 大小
	* 笔记系统中位置((n8hj6b))
* AFNO 相比 FNO 差别（2 点）{n8hm2o}
	* 输入升维涉及特征图尺寸减少（patch 转 token embedding）
	* 频域变换为分块 MLP，而非线性变换
	* 注：笔记系统中位置见((n8hm0f))
* AFNO 与 ViT 区别{n8hm38}
	* 不同 patch（在中间层对应 feature map 不同像素）信息混合不是靠注意力，而是 FFT 后对特征过（单隐层）MLP
	* 注：笔记系统中位置见((n8hm0f))
* Galerkin Transformer 论文提出 Vᵢⱼ = [?]（填 vᵢ(xⱼ) 或 vⱼ(xᵢ)）；Q,K 同理{n8v87o}
	* vⱼ(xᵢ) ：ij 先后顺序要调换
	* 即：不同行对应不同空间离散点，不同列对应不同函数（或场的不同分量）
* Galerkin Transformer 论文中 (QKᵀV)ᵢⱼ = ∑qᵣ(xᵢ)kᵣ(xₛ)vⱼ(xₛ)，则 (QKᵀ)V 的理解方式 [?]，基于此构造 [?] attention{n8vl98}
	* 积分 z(x) = ∫κ(x,ξ)v(ξ)
		* κ(x,ξ) = ∑qᵣ(x)kᵣ(ξ) 为积分 kernel/Green 函数，包括 Fourier 变换积分核
		* 注意 κ 为标量、v 向量
	* Fourier attention
* Galerkin Transformer 论文中 (QKᵀV)ᵢⱼ = ∑ qᵣ(xᵢ)kᵣ(xₛ)vⱼ(xₛ)，则 Q(KᵀV) 的理解方式 [?]，基于此构造 [?] attention{n8vl99}
	* Petrov-Galerkin 投影 zⱼ(x) = ∑ bⱼᵣqᵣ(x)
		* bⱼᵣ = b(kᵣ,vⱼ) = ∫kᵣ(ξ)vⱼ(ξ)dξ
		* 注：作者提到 b(-,-) 可以看作是定义在无穷维 Hilbert 空间上的双线性型，而计算的时候，表示矩阵或者 Q,K,V 的每一列就可以看成是无穷维空间上的有限维逼近空间的采样
	* Galerkin attention
* Galerkin Transformer 论文中，对 V 做 layernorm LN(V) 的计算方式、类比的含义为（Q,K 同理）{n8vl9a}
	* 计算方式：每行归一化
	* 类比的含义：每个基函数 vⱼ(x) 在 L²-内积下归一化；实际内积计算中用离散网格 xᵢ
	* 注：只是类比，实际上是对每个点 x 上的 feature vector 归一化
		* 对应基函数归一化的是 instance norm，OFormer 论文将 instance norm 作为改进方案
* Galerkin Transformer 论文中提出的 Fourier attention Attn(y) = [?]，Galerkin attention Attn(y) = [?]{n8vl9c}
	> 要求：只需回忆 LN 位置、矩阵乘法结合顺序，无需回忆 scaling
	* Fourier：Attn(y) = (LN(Q)LN(K)ᵀ)V/n （见原论文 eqn(5)）
	* Galerkin：Attn(y) = Q(LN(K)ᵀLN(V))/n
	* 注：其中的 layernorm 解读为：对涉及的所有基函数归一化
		* 作者在推送的表述为“类似Gram-Schmidt正交化过程中除以做内积向量的norm平方”
		* 注：这点我还需要确认，LN 似乎是对 channel（分量）维度归一化，不是对 seq_len（空间样本点）维度？
* Galerkin Transformer 论文中，注意力机制 softmax(QKᵀ/√d)V 换为 QKᵀV/n，我所理解的 √d、n 因子含义分别为{n8vl9e}
	* 原版的 √d：对分量的正则化；假定各分量 iid，按中心极限定理，除以 √d 可保证方差恒定
	* 新的 n：对空间采样点的正则化；估计二函数 L² 内积（KᵀV），写为采样点上内积的平均值
* Galerkin Transformer 论文中，两种注意力机制的复杂度为（按文中说法）{n8vl9g}
	* Fourier 为平方，Galerkin 为线性
* Galerkin Transformer 每层的架构 [?]，与普通 Transformer 层的区别 [?]{n8vl9h}
	* y' = y + Attn(y)，y₊ = y' + FFN(y')
	* 两处运算均不进行 layernorm，layernorm 放进了 Attn 里
* Galerkin Transformer 在 Burgers 方程上用的架构，6 层分别是{n8vl9i}
	* 4 层 Galerkin，2 层 FNO
	* 作者在推送中称参数量同 4 层 FNO
* Galerkin Transformer，我认为它要求空间离散方式为 [?]，理由 [?]{n8vl9k}
	* 均匀分布的离散散点，散点个数可变
		* 原做法所用的 均匀网格 为特例
	* 理由：为近似函数 L² 内积，空间采样需要均匀
* FFNO 大意{p4pc0b}
	* 各轴分别 FT 后做线性变换、结果求和
	* 从而不同维数算子可共享同一套参数
* NO multi-fidelity 训练，multi-level Monte Carlo 方式大意{p6d981}
	* loss 按分辨率拆分 telescopic sum：lₘ(a) = l₁(a) + ∑(lₖ₊₁(a) - lₖ(a))
		* 各项均为 𝔼[⋯] 形式
	* 低分辨率部分残差用较多样本算 empirical mean，高分辨率部分用较少样本
	* 主笔记位置((p6d97z))
* LinearNO 如何用 QKᵀV 解读 Transolver：1. slice 投影，2. slice 间注意力，3. deslice 更新原 tokens{q18m34}
	* 1. ψ(K)ᵀ 为 slice 权重矩阵，计算结果 ψ(K)ᵀV
	* 2. 信息混合 G(ψ(K)ᵀV)
	* 3. φ(Q) 为 deslice 权重矩阵，计算结果 φ(Q)G(ψ(K)ᵀV)
* LinearNO 去除 Transolver 的 slice 间注意力，认为其功能可如何代替{q18m36}
	* 生成 slice ψ(K)ᵀ, deslice φ(Q) 时使用不同的线性层，以允许信息跨 slice 流通
	* 见主笔记((srs:q18m4j))
* Performer 线性注意力构造 exp(q·k) = φ(q)·φ(k) 方式 [?1]，有限维近似方案 [?2]{q18n0c}
	* = 𝔼[X(q;ω)X(k;ω)] 为二 L² 随机变量内积
		* 其中 ω ~ N(0,I), X(q;ω) = exp(ω·q - ‖q‖²/2)
	* （无需回忆）推导：exp(q·k) = C∫exp(q·k - ‖q+k-ω‖²/2)dω
		* = C∫exp(-‖ω‖²/2)exp(ω·q-‖q‖²/2)exp(ω·k-‖k‖²/2)dω
		* 注：只需处理 1D 情形即可
	* 有限维近似：采样 ωᵢ；原文进一步正交化（保模长）以降低方差
	* 信源：[苏剑林博客](https://kexue.fm/archives/8601) eqn(4)
* 线性注意力：softmax(QKᵀ)V 可化归为 exp(QKᵀ)V 原因{q18n0e}
	* 二者输出取 RMSNorm 后相等
	* 信源：[苏剑林博客](https://kexue.fm/archives/11033)
### 基于理论分析的架构处理
* NN 初始化，PyTorch nn.Linear 默认方案为 [?]，其设计针对 [?] 激活函数{n8en44}
	* Kaiming uniform：Wᵢⱼ,bᵢ ~ Unif([-√k, √k]), k = 1 / dim_in （权重、bias 初始化方式相同）
		* 注：Kaiming 初始化方案另有 normal
	* ReLU
* Siren 初始化方案设计，希望使 sine 输入的分布为 [?]（中间层、首层）{nbbj00}
	* 中间层 N(0, 1)
	* 首层取值分布应覆盖多个周期
* Siren 初始化方案设计，在设计的 sine 输入的分布下，sine 输出的分布为 [?]{nbbj02}
	* 取值范围 [-1,1] 的 arcsin 分布（由作者定义），为 Beta 分布的特例
* ViT patch-embedding 层若用 Conv2d 实现，代码需注意什么{parn54}
	* 需手动初始化；Conv2d 是当线性层来用，而卷积层的默认初始化有所不同
	* 注：对比实验结果参考 20251026_0a 多次运行结果，去掉初始化后测试误差 0.20 增加到 0.30，尽管训练集误差仍为 0.15 左右
	* 注：代码写法可参考 2025-10 PDEformer 兼容 PyTorch 版本的 TriPlane NO PatchEmbedding
* DeepNet 作者分析 L 层 ResNet x₊ = x + εf(x;θ) 反传稳定性条件，【窄】网络要求 ε = O([?])，理由 [?]{n8kg3h}
	* ε = O(1 / L)
	* BP ∂x₊/∂x = I + ϵ∂f/∂x，|∂x₊/∂x| ≈ 1 + ϵ，|∂x_L/∂x₀| ≈ (1 + ϵ)ᴸ，
* DeepNet 作者分析 L 层 ResNet x₊ = x + εf(x;θ) 反传稳定性条件，【宽】网络要求 ε = O([?])，理由 [?]{n8kg3i}
	* ε = O(1 / √L)
	* BP 中乘向量 v：v∂x₊/∂x = v + ϵv∂f/∂x，高维随机初始化下认为后两者近似正交，‖v∂x₊/∂x‖² = O((1 + ϵ²)‖v‖²)
		* 回忆起“近似正交”即可
	* 注：笔记系统中位置((n8kh40))；[来源](https://kexue.fm/archives/8994)
* RMSNorm 与普通 LayerNorm 不同，其表达式为{nbqa1w}
	* xᵢ ↦ xᵢ/√{∑ᵢxᵢ²} ，即：直接除以方均根（RMS）
	* 比较：LayerNorm 相当于先平移至均值 0，再 RMSNorm
	* 注：在 LLaMA2 中用到
	* 注：笔记系统中位置((nbqg3u))
* DeepNorm 与普通 post-LayerNorm 不同，其表达式为{nbqf20}
	* x ← LN(αx + F(x)) ，通过 α > 1 强调了残差连接部分
	* 注：目的为克服 ((nbqf74))post-LN 残差连接受抑制、梯度消失缺陷
	* 注：笔记系统中位置((nbqf90))，包括 α 选取方式
* 普通残差连接层 x ← x + F(x)，添加 pre-layernorm、post-layernorm 后该表达式分别变为{nbqf2j}
	* pre-LN：x ← x + F(LN(x))
	* post-LN：x ← LN(x + F(x)) ，注意残差连接也在 LN 里面
* post-layernorm 不好训练，我听说的解释：它易出现 [?] 现象，该现象的成因 [?]{nbqf74}
	* 梯度消失
	* 残差连接参与归一化，幅值被降低，嵌套多层后幅值严重衰减，无法发挥直接回传梯度功能
	* 注：笔记系统位置((nbqg84))
* RoPE 位置编码如何作用于注意力计算{o5ml90}
	* qᵢkⱼᵀ 内积换为 (qᵢRᵢ)(kⱼRⱼ)ᵀ = qᵢRᵢ₋ⱼkⱼᵀ
* RoPE 位置编码中旋转矩阵 Rᵢ 形式（针对序列的第 i 个元素；建议写下）{o5ml91}
	* Rᵢ = diag(R(iθ₁),…,R(iθᵣ))，其中 R(θ) 为二阶旋转矩阵
	* 这里假定 q,k 维数为 d = 2r
* RoPE 位置编码要求 q,k 的 embed_dim 为 [?] 的倍数{o5ml92}
	* 2
* RoPE 位置编码的旋转矩阵 Rᵢ = diag(R(iθ₁),…,R(iθᵣ))，其中 θₖ = [?]，其最小值（在最大的 k 取到）为{o5ml93}
	* 10⁻⁸ᵏˊᵈ
	* 10⁻⁴，即 1e-4
* LLM 上下文长度扩展，对 RoPE 做纯内插会遇到的问题{p6eg30}
	* 整体频率降低，高频信息缺失、编码分辨率降低，模型难识别位置接近、语义相似的 token
	* 可通过 NTK 分析得出
	* [src](https://zhuanlan.zhihu.com/p/25241219397)
* LLM 上下文长度扩展，RoPE 高频、低频应分别如何处理{p6eg32}
	* 高频外推（保 Δθ），低频内插（保 max(θ)）
* NTK-aware、NTK-by-parts 引入的 γ(d) 分别是什么形式{p6eg34}
	> 背景：LLM 上下文长度扩展，RoPE 旋转角度计算引入 γ(d) 因子
	> 预期：γ(0) = 1 完全外推, `γ(d_max) = 1/s` 完全内插
	* NTK-aware：指数衰减
	* NTK-by-parts：两端常数，中间线性过渡
		* 注：原文公式怀疑有误，γ(d) 最小值似乎不应该是 0，不过没有认真 check
* NTK-by-parts 改进 NTK-aware 的动机{p6eg36}
	> 背景：LLM 上下文长度扩展，RoPE 旋转角度计算引入 γ(d) 因子，NTK-aware 用指数衰减形式
	* 较低频分量之前从未经过完整周期，不应做任何外推，以避免出现没见过的旋转角度
* LLM 上下文长度扩展，YaRN 做法包括 修改 RoPE（NTK-by-parts）和什么{p6eg38}
	* attention scaling：对 softmax 升温，内部乘 1/√t 以避免注意力锐化
* LLM 上下文长度扩展，YaRN 认为仅用 NTK-by-parts 会有什么问题 [?1]，其直接原因 [?2]{p6eg3a}
	* softmax 过于锐化，削弱对全局上下文关注能力
	* 低频内插使 Δθ 变小，内积增大
	* 注：不过好像最终是高频低频都用了相同方式防锐化，而非主要针对低频
	* [src](https://zhuanlan.zhihu.com/p/15311461897)
* graph Laplacian 定义：设（无向图）邻接矩阵 A，degree matrix D，则我之前所知的 graph Laplacian L = [?1], normalized graph Laplacian `\tilde{L}` = [?2]{o9a97c}
	* L = D - A
	* `\tilde{L}` = I - D⁻¹ˊ²AD⁻¹ˊ²
	* 注：基于 2409.00604 结合回忆而得
* graph Fourier transform（我见到的版本）基于的是 graph Laplacian L 还是 normalized graph Laplacian `\tilde{L}`{o9a97e}
	* normalized graph Laplacian
* graph Fourier transform（GFT）：设 `\tilde{L}` = QΛQᵀ 为 normalized graph Laplacian 的对角化，则我所见到的 GFT 及其 inverse 对应的矩阵分别为{o9a97g}
	* GFT Qᵀ，IGFT Q
	* 注：相当于希望 `\tilde{L}` 在频域分块对角
* 2D mesh Laplacian (Lu)ᵢ = (1/Cᵢ)∑wᵢⱼ(uᵢ-uⱼ) 中 wᵢⱼ = [?]，根据示意图{oc3f0a}
	> file:///home/yzh/oc-ptis/attached/oc3f0y-mesh-lapl-1-SRS.pdf
	> （注）L 又叫 discrete Laplace-Beltrami operator
	* wᵢⱼ = |c₁c₂|/|ij| = (cot(αᵢⱼ) + cot(βᵢⱼ)) / 2
	* 来源：孙浩老师的 PhyMPGN-2410.01337
* 2D mesh Laplacian (Lu)ᵢ = (1/Cᵢ)∑wᵢⱼ(uᵢ-uⱼ) 中 Cᵢ = [?1]，其中 dual graph 形成方式 [?2]{oc3f0c}
	> file:///home/yzh/oc-ptis/attached/oc3f0y-mesh-lapl-1-SRS.pdf
	> （注）L 又叫 discrete Laplace-Beltrami operator
	* Cᵢ 为 dual graph 中 i 对应面元的面积（浅蓝色区域）
	* dual graph 边为原 mesh 各边中垂线；等价地：dual graph 顶点为原 mesh 各面外心
* 2D mesh Laplacian (Lu)ᵢ = (1/Cᵢ)∑wᵢⱼ(uᵢ-uⱼ) 中若出现钝角三角形，Cᵢ 的计算方式如何调整{oc3f0e}
	* （该三角形内）外心换为对边中点
	* 其他三角形内边走向不变（只是与钝角三角形公共边的中垂线不再向外延伸）
	* file:///home/yzh/oc-ptis/attached/oc3f17-mesh-lapl-2-SRS.pdf
* 2D mesh Laplacian (Lu)ᵢ = (1/Cᵢ)∑wᵢⱼ(uᵢ-uⱼ)，Crane《离散微分几何》sec6.3 的推导思路{oc3f0g}
	> file:///home/yzh/oc-ptis/attached/oc3f0y-mesh-lapl-1-SRS.pdf
	> （注）L 又叫 discrete Laplace-Beltrami operator
	* `L = *d*d`
	* 第一次 `*` 引入 wᵢⱼ = |c₁c₂|/|ij|，第二次 `*` 引入 1/|Cᵢ|
	* d 为带符号求和，第一次 Ω⁰ → Ω¹ 产生 uᵢ - uⱼ，第二次 Ω¹ → Ω² 产生外层 ∑
* Meta 关于多模态 scaling law 的论文 2301.03728，其中「单」模态 scaling law 的 loss 形式 Lⱼ = [?1]（3 项），其含义分别为 [?2]{o9ee64}
	> 涉及参数：模型参数量 N、当前模态 token 数 |Dⱼ|
	* Lⱼ = Eⱼ + Aⱼ/N^{αⱼ} + Bⱼ/|Dⱼ|^{βⱼ}
	* 理论最小 loss，逼近误差，优化收敛误差
		* 注：第 3 项我的理解更接近于泛化误差，而非优化误差
	* file:///home/yzh/oc-ptis/attached/o9ee5y-uni-modal-scaling-law-SRS.pdf
* Meta 关于多模态 scaling law 的论文 2301.03728，其中「二」模态 scaling law 的 loss「前」2 项（包括含义、正负号）分别为{o9ee74}
	* 二模态独立 model 的 loss
	* 最大协同（唯一负号项）
	* file:///home/yzh/oc-ptis/attached/o9ee93-bi-modal-scaling-law-SRS.pdf
* Meta 关于多模态 scaling law 的论文 2301.03728，其中「二」模态 scaling law 的 loss「后」2 项（包括含义、正负号）分别为{ocjg70}
	* 函数逼近竞争（形式同单模态 scaling law）
	* 优化过程竞争（二数据集规模要求和）
	* file:///home/yzh/oc-ptis/attached/o9ee93-bi-modal-scaling-law-SRS.pdf
		* 注：最后一项分母可能漏了括号？
* NN dropout 训练、推理的差异，为何可能对网络激活值引入偏差{p5ik65}
	* 训练引入随机性后，尽管当前层均值相同，但方差不同
	* 经过后续非线性层（如线性变换后 ReLU）后，方差不同导致均值不同
	* 见主笔记((p5ik62))
* SGD、Adam、Muon（无视动量）权重更新量 Δw 均可视为哪个极小化问题的解{pbcc01}
	* min l(Δw;W) = l(W) + ⟨g,Δw⟩ + λ‖Δw‖²/2
	* 即：线性化的预期 loss，惩罚 Δw 范数
	* [src](https://zhuanlan.zhihu.com/p/1954634867791869927)
* SGD、Adam、Muon（无视动量）分别对应什么范数下的“最速下降”{pbcc03}
	> 设定：min l(Δw;W) = l(W) + ⟨g,Δw⟩ + λ‖Δw‖²/2
	> 设定+：W 为线性层权重矩阵
	* SGD：向量 2-norm（矩阵 F-norm）
	* Adam：向量 ∞-norm
		* 注：无视动量后等价于 SignSGD
	* Muon：矩阵 RMS-norm（正比于谱范数，即矩阵 2-norm、奇异值 ∞-norm）
		* 注：激活值用 RMS 范数是为保证各分量幅值与分量数无关
* Muon 动机：Adam（无视动量）可能出现的问题 [?1]，哪些权重仍适用 Adam [?2]{pbcc05}
	> 设定：Adam 更新量 Δw 的向量 ∞-norm 受控
	* 激活值更新量控制，每层输入空间应取 ℓ¹、输出 ℓ^∞；多层复合后受控范数不匹配，激活值更新量不受控
	* 整体网络输入、输出的投影层（这些地方用 Muon 实验性能下降）
* Muon 算 msign(G) 时避免显式 SVD 的近似计算策略{pbcc07}
	> 设定：输入矩阵 G = UΣVᵀ，预期输出 msign(G) = UVᵀ 奇异值归一化
	* 构造迭代格式，使奇异值 σ = 1 为吸引子不动点
* Muon 算 msign(G) 所用迭代格式具体形式 G ← [?]{pbcc09}
	> 设定：输入矩阵 G = UΣVᵀ，预期输出 msign(G) = UVᵀ 奇异值归一化
	* G ← f(GGᵀ)G = Uf(Σ²)ΣVᵀ，其中 f 为二次多项式
* Muon 算 msign(G) 所用迭代格式的初始化方式{pbcc0b}
	> 设定：输入矩阵 G = UΣVᵀ，预期输出 msign(G) = UVᵀ 奇异值归一化
	* G ← G/‖G‖ꜰ，预处理使所有奇异值落入 [0,1] 区间内
* FlexiViT 将 p×p 参数变换为 q×q，希望满足的性质 [?1]，计算方式 [?2]{q1jj5u}
	* p×p patch 用原参数 embed，和双线性插值到 q×q 后用变换后参数 embed，结果应相近（q > p 时相同）
	* 取 双线性插值 对应矩阵 的 pseudo-inverse
* Sparsemax(x) 定义（作为 Softmax 改进）{q84b2o}
	* x ∈ ℝⁿ 向单纯形 Δⁿ⁻¹ 投影
	* [信源](https://kexue.fm/archives/10145)，包括计算算法、梯度计算等
* (1+β)-Entmax(x) 定义{q84b2q}
	* ReLU(βx - λ)¹ˊᵝ，待定偏置 λ = λ(x) 取得使输出向量归一化
* Softmax = [?1]-Entmax, Sparsemax = [?2]-Entmax{q84b2s}
	* Softmax = 1-Entmax, Sparsemax = 2-Entmax
* α-Entmax 相较 Softmax、Sparsemax 优势分别为{q84b2u}
	* 稀疏性好于 Softmax
	* 可微性好于 Sparsemax（也避免过度稀疏）
* Softmax = 1-Entmax 等价性理解，exp(x) ≈ [?]{q84b2w}
	* exp(x) = exp(βx)¹ˊᵝ ≈ ReLU(1 + βx)¹ˊᵝ
	* 即：核心为 exp(βx) ≈ ReLU(1 + βx)
		* 注意不是用普通线性映射 1 + βx，因需保证非负
		* 注：括号内 1+ 可并入待定偏置常数 λ 故在 Entmax 表达式中可省略
### RL
* {old}# RL 算法，Q-learning 先更新 q(s,a) 再据此更新 π(s)，其中 temporal-difference (TD) 做法与 simulation-based search (Sim) 更新 q(s,a) 的依据分别为
	* TD：根据（关于 q 的）Bellman 方程
	* Sim：依据 rollout 轨迹：从初态用当前策略 rollout 到终态，更新该轨迹上所有位置的 q
	* 来源为YhPu slides file:///home/yzh/documents/noSync/research/largeModel/Introduction-to-RL.pptx
	* 2025-06-16 修订原因：“依据”可能误会为更新所用公式；此外主要题干未突出展示
* TD、Sim 中 q(s,a) 更新的目标值 分别如何获得{o89b90}
	> 背景：RL Q-learning 算法，temporal-difference vs. simulation-based search
	* TD：根据（关于 q 的）Bellman 方程
	* Sim：用当前策略 rollout 到终态
	* 来源为YhPu slides file:///home/yzh/documents/noSync/research/largeModel/Introduction-to-RL.pptx
* Sim 每次更新多大范围的 q(s,a) [?1]，使用了什么算法来实现 [?2]{o89b90a}
	> 背景：RL Q-learning 算法，simulation-based search
	* 从初态用当前策略 rollout 到终态，更新该轨迹上所有位置的 q
	* 递归
* RL 算法，Q-learning 中哪些算法适用于 non-Markov 情形：(1) TD，(2) simulation-based search (Sim) {o89b92}
	* TD 不适用，Sim（及一般的 Monte-Carlo 做法）适用
	* 注：棋类等博弈情形属于 non-Markov
* RL 算法，Q-learning 算法中 TD 与 simulation-based search (Sim) 均可更新 q(s,a) 值，其更新值的 bias 大小分别如何 [?1]，我对原因的理解 [?2]{o89b94}
	* TD 有一定 bias，Sim 无 bias
	* 理解：TD 更新 q(s,a) 所用的 q(s',a') 可能不准确（尤其训练初期），Sim 不涉及此
* RL 算法，Q-learning 算法中 TD、simulation-based search (Sim) 与 MCTS 均可更新 q(s,a) 值，其更新值的 variance 大小分别如何{o89b96}
	* TD variance 小，Sim variance 大
	* MCTS 小于 Sim（因为是从选择的中间节点展开，不是从根节点）
* RL 算法，Q-learning 中哪种算法更适用于 sparse reward 情形：(1) TD，(2) simulation-based search (Sim){o89b98}
	* Sim；TD 在此情形不好训练
* RL 算法，recursive simulation-based search (RSim) 中第 k = 1 层 simulation 的 π(s) 如何确定{o89e2a}
	* 以 s 为起点采样多条到终态的轨迹，每条轨迹采样后更新途中所有状态（包括起点 s）的 q,π
	* 用更新完毕的 π(s) 采样得当前动作 a ~ π(s)
	* 来源：`2022-07-09`(lectures) David Silver ICM 报告 slides p59/86，file:///home/yzh/documents/noSync/research/largeModel/silver-Simulation-based-search-control.pdf
	* 注：对比((o89j89))经典 MCTS 只更新上方、不更新下方，与这里相反
* MCTS 中所用的 policy 称呼（术语）：selection + expansion 使用的是 [?1] policy，simulation 使用 [?2] policy{o89j85}
	* tree policy
	* rollout policy
* MCTS 中 selection + expansion 和 simulation 所用的 policy π(s) 有什么（理念上的）不同{o89j87}
	* 前者：关注探索利用平衡（无需回忆：选择常用 UCB 即 upper confidence bound）
	* 后者：用当前策略；有的简化版本固定为均匀分布
* MCTS（经典版本）中 simulation 采样得轨迹后，哪部分的 q(s,a) 值会更新：1.（下方）simulation rollout 所得轨迹，2.（上方）selection + expansion 所得轨迹{o89j89}
	* 只更新上方 selection + expansion 轨迹中的 s
	* 注：对比((o89e2a))RSim 只更新下方、不更新上方，与这里相反
* RSim、经典 MCTS 都涉及 simulation rollout，二者分别更新哪些状态的 q(s,a) 值{pahg5y}
	> 前提：启动 rollout 的上方轨迹，RSim 为 k = 1 层 simulation，MCTS 为 selection + expansion
	> 术语：RSim 指 recursive simulation-based search
	* RSim：只更新下方 simulation 途中所有状态的 q
	* MCTS：只更新上方 selection + expansion 轨迹中状态的 q
* RL 策略梯度，原始 Ψₜ = R(τ) 换为 Ψₜ = γᵗQ(s,a) 为何正确，我的理解{p2gm60}
	> （注）策略梯度形式 `∇_θJ(θ) = 𝔼[∑ₜΨₜ∇_θlogπ_θ(aₜ|sₜ)]`
	> （注）完整记号 `Ψₜ = γᵗQ^{π_θ}(sₜ,aₜ)`
	* 期望求和交换 ∑ₜ𝔼[R(τ)∇logπ_θ(aₜ|sₜ)]
	* 拆分 `R(τ:<t) + R(τ:≥t)`，前项贡献为 0，后项期望为 γᵗQ(s,a)
	* 注：后项推导 𝔼[R(τ:≥t)∇logπ_θ(aₜ|sₜ)] = 𝔼_{..,aₜ}[∇logπ_θ(aₜ|sₜ)𝔼_{sₜ₊₁,rₜ,..}[R(τ:≥t)]]
		* 而 𝔼_{sₜ₊₁..}[R(τ:≥t)] = γᵗQ(sₜ,aₜ)
* {x}# 旧内容
	* 由线性性，可内部添加期望 `𝔼[∑ₜ𝔼[R(τ)|sₜ,aₜ]logπ_θ(aₜ|sₜ)]`
	* R(τ) = ∑ₛrₛ 去掉与 θ 无关的项（不影响梯度）{rₛ | s ≤ t}
	* 剩余项期望为 Q^π(s,a)
* RL 策略梯度，原始 Ψₜ = R(τ) 换为 Ψₜ = γᵗQ(s,a) 推导，为何我认为 `R(τ:<t)` 贡献为 0{p2gm61}
	> （注）详细证明目标 `𝔼[R(τ:<t)∇logπ_θ(aₜ|sₜ)] = 0`
	> （注）策略梯度形式 `∇_θJ(θ) = 𝔼[∑ₜΨₜ∇_θlogπ_θ(aₜ|sₜ)]`
	> （注）完整记号 `Ψₜ = γᵗQ^{π_θ}(sₜ,aₜ)`
	* 因为 𝔼_{aₜ}[∇logπ_θ(aₜ|sₜ)] = 0（类似 score 期望为 0）
	* 注：前置步骤 `𝔼[R(τ:<t)∇logπ_θ(aₜ|sₜ)] = 𝔼_{..,sₜ}[R(τ:<t)𝔼_{aₜ}[∇logπ_θ(aₜ|sₜ)]]`
* A(s,a) = [?]（RL 中 advantage function，设策略 π 给定）{p2gm62}
	* A(s,a) = Q(s,a) - V(s)
	* [src](https://zhuanlan.zhihu.com/p/7461863937)
* RL 策略梯度，Ψₜ = Q(s,a) 换为 Ψₜ = A(s,a) 的好处{p2gm64}
	> （注）策略梯度形式 `∇_θJ(θ) = 𝔼[∑ₜΨₜ∇_θlogπ_θ(aₜ|sₜ)]`
	> （注）省略了衰减因子；完整记号：Ψₜ = γᵗQ^π(sₜ,aₜ) 换为 Ψₜ = γᵗA^π(sₜ,aₜ)
	* 减小（关于 τ ~ π_θ 采样的）variance
* RL 策略梯度，Ψₜ = Q(s,a) 换为 Ψₜ = A(s,a) 为何正确{p2gm66}
	> （注）策略梯度形式 `∇_θJ(θ) = 𝔼[∑ₜΨₜ∇_θlogπ_θ(aₜ|sₜ)]`
	> （注）省略了衰减因子；完整记号：Ψₜ = γᵗQ^π(sₜ,aₜ) 换为 Ψₜ = γᵗA^π(sₜ,aₜ)
	* 二者差值不影响梯度
	* 具体地，差值 𝔼[∑ₜb(sₜ)logπ_θ(aₜ|sₜ)] 关于 θ 梯度为 0，其中 b(s) 为任意函数
	* 再代入 b = V^π 即可（注意这里的 π_θ 不参与外层 ∇_θ）
* RL 中估计 A(s,a)，GAE 的动机{p2gm68}
	> 设定：value net V(s) 不完全准确
	> 缩写：GAE = generalized advantage estimator
	* TD 估计偏差大（因 V(s) 估计不准）
	* MC 估计方差大
	* 希望选取中间状态达到平衡，用超参 λ ∈ [0,1] 控制
* RL 中 GAE 估计 A(s,a) ≈ [?]{p2gm6a}
	> 设定：value net V(s) 不完全准确
	> 缩写：GAE = generalized advantage estimator
	* A(s,a) ≈ ∑ₗ(γλ)ˡδ₊ₗ
		* 其中 TD δ = r + γV(s') - V(s)
	* λ = 0 时只有 l = 0 项，退化为 TD δ
	* λ = 1 时退化为 ∑ₗγˡr₊ₗ - V(s) 为纯 MC 估计
* RL PPO-clip 梯度估计涉及表达式 min(ρA, clip(ρ,1-ϵ,1+ϵ)A)，其具体行为如何描述{p2gm6c}
	> 设定：ρ = π_θ(a|s) / π_{old}(a|s) 为 off-policy 重要性采样的权重
	* A > 0 时，clip ρ 不大于 1 + ε
		* 即：若希望增大 π_θ（A > 0 情形），不允许它太大
	* `A < 0` 时，clip ρ 不小于 1 - ε
		* 即：若希望减小 π_θ（`A < 0` 情形），不允许它太小
* RL PPO-penalty 为近似 TRPO 的 KL 距离约束（难实现），如何通过惩罚 KL 距离（易实现）达到{p2gm6e}
	* KL 距离大于预设值 1.5 倍时，惩罚系数 ×2
	* KL 距离小于预设值 1/1.5 倍时，惩罚系数 ×1/2
	* 注：似乎是沿用的传统信赖域优化的类似算法，记不清了
* RL TRPO/PPO 的 off-policy 重要性采样，推导得表达式 `𝔼_old[∑ₜρA∇logπ_θ]` 用了近似，我认为准确版本应为{p2hg6d}
	> 要求：准确版本应等于 `𝔼_θ[∑ₜA∇logπ_θ]` 
	> 设定：ρ = π_θ(a|s) / π_{old}(a|s) 为 off-policy 重要性采样权重
	> （注）原策略梯度完整形式 `∇_θJ(θ) = 𝔼_θ[∑ₜγᵗA^π(sₜ,aₜ)∇_θlogπ_θ(aₜ|sₜ)]` ，这里省略了衰减因子
	* `𝔼_old[∑ₜ(ρ₀ρ₁…ρₜ)A∇logπ_θ]`，即使用 τ:≤t = {s₀,..,sₜ,aₜ} 的概率之比，而非仅考虑 aₜ
	* 注：基于 [link](https://zhuanlan.zhihu.com/p/22991320124)；2025-07-26 拆卡
* RL TRPO/PPO 的 off-policy 重要性采样，推导得表达式 `𝔼_old[∑ₜρA∇logπ_θ]` 用了什么近似{p2hg6f}
	> 要求：准确版本应等于 `𝔼_θ[∑ₜA∇logπ_θ]` 
	> 设定：ρ = π_θ(a|s) / π_{old}(a|s) 为 off-policy 重要性采样权重
	> （注）原策略梯度完整形式 `∇_θJ(θ) = 𝔼_θ[∑ₜγᵗA^π(sₜ,aₜ)∇_θlogπ_θ(aₜ|sₜ)]` ，这里省略了衰减因子
	* `Pr_θ(Sₜ=sₜ) ≈ Pr_old(Sₜ=sₜ)`，即认为 off-policy 程度轻微，不影响 Sₜ 分布
* RL GRPO 的动机是去掉 PPO 中的 [?1]，其功能通过 [?2] 方式代替（我的理解）{p2hn2z}
	* critic (value) model；它作为同规模的大模型要同步训练很费劲
	* （后续 token 的）reward 期望不再由 NN 预测，换成 empirical mean
		* 注：对样本除了减去均值，似乎还有方差归一化操作？
	* （无需回忆）原目的链：降低样本 reward 方差 ← 预测后续 token 期望 reward ← 引入 value model
* 多臂老虎机一般形式 S = [?1], A = [?2]{q11l3p}
	* S = ∏Sᵢ 为多个马氏链（注意不是 MDP）
	* A = {i} ∪ {∅}
	* [src](https://faculty.cc.gatech.edu/~ssingla7/courses/Spring22/lec16.pdf)
	* 注：对于非均匀硬币这一特殊情形，我理解中每个硬币的状态都是 (历史正面数,历史背面数)
		* 可参考 [link](https://www.zhihu.com/question/357807301/answer/1988988948022857994)
* Gittin's index δᵢ(s) 含义解释{q11l3r}
	> 设定：多臂老虎机
	* 若之后每次 play 收费 λ，λ 取多少时本次 play 与否的价值相等
* 多臂老虎机的最优策略{q11l3t}
	* 每次选 Gittin's index 最大的 i 来 play
* RL PPO/GRPO 中 KL 惩罚避免偏离参考模型，建议用估计器 [?1]（K1/K3）、放在 [?2]（reward/loss）里，好处 [?3]{q1al90}
	* K1 in reward（尽管主流开源实现是 K3 in loss）
	* 稳定、梯度估计无偏
	* [src](https://mp.weixin.qq.com/s/3GM-eb75m7XvT-42EMz64A)
* LLM RL 后训练适用 fp16、预训练才 bf16，我听说的理由{q4hf2d}
	* RL 时模型权重范围基本固定，防溢出不如预训练重要
	* 浮点运算低精度 导致结合律破坏严重，进一步导致训推不一致，不再真正 on-policy
		* 注：MoE 模型 on-policy 破坏尤其严重，浮点微小差异可能导致激活不同的专家
	* [src](https://zhuanlan.zhihu.com/p/2024520001596454677)
