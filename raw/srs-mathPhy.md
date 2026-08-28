x}# 数学、物理等相关内容
	* x
* 数值 PDE：Galerkin 与 Petrov-Galerkin 的区别{n99g48}
	* 前者 trial space = test space，后者 ≠
* 组合计数：n 元素，「有放回」抽样 k 次，「不考虑」抽出结果先后顺序，可能性总数（无放回版本即 Cₙᵏ）{n9lg30}
	* Cₙ₊ₖ₋₁ᵏ
* 组合计数：n 元素，「有放回」抽样 k 次，「不考虑」抽出结果先后顺序，可能性总数的计算方法{n9lg32}
	* 即 1 ≤ a₁ ≤ ⋯ ≤ aₖ ≤ n 的整数序列可能性总数
	* 变换 b₁ = a₁，b₂ = a₂ + 1，…，bₖ = aₖ + k-1，
	* 即 `1 ≤ b₁ < ⋯ < bₖ ≤ n + k - 1` 的整数序列可能性总数（普通组合数）
* 组合计数：Cₙᵏ⁻¹ + Cₙᵏ = [?]{na7b6f}
	* Cₙᵏ⁻¹ + Cₙᵏ = Cₙ₊₁ᵏ
* 组合计数：Cₙ⁰ + Cₙ₊₁¹ + ⋯ + Cₙ₊ₖᵏ = [?]{na7b6k}
	* Cₙ⁰ + Cₙ₊₁¹ + ⋯ + Cₙ₊ₖᵏ = Cₙ₊ₖ₊₁ᵏ
	* 注：对 k 归纳，利用((na7b6f))易证
* 组合数大小估计：Cₙ⁰ + Cₙ¹ + ⋯ + Cₙᵐ ≤ (en/m)ᵐ 证明思路（HDP p4）{o5um3d}
	* 把 (n/m)ᵐ 乘到左侧
	* 逐项放缩为 (m/n)ᵏ，用二项式定理
* 椭圆积分 ∫₀^{π/2} dθ/√{a²cos²θ + b²sin²θ} 用 代数-几何平均 化归的推导，第一步的变量代换（使成为「无穷」积分）{nbch10}
	* t = b tanθ
	* [src](https://handwiki.org/wiki/Landen%27s_transformation)
* 椭圆积分 ∫₀^{π/2} dθ/√{a²cos²θ + b²sin²θ} 用 代数-几何平均 化归的推导，第一步变量代换后所得的「无穷」积分{nbch12}
	* ∫₀^{+∞} dt/√{(t² + a²)(t² + b²)}
	* 注意分母 t² 有平方
* 椭圆积分的 Gauss-Landen 变换，对 ∫₀^{+∞} dt/√{(t² + a²)(t² + b²)} 使用的变量代换{nbch14}
	* s = (t - ab / t) / 2
	* s 取值范围从 -∞ 到 +∞
* 椭圆积分的 Gauss-Landen 变换，对 ∫₀^{+∞} dt/√{(t² + a²)(t² + b²)} 换元为 s 后，为化简所得表达式，需计算 [?]{nbch16}
	* 目标表达式中的 s² + ab, s² + ((a + b)/2)²
* 椭圆积分的 Gauss-Landen 变换，对 ∫₀^{+∞} dt/√{(t² + a²)(t² + b²)} 换元为 s 后，计算 s² + ab, s² + ((a + b)/2)² 时会注意到什么{nbch16a}
	* 二者用 t 表示后均可因式分解
* 椭圆积分 ∫₀^{π/2} dθ/√{a²cos²θ + b²sin²θ}，高斯当时使用的换元{nbch18}
	* sinθ = 2a sinφ/((a+b) + (a-b)sin²φ)
	* 注意 1. θ 在左边（这样方便之后算 sinθ, sinθdθ），2. sin²φ 在 (a-b) 后（其幅值小于常数项 (a+b)）
* 椭圆积分 ∫₀^{π/2} dθ/√{a²cos²θ + b²sin²θ}，用高斯当时使用的换元后，下一步要计算的三个东西{nbch1a}
	* cosθ dθ = d(sinθ)
	* cosθ = √{1 - sin²θ}
	* √{a²cos²θ + b²sin²θ}
* 椭圆积分 ∫₀^{π/2} dθ/√{a²cos²θ + b²sin²θ} 用高斯当时使用的换元计算，其中算 cosθ 时会发现什么（三点）{nbch1c}
	* 分子 √{…} 内部可因式分解
	* 分解的其中一个根式为 √{1 - sin²φ} = cosφ
	* 分解的另一个根式可改写为 √{(a+b)²cos²φ + 4ab sin²φ}，为目标表达式中的因子
* （重读即可）椭圆积分 ∫₀^{π/2} dθ/√{a²cos²θ + b²sin²θ} 用高斯当时使用的换元计算，其中算 √{a²cos²θ + b²sin²θ} 时会发现什么{nbch1e}
	* 结果为关于 φ 的三角有理式，不再有根号
* Kolmogorov-Arnold 表示定理大意：n 元函数可表达为一元函数组合，使其中唯一涉及的多元运算是{o57990}
	* 求和
	* 信源：刘子鸣 KAN 论文
* Kolmogorov-Arnold 表示定理：n 元函数可表达为一元函数组合，符号是 = 还是 ≈{o57991}
	* 严格等号 =
* Kolmogorov-Arnold 表示定理，若拟合 n 自变量的「光滑」函数 f: [0,1]ⁿ → ℝ，需要的中间层宽度为{o57992}
	* 2n + 1
* 对 f: [0,1]ⁿ → ℝ，Kolmogorov-Arnold 表示定理的大致形式（无需回忆求和具体范围），及其图形化表示{o57993}
	* f(x₁,…,xₙ) = ∑hⱼ(∑gⱼᵢ(xᵢ))，∃hⱼ: ℝ → ℝ, gⱼᵢ: [0,1] → ℝ 连续
	* file:///home/yzh/oc-ptis/attached/o57a37-Kolmogorov-Arnold-rep-thm-SRS.webp
* ∫₀¹exp(-x²)dx 用泰勒展开近似计算，截断误差估计，我知道有哪两种思路{o5jb60}
	* 1. 泰勒公式余项，2. 泰勒级数为交错级数，截断余项小于末项绝对值
* 余元公式 B(x, 1 - x) = [?]{o6gg6k}
	* B(x, 1 - x) = π / sin(πx)
* Rudin 实复分析，Fourier 基底在 L²(S¹) 完备，证明先转化到哪个函数空间{o6sj20}
	* 注意到 C(S¹) → L²(S¹) 连续、像稠密
	* 只需证三角多项式在 C(S¹) 中稠密
* Rudin 实复分析，Fourier 基底在 L²(S¹) 完备的证明过程，如何证明三角多项式在 C(S¹) 中稠密{o6sj22}
	* 构造性证明：对 ∀f ∈ C(S¹)，f(x) Fourier 级数的 Cesàro 求和（对应 Fejér 核）在 C(S¹) 中收敛到 f(x)
* 级数 Cesàro 求和的定义（Fourier 级数 Fejér 核涉及）{o6tb10}
	* aₙ, Sₙ = ∑ⁿaᵢ, σₙ = ⊕ⁿSᵢ
* 级数 aₙ 常规求和 Sₙ = ∑ⁿaᵢ，而 σₙ = ⊕ⁿSᵢ 被称为 [?] 求和{o6tb12}
	* Cesàro 求和
* 卷积 f * Δₙ → f ∈ C(ℝ) （紧开拓扑）常涉及所谓（正）核函数 Δₙ → δ，其定义要求 Δₙ(x) 可视为随机变量 Xₙ 的 pdf，且 Xₙ → 0 依 [?] 收敛（谢惠民第二版下册 p120）{o6tb14}
	* Xₙ → 0 依概率收敛
	* 即：`∀ε > 0, lim Pr(|Xₙ| < ε) = 1`
* 连续函数可用多项式、三角多项式逼近，可通过构造（正）核函数 Δₙ → δ 给出证明，其基本思路（谢惠民第二版下册 p120）{o6tb16}
	* 卷积 f *Δₙ → f ∈ C(ℝ) （紧开拓扑）
	* 只需构造 Δₙ 使 f * Δₙ 为多项式、三角多项式
	* （无需回忆）后者可用 Fejér 核
* Weirstrass 定理（ℝ[x] ⊂ C([0,1]) 稠密）的 Bernstein 证明构造了 Bₙ(f)(x) = ∑ₖf(k/n)Cₙᵏxᵏ(1-x)ⁿ⁻ᵏ，我如何理解其概率含义（谢惠民第二版下册 p120+）{o6tb18}
	* Bₙ(f)(x) = 𝔼f(Xₙ(x))
	* 其中 Xₙ(x) 定义：n 个 Ber(x) 变量的 empirical mean
		* 即：Yₖ(x) ∼ Ber(x)，Xₙ(x) = ⊕Yₖ
	* Xₙ(x) → x 由大数定律保证
* Stone-Weierstrass 定理条件，要求 A 有什么代数结构（ℝ、ℂ 分别讨论）{q28f1b}
	> 定理大意：C(X) 的子代数 A 稠密
	* 𝖠𝗅𝗀 = 𝖱𝗇𝗀 ∩ ℝ-Vec
	* 即：数乘，加法，乘法
	* ℂ 还要求对共轭封闭
	* [src](https://personal.math.ubc.ca/~cass/research/pdf/Stone.pdf)（尽管其叙述中对代数结构的要求略高一些）
* Stone-Weierstrass 定理条件，要求 A 存在哪些元素（A 的分析性质）{q28f1d}
	> 定理大意：C(X) 的子代数 A 稠密
	* nowhere vanishing (∀x ∈ X, ∃ f ∈ A, s.t. f(x) ≠ 0)
	* separate points (∀x ≠ y ∈ X, ∃ f ∈ A, s.t. f(x) ≠ f(y))
* Stone-Weierstrass 定理证明，f,g ∈ A 时为证 max(f,g) ∈ `\bar{A}`，只需证什么{q28f1f}
	> 定理大意：C(X) 的子代数 A 稠密
	* 只需证 |f| ∈ `\bar{A}`
* Stone-Weierstrass 定理证明，f ∈ A 时如何证 |f| ∈ `\bar{A}`{q28f1g}
	> 定理大意：C(X) 的子代数 A 稠密
	* |f| ≈ ∑cₖfᵏ（利用 C([a,b]) 的 Weierstrass 定理）
* Stone-Weierstrass 定理证明，f,g ∈ A 如何证明 max(f,g) ∈ `\bar{A}`{q28f1g}
	> 定理大意：C(X) 的子代数 A 稠密
	* 只需证 |f| ∈ `\bar{A}`
	* |f| ≈ ∑cₖfᵏ（利用 C([a,b]) 的 Weierstrass 定理）
* Stone-Weierstrass 定理证明，如何找 f(x) = 0, f(y) = 1{q28f1h}
	> 要求：∀x ≠ y ∈ X, ∃ f ∈ A
	> 定理大意：C(X) 的子代数 A 稠密
	* 基于 (g - g(x))h
	* 其中 g(x) ≠ g(y), h(y) ≠ 0
	* 注：不保证常数函数 g(x) ∈ A，但作为数乘的 scalar 作用于 h 是可以的
* Stone-Weierstrass 定理证明，f ∈ C(X) 在 `\bar{A}` 中近似函数构造所用基本元素 [?1]，组合方式 [?2]{q28f1j}
	> 定理大意：C(X) 的子代数 A 稠密
	* ∀x ∈ X, 构造 gₓ ∈ `\bar{A}` 满足 gₓ(x) = f(x), gₓ > f - ε
	* 取邻域 Uₓ 满足 `gₓ < f + ε`
	* 取 X 的有限覆盖 xᵢ，g = min(gᵢ)
* Stone-Weierstrass 定理证明，如何构造 g 满足 g(x) = f(x), g > f - ε{q28f1l}
	> 完整设定：∀f ∈ C(X), x ∈ X, 证明存在 g ∈ `\bar{A}` 满足条件
	> 定理大意：C(X) 的子代数 A 稠密
	* ∀p ∈ X, 构造 hₚ ∈ A 满足 hₚ(x) = f(x), hₚ(p) = f(p)
	* 取邻域 Uₚ 满足 hₚ > f - ε
	* 取 X 的有限覆盖 pᵢ，g = max(hᵢ)
* 据说高能物理研究更重视 Lagrangian，凝聚态研究更重视 Hamiltonian，是因为前者擅长处理 [?1]（整体/局部）效应，后者擅长 [?2]{o89k1c}
	* Lagrangian 擅长整体，Hamiltonian 擅长局部
	* [src](https://www.zhihu.com/question/414251206)
	* 其他（无需回忆）：Lagrangian 比 Hamiltonian 更容易满足相对论协变性；
	* 其他（无需回忆）：“拉氏量和哈密顿量并不总是一一对应的，只有勒让德变换不奇异的体系才能看出拉氏量和哈密顿量完全等同”
* 设 R ∈ 𝖱𝗇𝗀，我理解的 M ∈ R-𝖬𝗈𝖽 模结构的定义 [?1]、R-𝖬𝗈𝖽(M,N) 的定义 [?2]{o8vg7h}
	* ρ_M ∈ 𝖱𝗇𝗀(R,𝖠𝖻𝖾𝗅(M))
	* { f ∈ 𝖠𝖻𝖾𝗅(M,N) | ∀r ∈ R 有交换图 ρ_N(r)∘f = f∘ρ_M(r) }
		* 相关：交换图与((o8c99t))映射在群作用下等变 相近，但这里暂时没有范畴论解读
* 复合函数 f(g(x)) 高阶导数的计算公式，「名称」为{ocia32}
	> 来源：论文 Taylor-Mode Automatic Differentiation for Higher-Order Derivatives in JAX
	* Faà di Bruno's formula
* 复合函数 f(g(x)) 高阶导数的计算公式，大致「形式」为{ocia34}
	* file:///home/yzh/oc-ptis/attached/ocia3p-FaaDiBrunoFormula-SRS.pdf
	* 要点：系数，f 高阶导，g 各阶导幂次的乘积
	* 其中 ∑jkⱼ = n（对应集合 [n] 拆分为子集之并的方式）
	* 注：用 Taylor 多项式不难推导
* 复合函数 fₘ∘·∘f₂∘f₁(x) 高阶导数的 Taylor-mode 自动微分（AD）计算，其计算图大致形式{ocia36}
	> 来源：STDE-2412.00088 fig2
	* file:///home/yzh/oc-ptis/attached/ocia3r-ComposFnHighOrdAD-SRS.pdf
	* 注意依赖方向，后层的 k 阶导只依赖于前层的 ≤ k 阶导
	* 注：输入处相当于指定了 x(t) = x + v⁽¹⁾t + (1/2)v⁽²⁾t² + …，不是只指定切线方向 v⁽¹⁾
* 复合函数 fₘ∘·∘f₂∘f₁(x) 高阶导数的自动微分（AD）计算，Taylor-mode 比递归调用一阶 AD 快，我的理解包含哪两方面{ocia38}
	* 求和项复用：大量合并同类项，避免重复计算，只需额外算系数即可
	* 乘积项复用：中间层 k 阶导结果可复用
		* (1) -1 层的 n 阶导计算用到 -2 层的 1,2,..,n 阶导
		* (2) -2 层的 k 阶导用到 -3 层的 1,2,..,k 阶导（`k < n`）
		* (3) 这些信息在计算 -2 层的 n 阶导时可复用
* 高阶自动微分：混合偏导 u₁₂(r) 可利用高阶 jet 一次性计算得到，其大意为{ocie80}
	> （注）DL 框架中 jet 高阶导数前向自动微分，而不递归调用一阶自动微分
	> （注）来源：STDE-2412.00088 eqn(66)
	* 计算 ∂ₜ⁵u(r + e₁t² + e₂t³) ；因为 5 = 2 + 3 分解唯一
* 高阶自动微分：tr(σ Hess(u)σᵀ) 如何利用高阶 jet 计算得到{ocie82}
	> 来源：STDE-2412.00088 eqn(19)
	* tr(σ Hess(u)σᵀ)|ᵣ = ∑ᵢ∂ₜ²u(r + σeᵢt + 0t²)
	* 注：我的理解中 ∂ᵢ 和 eᵢ 都是切向量，因此都是直接乘 σ，无需求逆
* 高阶自动微分：Δ²u(r) 如何利用高阶 jet 估计，包括系数{ocie84}
	> 来源：STDE-2412.00088 eqn(87)
	* Δ²u(r) = (1/3)𝔼[∂ₜ⁴u(r + vt + 0t² + …)]，v ∼ N(0,I_d)
	* 注：若系数回忆困难，可考虑不再要求回忆系数
* 高阶自动微分：Δ²u(r) 用高阶 jet 估计，确定系数使用的原理（我的理解）{p2ng3e}
	> 设定：相应估计公式 `Δ²u(0) = α𝔼[∂ₜ⁴u(vt)]，v ∼ N(0, I_d)`，系数 α
	> 来源：基于 STDE-2412.00088 eqn(87)
	* 要求两端 ∂₁⁴u 系数相等（由 LHS 为 1）
	* （以下无需回忆，2025-07-25）
	* 𝔼[…] 中 ∂₁⁴u 项系数为 𝔼[v₁⁴] （只涉及 v 的第一个分量 v₁ ~ N(0,1)）
	* 正态分布峰度 𝔼[v₁⁴] = 3，故 α = 1/3
* vⁱ(∂ᵢu)、(vⁱ∂ᵢ)u 哪个为 FP 计算方式，哪个为 BP，对应的一般判断原则{p3jm7t}
	> 背景：v·∇u 自动微分计算，我的理解方式
	> 设定：v ∈ ℝⁿ, u: ℝⁿ → ℝ
	* BP ∂ᵢ(scalar)
	* FP (vⁱ∂ᵢ)(vector)
* vᵀHess(u)v，vᵀHess(u)w，vᵀ(∇s)w 用自动微分计算方式，按我的理解画的关系图{p3kb3g}
	> 设定：v,w ∈ ℝⁿ, u:ℝⁿ → ℝ
	* file:///home/yzh/oc-ptis/attached/p3kb24-autograd-vec-prod-SRS.xoj
	* 相关主笔记((n8jk4p))求高阶导
* Riemann-Liouville fractional integral Jᵅ 定义思路，如何从普通积分得出{p49a8j}
	> 来源：2503.16666
	* 考察变上限积分算子 J = ∫₀ˣ
	* 计算 Jⁿ（用分部积分）
	* 表达式推广 Jᵅ（涉及 Γ 函数）
	* 注：理论上也有用 Fourier transform 定义的版本，未确认
* Riemann-Liouville fractional integral Jᵅf(x) = [?]，基于 J¹f(x) = ∫₀ˣf(t)dt{p49a8l}
	> 设定：只考虑 left-sided 版本，即 `x > 0` 情形
	> 来源：2503.16666
	* Jᵅf(x) = (1/Γ(α))∫₀ˣ(x-t)ᵅ⁻¹f(t)dt
	* 注：注意 (x-t) 的指数 α - 1 ∈ (-1,+∞)
* fractional derivative 定义，Riemann-Liouville、Caputo 版本分别的思路{p49a8n}
	> 来源：2503.16666
	* 均利用 (1) Riemann-Liouville fractional integral Jᵅ (α ∈ (0,1))、(2) 普通整数阶导数
	* 前者先积再导，后者先导再积
	* （评）后者名称短，可微函数类更小（对函数可微性要求更高）
* Nichomauss 定理：1³ + 2³ + … + n³ = [?]{p2nb5g}
	* 1³ + 2³ + … + n³ = (1 + 2 + … + n)²
	* 注：归纳易证
* ∑rⁿ = 1/(1 - r) 我看到的几何直观解释{p2nb5i}
	* https://mmbiz.qpic.cn/sz_mmbiz_png/OcoXtkaqYr1QZvCBaaH633IicRqSK51ux6ibZUVKrnONAcicnPkaa2Kta0TqB1GjhkDKICMicXibZicTl7TibwS36tqiag/640
	* 利用相似三角形
* 勾股定理，我看到的几何直观解释{p2nb5k}
	* https://mmbiz.qpic.cn/sz_mmbiz_png/OcoXtkaqYr1QZvCBaaH633IicRqSK51ux3BACibib0xwwxKcvtWBEictVntYQJ3vfmok8s2waWnJjB1ZROjWDicFiahg/640
	* https://mmbiz.qpic.cn/sz_mmbiz_png/OcoXtkaqYr1QZvCBaaH633IicRqSK51uxlkkMPClribBqficaiak35pczqpUUUyjqb2JS3vMibqibukvQHGVibYOLMxqQ/640
	* [src](https://mp.weixin.qq.com/s/hPL38JC0YS8EvnrJavP42Q)
* δ₂₆ₙ(K) ≤ 3ϵₙ(K) 证明中 E,D 选取方式分别为{p2oh0i}
	> 背景：逼近论，manifold width 被 entropy number 控制
	> 来源：[DeVore]-2009.09907
	* 设 ϵₙ(K) 对应点集 Kₙ = {x₁,…,x_{2ⁿ}} ⊂ K
	* E: 近似保距投影，根据 Johnson-Lindenstrauss 引理
	* D: Lipschitz 延拓（从 E(xᵢ) ↦ xᵢ 延拓为 ℝ²⁶ⁿ → H），根据 Kirszbraun 扩张定理
* # （无需记忆）基本群 π₁(Sⁿ) = 0 证明主要思路 [?1]，难点在于 [?2]（n ≥ 2）{p57n40}
	> 来源：Hatcher 代数拓扑 p35 prop1.14
	* 设环路 f 不经过 x，利用 π₁(Sⁿ - {x}) = π₁(ℝⁿ) = 0
	* f 为 space-filling curve，导致不存在这样的 x
* space-filling curve f: S¹ → Sⁿ 到常值映射的同伦，构造分哪两步{p57n42}
	> 背景：证明基本群 π₁(Sⁿ) = 0，n ≥ 2
	> 来源：Hatcher 代数拓扑 p35 prop1.14
	* 同伦微调：取 x ∈ Sⁿ，将所有经过 x 的小段通过同伦移动绕过 x
	* 利用 π₁(Sⁿ - {x}) = π₁(ℝⁿ) = 0 同伦收缩为常值映射
* space-filling curve f: S¹ → Sⁿ 可通过同伦微调绕过特定点 x ∈ Sⁿ，方式描述 [?1]、可行原因 [?2]{p57n44}
	> 背景：证明基本群 π₁(Sⁿ) = 0，n ≥ 2
	> 来源：Hatcher 代数拓扑 p35 prop1.14
	* 考虑含 x 的小圆盘 B，对所有经过 x 的小段考虑延长为留在 B 内的最长段，该段可同伦移动到 B 边界上
	* 该最长段的总数有限（即使经过 x 次数无限），因有限覆盖定理；对有限段可逐段选同伦移动到 B 边界的方式
* 布尔逻辑，p ⇒ q 用 ¬,∧,∨ 表示为{p7kh9c}
	* ¬p ∨ q
* 紧致度量空间必可分，证明大意{q28f8k}
	> 即：存在可数稠密子集
	> 推论：度量空间若可拆成可数个紧致子集的并，则可分
	* 半径为 2⁻ⁿ 的开覆盖有有限覆盖，取其中心点，令 n → ∞
* Arzelà-Ascoli 引理证明思路{q28f8m}
	> 表述：X 紧度量空间，F ⊂ C(X) 等度连续、逐点有界，证任意序列 {fᵢ} 有收敛子列
	* 对角线法：取 X 稠密点列 xⱼ，不断筛选 {fᵢ} 子列使 fᵢ(x₁),fᵢ(x₂),.. 收敛
	* [src](https://web.stanford.edu/class/stats300b/Notes/arzela-ascoli.pdf)
		* 注：原文还证了逆定理，即条件充要
* 拓扑空间 locally compact 的定义{q28g4j}
	* ∀x ∈ X, ∃U open, K compact s.t. x ∈ U ⊂ K
	* [src](http://staff.ustc.edu.cn/~wangzuoq/Courses/20S-Topology/Notes/Lec11.pdf)，def2.2
* 复合映射 ∘: C(X,Y) × C(Y,Z) → C(X,Z) 连续的条件（我所知道的）{q28g4l}
	> 设定：各 C(X,Y) = 𝖳𝗈𝗉(X,Y) 赋予紧开拓扑
	* Y locally compact + Hausdorff（简写 LCH）
	* [src](http://staff.ustc.edu.cn/~wangzuoq/Courses/20S-Topology/Notes/Lec14.pdf) prop1.6
* 取值映射 ev: X × C(X,Y) → Y, (x,f) ↦ f(x) 连续，证明思路{q28g4n}
	> 设定：C(X,Y) = 𝖳𝗈𝗉(X,Y) 赋予紧开拓扑，Y locally compact Hausdorff
	* X = C({p},X)，利用复合映射连续性
* F ⊂ C(X,Y) 等度连续的定义{q28g4p}
	> 设定：X ∈ 𝖳𝗈𝗉，(Y,d) 为度量空间
	* ∀ε > 0,x ∈ X, ∃U ∋ x, ∀y ∈ u, f ∈ F, `d(f(x),f(y)) < ε`
* Erdős 证 ∑1/p = ∞，“小/大素数”区分方式{q2ih60}
	* 大素数倒数和 `< 1/2`
	* [src](https://www.zhihu.com/question/596292478/answer/99017507850)
* Erdős 证 ∑1/p = ∞，[N] 中「含」大素数因子的元素总数如何估计{q2ih62}
	* p 倍数个数不超过 N/p
	* 对所有大素数求和，结果 `< N/2`
* Erdős 证 ∑1/p = ∞，[N] 中「不含」大素数因子的元素总数如何估计{q2ih64}
	* 回忆 ab² & 2ᴷ√N 即可
	* n = ab²，a 无平方因子
	* a 可能性总数 2ᴷ（K 为小素数个数）
	* b 可能性总数 `< √N`
	* 注：N 充分大时总可能性 `< N/2`
* 所有初等函数可由二元运算 eml(x,y) = [?] 和 1 生成{q4fl88}
	* eml(x,y) = exp(x) - ln(y)
	* [src](https://zhuanlan.zhihu.com/p/2027413995775082871)
* 数理逻辑 ⊢，⊨，→ 符号含义{q71j07}
	* ⊢：语法蕴含，可证明（元语言）
	* ⊨：语义蕴含，必成立（元语言）
	* →：蕴含连接词，P→ Q 是命题，相当于 ¬P∧ Q（对象语言）
* 连续动力学算子分裂，Lie-Trotter、Strang 格式分别为 [?1]，阶数 [?2]；二格式在什么意义下类似 [?3]{q7b783}
	> 系统形式：yₜ = (A+B)y
	* Lie-Trotter：y₊ = exp(At)exp(Bt)y，一阶
	* Strang：y₊ = exp(At/2)exp(Bt)exp(At/2)y，二阶
	* Strang 连续演化多步时，可合并两个 exp(At/2)，从而只有首末时间步涉及原始的 exp(At/2)
* dₙ,ₚ^⊗(S;V) 定义（拓展了 Kolmogorov n-width）{q7li4h}
	* 原 Kolmogorov n-width 试验流形为 Im(Γ), Γ: ℝⁿ → V 线性
	* 现在换为 Γ: ℝⁿ → ℝᵗ⁽ⁿ'ᵖ⁾ → V，前一映射求出所有 deg ≤ p 的无系数单项式，t(n,p) = ∑ₖ₌₀ᵖCⁿₙ₊ₖ₋₁
	* 或：Γ: x ↦ ∑ᵢxᵢvᵢ 换为 Γ: x ↦ ∑ⱼmⱼ(x)vⱼ，mⱼ(x) 为 deg ≤ p 的无系数单项式
	* 来源：2312.00724；AI 说发表于 Comptes Rendus Mathématique (缩写 C. R. Math.)，历史上有声望但当前影响力不高（约 0.8）的期刊
* 哥德尔第一、第二定理 结论分别为{q8413i}
	* 第一：存在命题，不能证明真，也不能证明假
	* 第二：形式系统相容性无法在内部证明
	* 来源((srs:q8413h))
* 哥德尔第一定理条件，形式系统需满足哪两个性质{q8413k}
	* 包含基本算术
	* 无矛盾
## 范畴论
* 范畴论中，我用记号 τ ∈ 𝖢𝖠𝖳(C,B)(S,T) 表示{n9h92u}
	* natural transformation
	* 具体地，S,T ∈ 𝖢𝖠𝖳(C,B) 均为函子，函子间态射 τ: S → T 满足如下交换图
	* file:///home/yzh/oc-ptis/attached/n9h92n-GTM5-natTransf-SRS.png
	* 来源：GTM5 p16
* 范畴论中，如下交换图表明 τ ∈ [?] 为 natural transformation（设左、右子图分别在范畴 C,B 中）{octg3t}
	> file:///home/yzh/oc-ptis/attached/n9h92n-GTM5-natTransf-SRS.png
	* τ ∈ 𝖢𝖠𝖳(C,B)(S,T)
* 范畴论中，我如何仿照依赖类型理论表示自然变换 τ ∈ 𝖢𝖠𝖳(𝓒,𝓓)(F,G) 的“映射”关系{o8ve7y}
	* τ: (𝓒 ∋ A) → F(A) → G(A)
* 范畴论，单侧逆如何用交换图表示（即 f: A → B 有左逆 g: B → A 满足 g∘f = id_A 但 f∘g ≠ id_B）{o7d935}
	* A {f}→ B {g}→ A, A {id}→ A
* 范畴论：函子 F ∈ 𝖢𝖠𝖳(𝓒,𝓓) 完全、忠实的定义（THU 范畴论讲义 p4）{o8ve8s}
	* ∀A,B ∈ 𝓒, F[-]: 𝓒(A,B) → 𝓓(F(A),F(B)) 为满射、单射
	* src: [THU 范畴论讲义网址](https://ymsc.tsinghua.edu.cn/info/1048/3037.htm)
	* 相关：例子包括((o8ve96))Yoneda 嵌入 j，((o8sl2o))有限维流形的 C^∞ ∈ 𝖢𝖠𝖳(𝖣𝗂𝖿𝖿ᵒᵖ,𝖱𝗇𝗀)
* 范畴论：𝓒 ∈ 𝖢𝖠𝖳 的 Yoneda 嵌入 j ∈ 𝖢𝖠𝖳(𝓒,[?1]) 将 𝓒 嵌入到 𝓒 上的 [?2] 范畴（THU 范畴论讲义 p5）{o8v94l}
	* j ∈ 𝖢𝖠𝖳(𝓒, 𝖢𝖠𝖳(𝓒ᵒᵖ,𝖲𝖾𝗍))
	* 预层范畴
* 范畴论：𝓒 ∈ 𝖢𝖠𝖳 的 Yoneda 嵌入 j: X ↦ [?]{o8v94n}
	* j: X ↦ 𝓒(-,X)
* 范畴论：𝓒 ∈ 𝖢𝖠𝖳 的 Yoneda 嵌入 j，我自己画的交换图{o8v94p}
	* file:///home/yzh/oc-ptis/attached/o8v976-yoneda-emb-SRS.xoj
* 范畴论 Yoneda 嵌入 j：双射 𝖢𝖠𝖳(𝓒ᵒᵖ,𝖲𝖾𝗍)(j(X),F) → F(X), ξ ↦ s 如何给出{o8ve90}
	> 要求：用我的记号 ξ: (𝓒 ∋ A) → 𝓒(A,X) → F(A)；注意这里假定 ξ 已给定
	> 设定：X ∈ 𝓒 ∈ 𝖢𝖠𝖳
	> 来源：基于 THU 范畴论讲义 p5
	* s = ξ(X)(idₓ) ∈ F(X)
* 范畴论 Yoneda 嵌入 j：对 X ∈ 𝓒 ∈ 𝖢𝖠𝖳，双射 F(X) → 𝖢𝖠𝖳(𝓒ᵒᵖ,𝖲𝖾𝗍)(j(X),F), s ↦ ξ 如何给出，用我的记号即 F(X) → (𝓒 ∋ A) → 𝓒(A,X) → F(A)，(s,A,f) ↦ [?]（基于 THU 范畴论讲义 p5）{o8ve92}
	* `s ↦ A ↦ f ↦ F[f](s) ∈ F(A)`
	* 其中 F[f] ∈ 𝖲𝖾𝗍(F(X),F(A))
* 范畴论 Yoneda 嵌入 j：对 X ∈ 𝓒 ∈ 𝖢𝖠𝖳，双射 𝖢𝖠𝖳(𝓒ᵒᵖ,𝖲𝖾𝗍)(j(X),F) → F(X), ξ ↦ s 可构造逆映射 s ↦ ξ，我证明 ξ ↦ s ↦ ξ' = ξ: (𝓒 ∋ A) → 𝓒(A,X) → F(A) 的要点在于{o8ve94}
	* 关于 ∀f ∈ 𝓒(A,X) 对 ξ ∈ 𝖢𝖠𝖳(𝓒ᵒᵖ,𝖲𝖾𝗍)(j(X),F) 用自然变换的定义
* 范畴论 Yoneda 引理叙述：设 𝓒 为局部小范畴，则 Yoneda 嵌入 j ∈ 𝖢𝖠𝖳(𝓒, 𝖢𝖠𝖳(𝓒ᵒᵖ,𝖲𝖾𝗍)) 作为函子具有什么性质（THU 范畴论讲义 p5）{o8ve96}
	* 完全、忠实
* 要验证函子 F: 𝓒 = (𝓒ᵒᵖ)ᵒᵖ → 𝖲𝖾𝗍 可表示，只需构造哪两个东西{o8ve98}
	> （注）提示：若没能直接回忆，可先回忆之前自己考察的例子
	> （注）背景：范畴论 Yoneda 嵌入相关
	> （注）来源：基于 THU 范畴论讲义 p5
	* 构造对象 X ∈ 𝓒 和（集合间）双射 𝓒(X,A) → F(A), ∀A ∈ 𝓒
	* （重读即可）后者需要为自然变换
	* （无需回忆）例子：遗忘函子 For: 𝖳𝗈𝗉 → 𝖲𝖾𝗍 对应 X = {p}，For: 𝖦𝗋𝗉 → 𝖲𝖾𝗍 对应 X = ℤ（𝖱𝗇𝗀 也是）
		* 𝖦𝗋𝗉 → 𝖲𝖾𝗍, G ↦ { g ∈ G | g² = e } 对应 X = ℤ/2ℤ
* 函子 F: 𝓒 → 𝖲𝖾𝗍 “可表示”的含义{p5qf3i}
	* 函子同构 F ≅ 𝓒(X,-)，∃X ∈ 𝓒
* 范畴论：伴随函子 (F,G) 由 F: 𝓒 → 𝓓, G: 𝓓 → 𝓒 和什么组成，根据我画的示意图回答（THU 范畴论讲义 p5）{o8vg0w}
	* 双射 𝓓(F(X),Y) → 𝓒(X,G(Y))
	* 示意图 file:///home/yzh/oc-ptis/attached/o8vg0u-adjoint-functor-SRS.xoj
## 微分流形
* # 微分流形中 Lie bracket 定义：设 X,Y ∈ ΓTM，则 [X,Y] ∈ ΓTM 定义为{n9h930}
	* 设 f ∈ C^∞(M)，定义 [X,Y]f = XYf - YXf
	* 由于二阶导数项被消掉，事实上有 [X,Y] ∈ ΓTM
* 微分流形中 Lie bracket 定义：设 X,Y ∈ ΓTM，则 [X,Y] 定义为（只涉及 TₓM 空间的原始定义）{n9h930b}
	* 设 f ∈ C^∞(M)，定义 [X,Y]f = XYf - YXf
* 微分流形中 Lie bracket 定义：设 X,Y ∈ ΓTM，则 [X,Y] 定义为 [X,Y]f = XYf - YXf，为何满足 [X,Y] ∈ ΓTM{n9h930d}
	* 二阶导数项被消掉
* （判断正误）微分流形中 Lie bracket 满足：设 F ∈ 𝖣𝗂𝖿𝖿(M,N)，X,Y ∈ ΓTM，则 F_*[X,Y] = [F_*X, F_*Y]{n9h932}
	* 不准确：F 不为满射，未必能定义 F_*: ΓTM → ΓTN
	* 如果 F 为微分同胚则结论成立
	* src: GTM218 p189
* 微分流形中 Lie derivative 与 Lie bracket 关系：设 X,Y ∈ ΓTM，则 (L_X)Y = [?]{n9h934}
	* (L_X)Y = [X,Y]
	* src: GTM218 p229，或 [Jost]-RiemannianManifold p73
* {old}# 微分流形中 Cartan's magic formula：X ∈ ΓTM，ω ∈ Ωᵏ(M)，(L_X)ω = [?]
	* 
* (L_X)ω = [?]{n9h936}
	> （注）X ∈ ΓTM，ω ∈ Ωᵏ(M)
	> （注）背景：微分流形中 Cartan's magic formula
	> （注）来源：GTM218 p372，或 [Jost]-RiemannianManifold p73
	* (L_X)ω = ι(X)dω + d(ι(X)ω)
	* 我的简写： L_X = ι(X)d + dι(X)
* 微分流形中 Lie derivative 性质：设 X ∈ ΓTM，ω,η ∈ Ω*(M)，则 (L_X)(ω ∧ η) = [?]（GTM218 p372）{n9h938}
	* (L_X)(ω ∧ η) = ((L_X)ω) ∧ η + ω ∧ ((L_X)η)
	* 相关：((n9mn17)) ι(X)(ω ∧ η) 有 (-1)ᵏ
* 微分流形中 Cartan's magic formula：X ∈ ΓTM，ω ∈ Ωᵏ(M)，则 (L_X)ω 可用 d，ι(X)，ω 表示，相应公式的证明思路{n9h93a}
	* 对 k 归纳：写为 ω = df ∧ η，再用((n9h938)) (L_X)(ω ∧ η) = ((L_X)ω) ∧ η + ω ∧ ((L_X)η)
	* src: GTM218 p372
* 微分流形中 Lie derivative 性质：设 X ∈ ΓTM，ω ∈ Ω*(M)，如何证明 (L_X)(dω) = d((L_X)ω){n9h93c}
	* 两端均用((n9h936))Cartan's magic formula L_X = ι(X)d + dι(X) 计算
* 微分流形中 interior multiplication 性质：设 X ∈ ΓTM，ω,η ∈ Ω*(M)，则 ι(X)(ω ∧ η) = [?]（GTM218 p358）{n9mn17}
	* ι(X)(ω ∧ η) = (ι(X)ω)∧ η + (-1)ᵏω ∧ (ι(X)η)，ω ∈ Ωᵏ(M)
	* 相关：((n9h938)) (L_X)(ω ∧ η) 没有 (-1)ᵏ
* 微分流形中 exterior derivative 性质：设 ω,η ∈ Ω*(M)，则 d(ω ∧ η) = [?]（GTM218 p366）{n9mn19}
	* d(ω ∧ η) = (dω)∧ η + (-1)ᵏω ∧ dη，ω ∈ Ωᵏ(M)
* 设 (M,g) 有向黎曼 n-流形，其 Riemann volumn form ω_g ∈ Ωⁿ(M) 按定义应该满足（GTM218 p389）{n9n950}
	* 对任意局部、有向的单位正交标架 E₁,…,Eₙ，有 ω_g(E₁,…,Eₙ) = 1
* 设 (M,g) 有向黎曼 n-流形，其 Riemann volumn form ω_g ∈ Ωⁿ(M) 在局部有向坐标 xⁱ 下的形式为（GTM218 p389）{n9n952}
	* ω_g = √{det(gᵢⱼ)} dx¹∧ ⋯ ∧dxⁿ
* 设 M ∈ 𝖣𝗂𝖿𝖿 光滑流形，f ∈ C^∞(M)，则我理解的 T[f]: TM → Tℝ 与 df ∈ Ω¹(M) 的关系{o7d950}
	* 均可视为 TM → ℝ
* 磁场 H = ∇φ, B = ∇×A 外微分表达对应交换图 [?1]，其中 B,H 微分形式阶数 [?2]、关系 [?3]{q1786v}
	* file:///home/yzh/oc-ptis/attached/q1786g-magnetic-extDerv-SRS.webp
	* H 一阶 B 二阶，B = μ*H
	* 见主笔记((srs:q1787h))；电场 E,D 也有类似关系，E 一阶 D 二阶
### 切丛与 Lagrange 力学
* 设 f ∈ C^∞(M)，我如何理解：路径 q: I → M 的变分 δ∫ₐᵇf(q)dt = 0{na1e00}
	* 对任意微扰 δq: I → TM，有 ∫ₐᵇδq(f)dt = 0
	* 细节：微扰满足 π ∘ δq = q（I → TM → M），端点 δq(a) = δq(b) = 0
		* 注：前者相当于 δq ∈ Γq⁻¹TM
	* δq(f) = df(δq)
	* 注：由 δq 任意性，似乎已可推出 df ≡ 0
* （重读即可）设 f ∈ C^∞(M)，我理解 路径 q: ℝ → M 的变分 δ∫ₐᵇf(q)dt = 0 时所用的交换图{na1e03}
	* file:///home/yzh/oc-ptis/attached/na1e5z-math-manVartn.xopp
	* 用到映射 ΓEᵛ → 𝖵𝖡(E, M × ℝ) 或 (M → Eᵛ) → (E → ℝ)
* 流形上 Lagrange 力学：设路径 q: I → M 产生速度轨迹 (q,v): ℝ → TM，如何由前者给出后者，我的理解（用微分流形层面的运算）{na1e06}
	* T[q]: TI → TM，再复合上 I → TI ≅ I × ℝ，t ↦ (t,1)
* 流形上 Lagrange 力学：Euler-Lagrange 方程通常版本依赖于坐标系，有文献讨论了无坐标版本，在笔记系统中 [?] 搜索 [?] 关键词可找到{na1e09}
	* SRS，搜索 Lagrange coordinate-free/lagrange-coord-free/lagrangian-cooord-free 找到这张卡片即可
		* 注：以上回忆起其中之一即可
	* [文献](https://mast.queensu.ca/~andrew/papers/pdf/2005a.pdf)
		* EL 方程在 p16，其中的 J,V 似在 p7 开头定义
		* [信源](https://math.stackexchange.com/questions/4246383/)
	* 注：后来发现 Marsden 弹性力学基础 p270 直接给出了一般无穷维空间的 Euler-Lagrange 方程
		* 我没完全理解其中 D₁L(q,v) 怎么定义的，直观上感觉需定义 Q 上的联络、从而需黎曼流形结构，但文中似乎未引入该假定
* 流形的 double tangent bundle：TTM → TM 的两种向量丛结构 [?]，二者之间的同构可由 [?] 给出{na1i80}
	* 1. 普通 π₂: TTM → TM；2. T[π₁]: TTM → TM，其中 π₁: TM → M
	* canonical flip j: TTM → TTM
	* [src](https://handwiki.org/wiki/Double_tangent_bundle)
* 流形的 double tangent bundle：canonical flip j: TTM → TTM 在局部坐标下表示为{na1i82}
	* (q, v; Q, V) ↦ (q, Q; v, V)
* 微分流形：若 f: ℝ² → M，则 ∂₁∂₂f ∈ [?]，与 ∂₂∂₁f 的关系 [?]{na1i84}
	* ∂₁∂₂f: ℝ² → TTM
	* ∂₁∂₂f = j∘∂₂∂₁f，其中 j 为 canonical flip
* 微分流形知识回忆：若 f: N → M，则 π: E → M 的 pullback bundle f⁻¹E → N 所具有的 universal property{na1i86}
	* 任意 F:E₂ → E 可唯一分解为 E₂ → f⁻¹E → E
	* 交换图 file:///home/yzh/oc-ptis/attached/na1j24-diffMan-pullbackBundle.xopp
* 设 π: E → M vector bundle, 则其 vertical tangent bundle π₂: VE → E 满足 1. VE ≅ E ⊕ E，2. VE ⊂ TE，这里 1、2 所取的 base manifold 分别为{na1i88}
	* 1. M，有 (VE → M) ≅ (E ⊕ E → M)
	* 2. E，有 (VE → E) ⊂ (TE → E)
* 设 π: E → M vector bundle, 则其 vertical tangent bundle π₂: VE → E 的定义，用 ker{na1i8a}
	* (VE → E) = ker T[π]，其中 T[π] ∈ 𝖵𝖡(TE → E, TM → M)
	* 注：原链接只讨论了 E = TM，但我觉得能推广到一般的 E
	* 注：我认为 π 为 fiber bundle 即可，用于((o83h34))
* 设 π: E → M vector bundle, 则其 vertical tangent bundle π₂: VE → E 同构下等价的定义，用 pullback bundle{na1i8c}
	* (VE → E) ≅ π⁻¹(π: E → M)
### 余切丛、辛流形与 Hamilton 力学
* # 余切丛作为辛流形：M = TᵛQ 上的 tautological 1-form τ ∈ Ω¹(TᵛQ) 定义（我自己分析的 coordinate-free 版本）{na2e90}
	* 只需给出 TTᵛQ → ℝ
	* 使用二映射 π₂: TTᵛQ → TᵛQ，T[π₁]: TTᵛQ → TQ
	* 二映射下结果做 pairing 即得 TTᵛQ → ℝ
	* 注：局部坐标下((na2e92))为 (q,p;v,f) ↦ ⟨(q,p), (q,v)⟩ = p(v)
	* 注：原定义可见 GTM218 p569，这里是我的改写
* 余切丛作为辛流形：M = TᵛQ 上的 tautological 1-form τ ∈ Ω¹(TᵛQ) 定义（我自己分析的 coordinate-free 版本），第一步认为 τ ∈ Ω¹(TᵛQ) = [?]{na2e90a}
	* τ ∈ Ω¹(TᵛQ) = {TTᵛQ → ℝ}
	* 即 τ: TTᵛQ → ℝ
* 余切丛作为辛流形：M = TᵛQ 上的 tautological 1-form τ: TTᵛQ → ℝ 在局部坐标下为 (q,p;v,f) ↦ p(v)，（我自己分析的）相应不依赖局部坐标的定义方式为{na2e90c}
	* 使用二映射 π₂: TTᵛQ → TᵛQ，T[π₁]: TTᵛQ → TQ
	* 二映射下结果做 pairing 即得 TTᵛQ → ℝ
* {old}# 余切丛作为辛流形：M = TᵛQ 上的 tautological 1-form τ ∈ Ω¹(TᵛQ) 在局部坐标下表达式（「无」求和号版本，非映射形式）
	* 2025-07-12 修改正面
* τ ∈ Ω¹(TᵛQ) 在局部坐标下表达式，形如 (q,p;v,f){na2e92b}
	> 设定：余切丛作为辛流形，τ 为 M = TᵛQ 上的 tautological 1-form
	* (q,p;p,0)
* 余切丛作为辛流形：M = TᵛQ 上的 tautological 1-form τ ∈ Ω¹(TᵛQ) 在局部坐标下表达式（「有」求和号版本）{na2e92d}
	* ∑ pᵢdqⁱ
* 余切丛作为辛流形：M = TᵛQ 上的 tautological 1-form τ 视为 τ: TTᵛQ → ℝ，该「映射」在局部坐标下表达式{na2e92f}
	* (q,p;v,f) ↦ p(v)
* 余切丛作为辛流形：M = TᵛQ 上的 canonical symplectic form ω = [?]（GTM218 p569）{na2e94}
	* ω = -dτ （注意负号）
	* 其中 τ ∈ Ω¹(TᵛQ) tautological 1-form
* 余切丛作为辛流形：σ ∈ Ω¹(Q) 视为 σ: Q → TᵛQ，则 σ*ω = [?] ∈ Ω²(Q)（GTM218 p570）{na2e96}
	* σ*ω = -dσ ∈ Ω²(Q)，注意负号
	* 推导：-σ*ω = σ*dτ = dσ*τ = dσ ，用到 tautological 1-form τ
		* 注：用到((na7n1a))σ*τ = σ
	* 注：书上提到该定理给出了 closed 1-form 的几何解释：σ closed ⇔ σ(Q) ⊂ TᵛQ Lagrangian submanifold
## 理论物理
* 黑洞无毛定理（No Hair Theorem）表明，黑洞的最终状态仅由哪三个物理量决定{o8o95k}
	* 质量、角动量、电荷
	* [src](https://mp.weixin.qq.com/s/8k9x8Iy9sTfst0I7rmnDSQ)
* 狭义相对论，尺缩效应使用 Minkowski 几何解释的示意图{obek20}
	* file:///home/yzh/oc-ptis/attached/obek1r-specialRelativity-ruler-SRS.webp
* Kolmogorov 湍流理论假设的 E(k) 曲线形状{obja2j}
	> （注）E 能量，k 波数，在对数坐标下画
	* file:///home/yzh/oc-ptis/attached/obja34-Kolmogorov-turbulence-Ek-SRS.jpg
	* 来源：https://zhuanlan.zhihu.com/p/424977075
	* 无需回忆：据说 2D 湍流、磁流体等 E(k) 形状有其他表现，因为系统 E 以外的守恒量不同
		* 见 https://www.zhihu.com/question/27434652/answer/36647523
* Kolmogorov 湍流理论假设的 E(k) 曲线形状如图，相应物理直观（宏观、中观、微观，空间对称性、能量）分别为{obja2l}
	> file:///home/yzh/oc-ptis/attached/obja34-Kolmogorov-turbulence-Ek-SRS.jpg
	* 宏观：有对称破缺、能量输入
	* 中观：湍流完全发展、对称破缺被遗忘，能量由大涡传递至小涡
	* 微观（几十个¹分子自由程）：能量耗散为热能
		* ¹信源 https://www.zhihu.com/question/37938488/answer/1975124034
* Kolmogorov 湍流理论导出，量纲分析针对的等式为 E(k) ∝ [?1]，其中涉及的物理量含义 [?2]{obja2n}
	* E(k) ∝ ε^α k^β
	* ε：能量耗散速率（宏观传入速率 = 微观耗散速率），单位同功率
	* k：波数
* Kolmogorov 湍流理论 E(k) ∝ k^β，斜率 β = [?]{obja2p}
	* β = -5/3
* “实验证明实数无法完整描述标准量子力学”，我听说的完整表述为 [?1]，用实数描述的量子力学理论例子有 [?2]（一个即可）{oa3f4t}
	* 实数量子态、张量积公理 必须至少放弃一个
	* 路径积分表述，相空间表述（基于 Wigner 函数），纯概率论表述（基于 SIC-POVM），玻姆表述（导波理论）
		> 这些表述都放弃了张量积公理，如前两者“复合系统的 构型空间/相空间 不是子系统空间的张量积，而是直积”
		* 注：这里涉及的“复数”包括其上的乘法结构
	* [src](https://www.zhihu.com/question/514085762/answer/4038286476)
* BBGKY hierarchy 描述了什么{p5pa4y}
	* n 粒子系统中 k 粒子（子集）概率密度 ρₖ，其演化 ∂ₜρₖ 依赖于 ρₖ₊₁
	* 具体地，背景：n 粒子系统概率密度 ρₙ 满足 ∂ₜρₙ = {ρₙ,Hₙ}
	* 有 ∂ₜρₖ = {ρₖ,Hₖ} + (n-k)∫{ρₖ₊₁,∑U(rᵢ-r)}drdp ，RHS 涉及 ρₖ₊₁
	* [src](https://zhuanlan.zhihu.com/p/3450752034)

## 科学现象
* 飞行器接近音速时，周围出现“汽锥”，对应可压缩流的 [?] 区域，与激波的关系 [?]{n5hm0c}
	* 膨胀扇((srsRef:n5hm0q))
	* 汽锥在激波处消失
* 装半满水的瓶子落地会弹起，若瓶中水在旋转，则弹起幅度会 [?]{name93}
	* 减小
	* 见主笔记系统((name8v))，为 PRL 文章
* 高尔夫球表面有坑可减小阻力，但相同做法用于机翼往往会增大阻力，可归因为二者飞行时的主要阻力来源不同，分别为{o7qb7v}
	* 前者：压差阻力，后者：摩擦阻力
	* [src](https://www.zhihu.com/question/661875735/answer/3566059571)
* 高尔夫球表面有坑可增大球后方压强、减小压差阻力，其机制为{o7qb7x}
	* 使层流边界层变为湍流边界层，进而让边界层分离点推后
* 含棉花的冰不易破裂，其原理{ocsa5g}
	* 冰抗压强抗拉弱，外力冲击下局部形变可超出抗拉能力而破裂
	* 棉花不抗压但抗拉，且帮助传导应力、阻碍裂缝延伸
		* 注：后两点若难回忆，可改仅重读
	* 来源((srs:ocsa5d))
* 流体 Rayleigh–Taylor（RT）不稳定性 何时出现，我的理解{p2mf50}
	* 不同密度流体有挤压式的相互加速度；包括引力视为加速度（低密度在下，如油与水）
	* 来源：[惯性约束聚变流体](https://mp.weixin.qq.com/s/3O6rvO0yBY_70tQFSZbeHg)
		* 针对相互加速度情形；重力情形在知乎可搜到
* 流体 Kelvin-Helmholtz（KH）不稳定性 何时出现 [?1]，例子 [?2]{p2mf52}
	* 二流体界面切向速度差异（剪切流动）
	* 风浪、木星大红斑
* 流体 Richtmyer–Meshkov（RM）不稳定性 何时出现{p2mf54}
	* 激波穿过两种流体之间的界面
	* 注：据说可被视为 RT 不稳定性的脉冲对应物（即 RT 在短时间内具有高加速度）
* 云朵与蓝天边界清晰，我听说的解释{p3ma98}
	* 水汽实际上近似均匀分布，液滴大小连续变化
	* 瑞利散射主导时显蓝色，米氏散射主导时显白色
	* 米氏散射强度 关于液滴大小 依赖程度近似突变（6 次方项）
	* [src](https://mp.weixin.qq.com/s/_Z0ffDpOLrxDwKSwtgSWRA)
* 搅拌杯中水形成二次流的原因{p5hl0g}
	* 杯壁、底部液体由于粘性旋转慢，离心力小
	* （无需回忆）杯壁液体离心力不足以维持高水位，受内部挤压向下流动，底部离心力小而向内流动
	* 注：若杯子跟着一起旋转，则不会形成二次流；工业离心机即使用该原理
	* [src](https://www.zhihu.com/question/1906144252423051254/answer/1906807191899443301)
* 液体、气体粘性主要来源分别为 [?1]，温度升高时粘性大小如何变化 [?2]{p5ib5y}
	* 液体：分子间吸引力；气体：分子动量交换
	* 减小（速度升高更容易克服吸引力）、增大
	* [src](https://mp.weixin.qq.com/s/r-0o0_onxkupzSoUQqJQJw)
* 水下物体虚像 和观察者的「水平」距离，相较真实位置更近/远/等距{p5pn22}
	* 有两个虚像，一个更近，另一个水平等距（在真实位置正上方）
	* 来源：毕导视频号
* 可控核聚变的劳森判据，哪 3 个物理量乘积需大于一定值{p7s97z}
	* 密度、温度、约束时间
* 家用冰箱贴仅一面有磁性，实现方式{pbf86i}
	* 多个小磁铁按一定次序排列，使周围磁感线被限制在一侧，另一侧被约束在磁体内部
	* 注：N、S 磁极在同侧交替出现
	* [src](https://mp.weixin.qq.com/s/GvA5BZTQq65Q2_Vy8B8eSA)
* Born-Oppenheimer 近似，解释为“原子核当成经典粒子”并不准确，更准确的说法应该是{pbra4b}
	> 来源：某司 AI4S 技术二面
	* 时间尺度差异，电子迅速演化到基态，从而为原子核的薛方演化提供势函数
* 邓煜从硬球碰撞模型推 Boltzmann 方程，N,d 趋于极限的方式{q7rh55}
	* Nd² = const
* 邓煜从硬球碰撞模型推 Boltzmann 方程，熵增的二来源{q7rh57}
	* 碰撞历史分树状、环状，后者在极限下贡献趋于 0
		* 注：某次碰撞发生时，二粒子分别追溯历史碰撞树，若有二节点对应同一粒子，则形成环状结构
	* 初态假设各粒子独立（知道一个粒子的信息对知道其他粒子没帮助）
	* [信源](https://weixin.qq.com/sph/AMlQB7zofq)
* 修正引力理论 相比暗物质暗能量理论，星系尺度、宏观尺度预测能力分别如何{q7ri2v}
	> （注）二者为竞争理论
	* 星系尺度：无需对各星系随意引入不同质量的暗物质（以解释转速差异），除少数矮星系团等都符合观测，甚至精度更高
	* 大尺度：不如暗物质暗能量理论
	* [信源](https://weixin.qq.com/sph/A1U0Xws7pW)
* 修正引力理论，修正牛二律方案为 [?1]，从而引力衰减速度 [?2]{q7ri2x}
	> （注）为解释星系转速快于广相预测，无需随意引入暗物质，作为暗物质暗能量模型的竞争理论
	* 极小加速度下 a < a₀ 时 F = ma²/a₀
	* 引力与 r 成反比
* 修正引力理论 解释星系转速快于广相预测，熵引力理论大意{q7ri2z}
	> （注）为解释星系转速快于广相预测，无需随意引入暗物质，作为暗物质暗能量模型的竞争理论
	* 类似全息原理，围绕物体球面的熵通量反映内部总熵
	* 从而小半径球面熵密度更高
	* 接近球心意味着熵增
	* 熵增趋势表现为物体受吸引，从而广相、牛顿引力作为其推论
