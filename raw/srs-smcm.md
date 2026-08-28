x}# 统计模型与计算方法 张成 2022fall
	* [课程主页](https://zcrabbit.github.io/courses/smcm-f22.html)
## lect1 基础知识
* score 的定义；设数据 Y = {yᵢ}ᵢ，产生机理 yᵢ∼p(y|θ)（统计计算 lect1-p21）{n66d00}
	* s(θ) = ∂L/∂θ，其中对数似然 L(θ;Y) = ∑ᵢlog p(yᵢ|θ)
* score s(θ;Y) 关于 [?] 的期望为 0（统计计算 lect1-p21）{n66d01}
	* 数据 Y = {yᵢ}ᵢ
* Fisher information matrix（FIM）I(θ) 的定义（统计计算 lect1-p22）{n66d02}
	* 𝔼[ssᵀ]，即 score 的方差
* KL 散度的定义 KL(q‖p) = [?]（统计计算 lect1-p23）{n66d03}
	* KL(q‖p) = 𝔼_q[log(q/p)]
* KL 散度 KL(q‖p) = 𝔼_q[log(q/p)] 非负的证明（统计计算 lect1-p23）{n66d04}
	* -𝔼_q[log(p/q)] ≥ -log𝔼_q[p/q] = -log1（Jensen不等式）
* KL 散度 KL(q‖p) 作为 loss 时，要求 p,q 取值在 [?] 区域接近（统计计算 lect13-p7）{n6ge8p}
	* q 取值大的区域
* Fisher information matrix（FIM）与 KL 散度关系（统计计算 lect1-p23）{n66d05}
	* file:///home/yzh/oc-ptis/attached/n66f6t-FIMvsKL-SRS.png
	* （仅重读）注意是对后面那个变量求导；KL 散度定义中，不涉及后一项的期望
* FIM I(θ) = ∇²KL(q‖p)|.. 求导是对 q 还是 p [?1]，我的解读 [?2]（统计计算 lect1-p23）{pcng0l}
	* 对 p（后面那个变量）
	* KL 散度定义中不涉及 p 的期望
	* file:///home/yzh/oc-ptis/attached/n66f6t-FIMvsKL-SRS.png
## lect10 EM 算法
* EM 算法使用场景（统计计算 lect10-p2）{n66d06}
	* 概率模型 p(z|θ),p(x|z,θ)，观测到 x 数据（不知道相应隐变量 z），需推断模型参数 θ
	* 形如 max_θ log∑_z p(x,z|θ)
	* 注：例子如 GMM 混合高斯模型，HMM 隐 Markov 模型，LDA（latent Dirichlet allocation）
	* 注：该场景比 EM 更 naive 的方法是直接梯度上升
* EM 算法整体思路（统计计算 lect10-p6）{n66d07}
	* 自行补全未观测到的隐变量 z
	* 具体地，根据当前 θ 补全一次 z（E 步），根据补全的 z 更新 θ（M 步），交替迭代
* EM 算法，E 步的第一步（统计计算 lect10-p7）{n66d08}
	* 计算当前 z 分布 p(z|x,θₜ)，从而得到（补全后的）完整观测数据 (x,z)
	* 注：对无精确表达式的情形，((n9uf4c))有 Monte Carlo EM、variational EM 两种处理办法
* EM 算法，E 步的第二步（统计计算 lect10-p7）{n66d09}
	* 计算对数似然 Qᵗ(θ) = 𝔼_z log p(x,z|θ)
	* 这里 𝔼_z 所用 z 分布由第一步给出（用 θₜ）
	* 注：lect11-p4 记号 Qᵗ(θ) = Q(θ|θₜ)，可视为真实对数似然 L(θ) = Q(θ|θ) 的某种“局部近似”
	* 注：这里计算结果为函数（而非数），相当于“构建计算图”，或化简符号表达式
* EM 算法的 M 步（统计计算 lect10-p7）{n66d0a}
	* 更新当前估计参数 θₜ₊₁ = argmax Qᵗ(θ)（在 E 步求出当前近似对数似然）
* EM 算法理解：为最大化对数似然 L(θ) = log p(x|θ)，考察其下界 free-energy F(q,θ) = [?] ≤ L(θ)（统计计算 lect10，p8-11）{n66d0b}
	* F(q,θ) = L(θ) - KL(q(z)‖p(z|x,θ))；注意 q 在前
	* 注：注意这里 q 为概率分布，而不是实数
	* 相关：((n6ge32))Bayesian EM 涉及的为 F(q(z,θ))
	* 相关：lect13-p9 若固定 θ、将 z 视为待估计的参数，则 F(q,θ) 即为 ELBO
* EM 算法理解：从 free-energy F(q,θ) 来看，E、M 步分别在（统计计算 lect10，p9）{n66d0c}
	* E 步：给定 θ 极大化 q；M 步：给定 q 极大化 θ
	* 注：一个推论，EM 算法所得 L(θₜ) 单调上升
* EM 算法用于最大后验（MAP）时，需要做的修改（统计计算 lect11，p13）{n66d0d}
	* M 步改为最大化 Q(θ|θₜ) + R(θ)，其中 R(θ) 为先验对应的惩罚项
	* 相关：((n6ge32))Bayesian 情形，要给出 θ 完整后验分布而非其最大值点
* EM 算法，E 步的第二步为计算对数似然 Qᵗ(θ) = 𝔼_z[?]，选项：A. p(x|z,θ)，B. p(x,z|θ)，C. log p(x|z,θ)，D. log p(x,z|θ)（统计计算 lect10-p7）{n9uf4a}
	* log p(x,z|θ)
	* 即：有 log，求完整分布似然（而非只根据当前 z 求 x 似然）
* EM 算法，E 步的第二步为计算对数似然 Qᵗ(θ) = 𝔼_z[?]，选项：A. log p(x,z|θ)，B. p(x,z|θ)，C. log p(x|z,θ)，D. p(x|z,θ)（统计计算 lect10-p7）{n9uf4a0}
	* log p(x,z|θ)
	* 即：有 log，求完整分布似然（而非只根据当前 z 求 x 似然）
	* 注：该抽认卡为添加不同排序的同问题，以防止大脑自动模式匹配式记忆，该建议见于 [link](https://wiki.issarice.com/wiki/Add_all_permutations_of_a_card_to_prevent_pattern-matching)
* EM 算法，E 步的第一步为计算 p(z|x,θₜ)。若无解析表达式，我所知道的两种处理方式为（统计计算）{n9uf4c}
	* Monte Carlo EM 采样 zᵢ，样本量 m 可随迭代步数 t 增长，见 lect11-p14
	* ((n6ba9r))variational EM 使用 ansatz q(z)
* 生存分析中 censored survival time 问题，部分样本当前仍存活（故总寿命未知）；若设群体生存时间分布为 Tⱼ ~ Exp(μ)，对 μ 极大似然估计可用的算法{n9uf4e}
	* EM 算法（统计计算 lect10-p15）
* variational EM 算法的使用场景（统计计算 lect12-p3）{n6ba9r}
	* p(z|x,θ) 无法精确求出，尝试用 ansatz q(z) 给出近似
* variational EM 算法，E 步的第一步（统计计算 lect12-p3）{n6ba9s}
	* 对((n66d0c)) F(q,θ)，给定 θ 极大化 q(z)，该极大在给定 ansatz 范围内求（若在全体可能分布中求则为普通 EM）
	* 等价的说法：min_q KL(q(z)‖p(z|x,θ))；注意 q 在前
* mean-field variational EM 算法，“mean-field”含义（统计计算 lect12-p3）{n6ba9t}
	* 使用 ansatz q(z) = ∏qᵢ(zᵢ)
	* 相关：((q67m72))VAE 再特殊化为 = qᵩ(zᵢ|xᵢ)
* variational Bayesian EM 算法中的 free-energy F(q) = [?] ≤ L(x)（统计计算 lect12，p6）{n6ge32}
	* F(q(z,θ)) = L(x) - KL(q(z,θ)‖p(z,θ|x)
	* 注：L(x) = 𝔼_θ[L(θ;x)]，L(θ;x) 为原始 EM 中优化目标
	* 注：p7 mean-field 版本 q(z,θ) = q(z)q(θ)，从而有交替优化格式
	* 注：原始 EM 版本((n66d0b))中 q 只刻画 z 分布；另有((n66d0d))只求后验分布最大值点（而非完整后验分布）
## lect13 变分推断
* 变分推断的整体框架（统计计算 lect13，p3）{n6ge7x}
	* 为估计后验分布 p(θ|x)，推断问题改为优化问题，极小化 KL(q(θ)‖p(θ|x))（在预设分布族中找 q(θ)）
* 变分推断中，简单地使用 KL 散度可能造成问题，例子（统计计算 lect15，p3）{n6nl3e}
	* file:///home/yzh/oc-ptis/attached/n6nl39-VI-failure-KL-SRS.png
* 仅重读：变分推断中所用 KL 散度的推广：p5 f-散度（log 换为一般 f），p7 Amari's α-散度，p8 Renyi's α-散度（统计计算 lect15）{n6nk7r}
	* 注：后面还有 ((n6nl6m))SVGD 中用的 Stein discrepancy
* SVGD 中涉及 Stein operator Aₚ，其中使用的记号 sₚ(x) = [?]（统计计算 lect15，p23）{n6nl3v}
	* score sₚ(x) = ∇ₓlog p(x)；注意允许 p(x) 未归一化
	* 注：原来的 score((n66d00)) 对数后是似然 p(Y|θ) 而非概率密度 p(θ)
* SVGD 中涉及的 Stein operator Aₚ 的定义（统计计算 lect15，p23）{n6nl3w}
	* (Aₚf)(x) = sₚ(x)ᵀf(x) + ∇ₓ·f(x)
	* 注意是 + 号，这样分部积分后能出现 (sₚ - s_q)
* SVGD 中涉及刻画二概率分布相等方式：p = q ⇔ [?]，用 Stein operator Aₚ 表示（统计计算 lect15，p23）{n6nl4q}
	* p = q ⇔ 𝔼_{x∼q}[Aₚf(x)] = 0，∀f ∈ F
	* 相关：((n75k7e))用 Stein's identity 容易证明（取 f(x) = sₚ(x) - s_q(x)）
* SVGD 中涉及刻画二概率分布相等方式：p = q ⇔ 𝔼_{x∼q}[Aₚf(x)] = 0，∀f∈ F ；证明思路（统计计算 lect15，p23）{n75k7e}
	* 用 Stein's identity 𝔼_{x∼q}[Aₚf(x)] = 𝔼_{x∼q}[(sₚ(x) - s_q(x))ᵀf(x)]
	* 其中取 f(x) = sₚ(x) - s_q(x)
* SVGD 中涉及的 Stein's identity 𝔼_{x∼q}[Aₚf(x)] = [?]（统计计算 lect15，p24）{n6nl5s}
	* 𝔼_{x∼q}[Aₚf(x)] = 𝔼_{x∼q}[(sₚ(x) - s_q(x))ᵀf(x)]
	* 注：由分部积分易得
* SVGD 中涉及的 Stein discrepancy D(q‖p) = [?]（统计计算 lect15，p25）{n6nl6m}
	* D(q‖p) = max_{f∈F}𝔼_{x∼q}[Aₚf(x)]
	* 注：依赖于函数类 F 选取
	* 注：或许要求 ‖f‖ ≤ 1？否则作为 f 的线性函数无界
* 对 RKHS，Mercer 定理保证了存在谱分解 k(x,y) = [?]（统计计算 lect15，p26）{n6of5v}
	* k(x,y) = ∑ᵢλᵢeᵢ(x)eᵢ(y)
	* 注：来自泛函中关于紧算子的 spectral theorem，见((n6of7y))
* RKHS kernel k(x,y) = ∑ᵢλᵢeᵢ(x)eᵢ(y) 给出了 Hilbert 空间同构 H → ℓ²(I), ∑ᵢaᵢeᵢ(x) ↦ [?]（统计计算 lect15，p26）{n6of6j}
	* ∑ᵢaᵢeᵢ(x) ↦ (aᵢ/√λᵢ)
	* 注：((n6of6k))用内积表示的等价形式
* RKHS kernel k(x,y) = ∑ᵢλᵢeᵢ(x)eᵢ(y) 给出的 RKHS 上内积表达式 ⟨f,g⟩ = [?]，设 f(x) = ∑ᵢaᵢeᵢ(x)（统计计算 lect15，p26）{n6of6k}
	* ⟨f,g⟩ = ∑ᵢaᵢbᵢ/λᵢ
	* 注：等价形式，((n6of6j))Hilbert 空间同构
* RKHS 的再生性质：⟨f,k(·,x)⟩ = [?]，特别地 ⟨k(·,x),k(·,y)⟩ = [?]（统计计算 lect15，p26）{n6of7l}
	* ⟨f,k(·,x)⟩ = f(x)
	* ⟨k(·,x),k(·,y)⟩ = k(x,y)
* # 备用：关于 RKHS 的知乎介绍{n6of7y}
	* [link](https://zhuanlan.zhihu.com/p/352966538)
* SVGD 中涉及的 kernelized Stein discrepancy KSD(q‖p) = [?]，其中 δ_{pq} = [?]（统计计算 lect15，p27）{n6of8v}
	* KSD(q‖p) = √{𝔼_{x,y∼q}[δ_{pq}(x)ᵀk(x,y)δ_{pq}(y)]}
	* δ_{pq}(x) = sₚ(x) - s_q(x)
