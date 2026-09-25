x}# 概率、随机过程、统计
	* 2026-02-08 从 mathPhy-srs.md 独立
* 随机变量 X 的偏度（skewness）定义 [?]，含义：用于度量 X 分布的 [?]{n64j8s}
	* S = 𝔼(X-μ)³/σ³（均值、方差标准化后的 3 阶矩）
	* 分布的不对称性（S > 0 表示向右长尾）
* 随机变量 X 的峰度（kurtosis）定义 [?]，含义：用于度量 X 分布的 [?]；对正态分布，其取值 [?]{n64j8t}
	* K = 𝔼(X-μ)⁴/σ⁴（中心化(?)后的 4 阶矩）
	* 分布的陡峭程度，越大表示越高、尖
	* 3（从而定义 超值峰度 为 K - 3）
* X ~ N(0,1) 则 𝔼[X⁴] = [?]{p7pf1t}
	* 3，即正态分布峰度
* 布朗运动满足 cov(Bₛ,Bₜ) = [?]{n7vm2u}
	* cov(Bₛ,Bₜ) = min(s,t)
	* 推导：（设 s ≤ t）= cov(Bₛ,Bₛ) = 𝔼Bₛ² = s
* 1D Itô 公式推导涉及形式运算：dBₜ² = [?]{n7vl7u}
	* dBₜ² = dt（无系数）
* 1D Itô 公式：dXₜ = μdt + σdBₜ，则 df(t,Xₜ) = [?]（回忆时建议写下来）{n7vl7v}
	* df(t,Xₜ) = fₜdt + fₓdXₜ + (σ²/2)fₓₓdt
	* 推导大意：Taylor 展开 df(t,Xₜ) = fₜdt + fₓdx + ½fₓₓdXₜ²，最后一项用 dBₜ² = dt
* 高维 Itô 公式推导涉及形式运算：设 A 方阵，dBₜᵀA dBₜ = [?]，形式推导方式{n7vl8v}
	* dBₜᵀA dBₜ = tr(A)dt
	* 形式推导：𝔼[dBₜᵀA dBₜ] = 𝔼tr(A dBₜdBₜᵀ) = tr(A𝔼[dBₜdBₜᵀ]) = tr(A I dt)
* 高维 Itô 公式：dXₜ = μdt + σdBₜ（σ 为方阵），则 df(t,Xₜ) = fₜdt + ∇f·dXₜ + ½[?]dt{n7vl8x}
	* df(t,Xₜ) = fₜdt + ∇f·dXₜ + ½tr(σᵀHess(f)σ)dt
	* 形式推导：Taylor 后最后一项 ½(dXₜ)ᵀHess(f)dXₜ，代入方程后再用((n7vl8v)) dBₜᵀA dBₜ = tr(A)dt
* {old}# 1D Fokker-Planck 方程：设 dXₜ = μdt + σdBₜ，Xₜ 密度 pₜ(x)，则 dₜpₜ = [?]
	* dₜpₜ = -(μpₜ)ₓ + ½(σ²pₜ)ₓₓ
	* 2026-08-19 后项回忆出错，故拆为两个独立回忆点
* 1D Fokker-Planck 方程：设 dXₜ = μdt + σdBₜ，Xₜ 密度 pₜ(x)，则 dₜpₜ = [?] + ½(σ²pₜ)ₓₓ{n7vm30}
	* dₜpₜ = -(μpₜ)ₓ + ½(σ²pₜ)ₓₓ
* 1D Fokker-Planck 方程：设 dXₜ = μdt + σdBₜ，Xₜ 密度 pₜ(x)，则 dₜpₜ = -(μpₜ)ₓ + [?]{q8ja6f}
	* dₜpₜ = -(μpₜ)ₓ + ½(σ²pₜ)ₓₓ
* {old}# 1D Fokker-Planck 方程推导：设 dXₜ = μdt + σdBₜ，则推导 Xₜ 密度 pₜ(x) 满足的时间演化方程的要点（两点）
	* ∫f(x)pₜ(x) = 𝔼f(Xₜ)，∀ f(x)
		* 为第一点：Xₜ 与 pₜ(x) 的关系
	* RHS 时间导数 (1) 用 Itô 公式，(2) 写为乘 pₜ(x) 积分，(3) 对 x 分部积分消掉 f(x) 导数项
		* (3) 为第二点
	* 2025-08-20 重构：虽然能回忆起来，但第二点困难，两点没有明显逻辑性，靠死记
		* 第二点单独回忆，第一点与 KBE 推导出发点合并回忆（新建的((p8kc0x))）
* Fokker-Planck 方程推导过程中 ∫f(x)∂ₜpₜ(x) = ∫(α·∇f + β:Hess(f))，下一步 RHS 如何变形{n7vm31}
	> 设定：考察 dXₜ = μdt + σdBₜ 密度 pₜ(x) 的时间演化方程
	* 分部积分使 RHS 形如 ∫γf，不再直接涉及导数
* 高维 Fokker-Planck 方程：设 dXₜ = μdt + σdBₜ，Xₜ 密度 pₜ(x)，则 dₜpₜ = [?] + ½∇·(∇·(pₜσσᵀ)){n7vm32}
	* dₜpₜ = -∇·(pₜμ) + ½∇·(∇·(pₜσσᵀ))
	* 注：第二项注意 σσᵀ 转置在右边；来自 tr(σᵀHess(f)σ) = tr(Hess(f)σσᵀ)
	* 注：推导类似 1D 情形
	* 注：类似雷诺输运定理((n5mj5u))∂ₜf + ∇·(fu) = …
	* 2025-08-20 停用：并入卡片((p7hf1l))
* 对高维 SDE dXₜ = μdt + σdBₜ，Itô 公式 df(t,Xₜ) = fₜdt + ∇f·dXₜ + [?]dt，Fokker-Planck 方程 dₜpₜ = -∇·(pₜμ) + [?]{o5ul2v}
	* df(t,Xₜ) = fₜdt + ∇f·dXₜ + ½tr(σᵀHess(f)σ)dt
	* dₜpₜ = -∇·(pₜμ) + ½∇·(∇·(pₜσσᵀ))
	* 注：二算子互为 dual
* KBE 考察的 u(x,t) 定义{p6ib70}
	> 设定：Kolmogorov backward equation，针对 SDE dXₜ = μdt + σdBₜ，终止时间 T
	* u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]
* `u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]` 满足什么性质{p6ib72}
	> 设定：推导 Kolmogorov backward equation 用到，针对 SDE dXₜ = μdt + σdBₜ
	* u(Xₜ,t) 是鞅，即 𝔼[u(Xₛ,s)|Xₜ=x] = u(x,t),∀s ∈ [t,T]
* {x}# 卡片设计理由，为何仍决定专门启用((p6ib72))
	* 若仅记忆 KBE 推导，推测单独((p6ib74))足够，记得令 dt 系数为 0 即可
	* 额外目标场景：其他场合（不涉及 KBE，不显式提及“鞅”）见到这个 u(x,t)，也能想到它是鞅
	* 推导记忆卡片不足以满足需求：卡片正面绑定 KBE，不匹配
		* （次要）回忆过程未必强调鞅性质；可能回忆路径只是（过程型）使 dt 系数为 0，淡化了其为零是因为（事实型）它是鞅
	* 不过推导卡片已能确保记住它是鞅的事实，如果给判断题问它是否是鞅应该能答对
* KBE 推导，最终如何导出 u(x,t) 满足的方程{p6ib74}
	> 设定：Kolmogorov backward equation，针对 SDE dXₜ = μdt + σdBₜ，`u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]`
	* 计算 du(Xₜ,t) = αdt + βdBₜ（用 Itô 公式）
	* α = 0（由鞅性质）即得
* {old}# 关于 u(x,t) 的 KBE 形式，包括 BC
	> 设定：Kolmogorov backward equation，针对 SDE dXₜ = μdt + σdBₜ，`u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]`
	* uₜ + μ·∇u + ½tr[σᵀHess(u)σ] = 0
	* u(x,T) = ψ(x)
	* 注：若日后发现回忆困难，可改为只回忆 1D 版本
	* 2025-07-17 修订：发现一阶导项可能回忆错误
* KBE uₜ + μ·∇u + [?1] = 0，BC [?2]{p6ib76}
	> 设定：Kolmogorov backward equation，针对 SDE dXₜ = μdt + σdBₜ，`u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]`
	* uₜ + μ·∇u + ½tr[σᵀHess(u)σ] = 0
	* u(x,T) = ψ(x)
* {old}# KBE uₜ + [?] + ½tr[σᵀHess(u)σ] = 0
	> 设定：Kolmogorov backward equation，针对 SDE dXₜ = μdt + σdBₜ，`u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]`
	* uₜ + μ·∇u + ½tr[σᵀHess(u)σ] = 0
	* 注意不是 Fokker-Planck 的 ∇·(μu)；该项来自关于 u 的 Itô 公式中 (∇u)·dXₜ
	* 2025-08-20 改写，不是因为当前卡片，而是自行查看((n7vm32))时发现回忆失败，打算与当前卡片合并
* ∂ₜp = [?1] + ½∇·(∇·(pσσᵀ))，而 ∂ₜu + [?2] + ½tr[σᵀHess(u)σ] = 0{p7hf1l}
	> 设定：p(x;t) 为 Xₜ 的概率密度，`u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]`
	> 背景：Kolmogorov forward/backward equation，针对 SDE dXₜ = μdt + σdBₜ
	* ∂ₜp = -∇·(pμ) + ½∇·(∇·(pσσᵀ))，注意负号
		* 回忆依据：雷诺输运定理((n5mj5u))∂ₜf + ∇·(fu) = …，或((n7vm30))1D ∂ₜpₜ = -(μpₜ)ₓ + ½(σ²pₜ)ₓₓ
	* ∂ₜu + μ·∇u + ½tr[σᵀHess(u)σ] = 0
	* 注：二项对偶（因此差负号）
* KFE ∂ₜp = [⋯]、KBE ∂ₜu + [⋯] = 0，其推导分别利用 p(x;t), u(x,t) 的什么性质{p8kc0x}
	> 设定：p(x;t) 为 Xₜ 的概率密度，`u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]`
	> 背景：Kolmogorov forward/backward equation，针对 SDE dXₜ = μdt + σdBₜ
	* ∫f(x)p(x;t) = 𝔼f(Xₜ)，∀ f(x)
		* 它建立了 Xₜ 与 p(x;t) 的关系
	* u(Xₜ,t) 为鞅
* KFE ∂ₜp = [⋯]，KBE ∂ₜu + [⋯] = 0，二 [⋯] 项对偶、但出现在等号不同侧，我推测「不同侧」的原因{p8kc0z}
	> 设定：p(x;t) 为 Xₜ 的概率密度，`u(x,t) = 𝔼[ψ(X_T)|Xₜ=x]`
	> 背景：Kolmogorov forward/backward equation，针对 SDE dXₜ = μdt + σdBₜ
	* 时间演化 前向、反向 有区别，导致 ∂ₜ 反号，因此不放在等号同一边
* KBE 考察的 p(x,t;y,T) 定义{p6ib78}
	> 设定：Kolmogorov backward equation，针对 SDE dXₜ = μdt + σdBₜ，终止时间 T
	* X_T|Xₜ = x 的概率密度函数，以 y 为自变量
	* 注意 KBE 将 y,T 视为参数，需对 x,t 求偏导
* 关于 p(x,t;y,T) 的 KBE 推导，我的思路（未严格化）{p6ib7a}
	> 设定：Kolmogorov backward equation，针对 SDE dXₜ = μdt + σdBₜ，终止时间 T
	* 通过取定某个终态值函数 ψ(y) 化为 u(x,t) 的 KBE，由 ψ(y) 任意性可得
	* （无需回忆）具体地 `u(x,t) = 𝔼[ψ(X_T)|Xₜ=x] = ∫p(x,t;y,T)ψ(y)dy` 知 ∫pψ 满足 KBE，由 ψ 任意知 p 满足同一个 KBE
* Feynman-Kac 方程推导思路：uₜ + μuₓ + ½σ²uₓₓ + Vu + f = 0 如何变形（仅一步）{p6ib7c}
	> （注）BC u(x,T) = ψ(x)
	> （注）常见版本是 -Vu，与这里反号
	> （注）按 Wikipedia 说法严格证明较复杂；可推广到 n 维
	* 凑 Itô 公式：令 dXₜ = μdt + σdBₜ
	* 原方程变为 du(Xₜ,t) + (Vu + f)dt = [⋯]dBₜ
* Feynman-Kac 方程推导思路：基于 du(Xₜ,t) + (Vu + f)dt = [⋯]dBₜ 如何构造鞅{p6ib7e}
	> （注）BC u(x,T) = ψ(x)
	> （注）常见版本是 -Vu，与这里反号
	* 写为 d(gu) + (gf)dt = [⋯]dBₜ（构造 g(t) 吸收 V 项）
	* 有 Y = gu + ∫gf 为鞅（因 dYₜ = [⋯]dBₜ）
	* （无需回忆）之后由 uₛ = Yₛ = 𝔼[Y_T|Xₛ = x] 可导出 Feynman-Kac 公式
		* 其中一开始需选取特殊的 g(·) 构造满足 g(s) = 1
* {old}# 高维方程 Lu = 0 希望用 Monte Carlo 求解，MC 目标的构造思路（我的理解）
	> （注）Feynman-Kac 方程就可以这么理解
	* （根据 Lu = 0 形式）构造随机游走 Xₜ，考察其下 du 满足的 SDE
	* 变形凑 dYₜ = [⋯]dBₜ 形式，从而 Yₜ 为鞅
	* 对 Yₛ = 𝔼[Y_T|Xₛ = x] 用 MC 估计，并反解出 uₛ
		* 注：该式也可用作 PINN loss
	* 2025-07-16 拆为两张卡，次日又对背面各点补充短标题
* {old2}# 高维方程 Lu = 0 用 Monte Carlo 求解算法的整体形式，我理解的三步
	> （注）Feynman-Kac 方程就可以这么理解
	* 构造鞅 Yₜ
	* 用 MC：对 Yₛ = 𝔼[Y_T|Xₛ = x] 用 MC 估计（或用 PINN loss 训）
	* 反解 u：最后由 Yₛ 反解出 uₛ
	* 2025-08-22 重构：多步不便于回忆；改为仅记主要矛盾
* 高维方程 Lu = 0 Monte Carlo 估解（或造 PINN loss），对哪个期望表达式用 Monte Carlo 估算{p6jg78}
	> （注）Feynman-Kac 方程就可以这么理解
	* 鞅 Yₜ 的触边时刻取值：用 MC 估计 Yₛ = 𝔼[Y_T|Xₛ = x]
* {old}# 高维方程 Lu = 0 用 Monte Carlo 解，构造鞅 Yₜ 两步
	> （注）Feynman-Kac 方程就可以这么理解
	* 推 SDE：du(Xₜ,t) = [⋯]dt + [⋯]dBₜ
		* 其中随机游走 Xₜ 根据 Lu = 0 形式构造
	* 变形消 drift：凑 dYₜ = [⋯]dBₜ 形式，从而 Yₜ 为鞅
	* 2025-08-22 重构：多步不便于回忆；改为仅记主要矛盾（核心变形）
* 高维方程 Lu = 0 用 Monte Carlo 解，如何构造鞅 Yₜ{p7gf3y}
	> 依据：SDE du(Xₜ,t) = [⋯]dt + [⋯]dBₜ，其中随机游走 Xₜ 根据 Lu = 0 形式构造
	> 背景：Feynman-Kac 方程就可以这么理解
	* 变形消 drift：凑 dYₜ = [⋯]dBₜ 形式，从而 Yₜ 为鞅
* BSDE 变量 (Xₜ,Yₜ,Zₜ) 与原方程变量 u(x,t) 对应关系{p6nb60}
	> 设定：半线性抛物 PDE uₜ + μ·∇u + ½tr[σᵀHess(u)σ] + f(t,x,u,σᵀ∇u) = 0，终值 u(x,T) = g(x)
	> 来源：2505.17032 背景介绍
	* Yₜ = u(Xₜ,t) （标量）
	* Zₜ = σᵀ∇u （向量）
* 关于 (Xₜ,Yₜ,Zₜ) 的 BSDE 形式（不含初终值）{p6nb62}
	> 设定：半线性抛物 PDE uₜ + μ·∇u + ½tr[σᵀHess(u)σ] + f(t,x,u,σᵀ∇u) = 0，终值 u(x,T) = g(x)
	> 来源：2505.17032 背景介绍
	* dYₜ = -f(t,Xₜ,Yₜ,Zₜ)dt + ZₜᵀdBₜ
	* （无需回忆）dXₜ = μdt + σdBₜ 独立求解
* 关于 (Xₜ,Yₜ,Zₜ) 的 BSDE 初终值条件{p6nb64}
	> 设定：半线性抛物 PDE uₜ + μ·∇u + ½tr[σᵀHess(u)σ] + f(t,x,u,σᵀ∇u) = 0，终值 u(x,T) = g(x)
	> 来源：2505.17032 背景介绍
	* 初值 X₀ = ξ 随机
	* 终值 Y_T = g(X_T)
* 可转化为 BSDE 求解的 PDE 形式 uₜ + μ·∇u + ½tr[σᵀHess(u)σ] + f([?1]) = 0，初终值 [?2]{p6nb66}
	> 来源：2505.17032 背景介绍
	* f(t,x,u,σᵀ∇u)，转化为 BSDE 后成为 f(t,Xₜ,Yₜ,Zₜ)
	* u(x,T) = g(x)
* 高维抛物方程 PINN loss 惩罚 BSDE 残差，为何引入额外网络预测 v = ∇u{p6nf7p}
	> 来源：基于 eigDMC-DNN 2002.02600
	* BSDE 时间推进计算频繁调用 ∇u，直接用网络前传给出 v 更高效
	* 需额外惩罚 v = ∇u 残差，仍需算 ∇u，但该部分采样少于 BSDE
	* 注：主笔记位置((p6nf5u))
* BSDE dYₜ = [?] + ZₜᵀdBₜ{p7n98q}
	> 设定：半线性抛物 PDE uₜ + μ·∇u + ½tr[σᵀHess(u)σ] + f(t,x,u,σᵀ∇u) = 0，终值 u(x,T) = g(x)
	> 变量：(Xₜ,Yₜ,Zₜ)
	> 来源：2505.17032 背景介绍
	* dYₜ = -f(t,Xₜ,Yₜ,Zₜ)dt + ZₜᵀdBₜ
	* 注意负号：原抛物 PDE 直接变形成为 dYₜ + fdt = [⋯]dBₜ
* BSDE dYₜ = -f(t,Xₜ,Yₜ,Zₜ)dt + [?]{p7n98s}
	> 设定：半线性抛物 PDE uₜ + μ·∇u + ½tr[σᵀHess(u)σ] + f(t,x,u,σᵀ∇u) = 0，终值 u(x,T) = g(x)
	> 来源：2505.17032 背景介绍
	* dYₜ = -f(t,Xₜ,Yₜ,Zₜ)dt + ZₜᵀdBₜ
* 指数鞅 Mₜ = exp(σBₜ + [?])，其中 Bₜ 为标准布朗运动，σ 为常数{p9ab4x}
	* Mₜ = exp(σBₜ - (1/2)σ²t)，注意负号
	* [src](https://www.zhihu.com/question/607174532/answer/3081508146)，包括 σ 非常数的版本
* Bₜ + μt ≤ -a, ∃t > 0 的概率{p9ae74}
	> 设定：Bₜ 标准布朗运动，常数 `μ,a > 0`
	* exp(-2μa)
* # Bₜ + μt > -a, ∀t > 0 概率计算，构造辅助变量 [?1]，其中系数确定方式 [?2]{p9ae76}
	> 设定：Bₜ 标准布朗运动，常数 `μ,a > 0`
	* Mₜ = exp(-2μXₜ)，其中 Xₜ = Bₜ + μt
		* 系数 -2μ 无需回忆
	* 凑普通指数鞅 Mₜ = exp(σBₜ - (1/2)σ²t)，发现对应 σ = -2μ
	* 制卡当天弃用：改按生成式理解制卡；新卡片((p9ae7e))与此类似，但仍决定保留整套旧卡片
* # Bₜ + μt > -a, ∀t > 0 概率计算，对构造的鞅 Mₜ 取什么停时{p9ae78}
	> 设定：Bₜ 标准布朗运动，常数 `μ,a > 0`
	* min(τ,T)，并令 T → ∞
	* 其中 τ 为首次碰壁时间（即 τ = inf{t > 0 | Bₜ + μt ≤ -a}）
	* 制卡当天弃用：改按生成式理解制卡
* Bₜ + μt ≤ -a, ∃t > 0 概率计算，如何分析该事件{p9ae7a}
	> 设定：Bₜ 标准布朗运动，常数 `μ,a > 0`
	* 首次成立时间视为停时，设法用可选停时定理
* Bₜ + μt ≤ -a, ∃t > 0 概率计算需构造鞅，希望它具有哪两条性质（我的理解）{p9ae7c}
	> 设定：Bₜ 标准布朗运动，常数 `μ,a > 0`
	* 壁位置固定（从而碰壁时期望 与碰壁具体时间无关；Bₜ 不满足该性质）
	* 长时间后大概率趋于 0（便于处理 从未碰壁情形，可用控制收敛定理等）
* Bₜ + μt ≤ -a, ∃t > 0 概率计算，构造鞅 Mₜ = [?1]，其中系数确定方式 [?2]{p9ae7e}
	> 设定：Bₜ 标准布朗运动，常数 `μ,a > 0`
	* 指数鞅 Mₜ = exp(-2μXₜ)，其中 Xₜ = Bₜ + μt
		* 系数 -2μ 无需回忆
	* 代入一般指数鞅表达式 Mₜ = exp(σBₜ - (1/2)σ²t)，发现对应 σ = -2μ
* Bₜ + μt ≤ -a, ∃t > 0 概率计算，碰壁时间 τ 无界，如何处理（以用可选停时定理）{p9ae7g}
	> 设定：Bₜ 标准布朗运动，常数 `μ,a > 0`
	* 截断，改考察停时 min(τ,T)，用定理后再令 T → ∞
* 宋飏 score-based SDE 生成模型，涉及的 reverse SDE 含义为{n7vn3f}
	* 该 SDE 从 t=T 向 t=0 求解，所得概率密度 pₜ(x)（可由 Fokker-Planck 方程刻画）与正向 SDE 相同
	* 注：不同于 backward SDE
* 宋飏 score-based SDE 生成模型，设正向过程 dXₜ = f(t,Xₜ)dt + g(t)dBₜ，则其 reverse SDE 为{n7vn3g}
	* dXₜ = (f - g²∇ₓlog pₜ(x))dt + g dBₜ
	* 即：f 换为 f - g²sₜ
	* [作者主页上的文章网页版](https://yang-song.net/blog/2021/score/)
* 宋飏 score-based SDE 生成模型，设正向过程 dXₜ = f(t,Xₜ)dt + g(t)dBₜ，则其 reverse SDE 推导要点（两点，利用原 SDE 的 Fokker-Planck 方程 dₜpₜ = -(fp)ₓ + ½(g²p)ₓₓ）{n7vn3h}
	* 1. 为引入反向时间的扩散项(!)，拆分 ½(g²p)ₓₓ = -½(g²p)ₓₓ + (g²p)ₓₓ
	* 2. (g²p)ₓₓ = (g²pₓ)ₓ = (g²(∇ₓlog p)p)ₓ；这里用到 g(t) 与 x 无关
	* 可构造 reverse SDE，使其有相同的 Fokker-Planck 方程
	* 注：以上推导适用于高维：g(t) 标量，故可逐分量处理
* 宋飏 score-based SDE 生成模型，设正向过程 dXₜ = fdt + gdBₜ，其中 f,g 关于 x,t 依赖关系、形状（标量、向量、矩阵）分别为{n91e8m}
	* f = f(t,Xₜ) ，向量
		* 和普通 SDE 一样有一般性
	* g = g(t) ，标量
		* 不如普通 SDE 一般：不能依赖于 x，为标量而非矩阵
* score-based SDE 生成模型，设正向过程 dXₜ = f(t,Xₜ)dt + gₜdBₜ，则其 reverse SDE 为 dXₜ = (f - [?]∇ₓlog pₜ(x))dt + σₜdBₜ，其中 σₜ 为人为控制的方差{o3rn54}
	* ½(gₜ² + σₜ²)
* 扩散模型算法最初由两组人分别提出，其依据的理论有所不同，分别为{o3rn15}
	* DDPM
	* Langevin 采样、score matching
	* 来源：2024-03-27 组会，xxy
* 扩散模型算法最初提出时的 score matching 版本设计思路：在拟合了分布的 [?] 后，可对该分布用 [?] 动力学采样{o3rn17}
	* score ∇ₓlog p(x)
	* Langevin 动力学
* 扩散模型算法最初提出时的 score matching 版本设计思路，对图片加噪声的动机（遇到的问题、解决思路）{o3rn19}
	* 问题：原始分布的能量函数太奇异，Langevin 动力学采样效率不高
	* 动机：仿照模拟退火，构造一系列分布、使其能量函数的 landscape 逐步变平坦；通过对图片加噪声实现
* 扩散模型算法最初提出时的 score matching 版本设计思路，拟合 score 所用 loss 理论上为 𝔼_{x∼p}[‖∇ₓlog p(x) - s_θ(x)‖²]，为何在无法获得 score ∇ₓlog p(x) 的 label 的情况下可进行训练{o3rn1b}
	* implicit score matching 提供了等价的 loss 𝔼_{x∼p}[‖s_θ(x)‖² + 2∇ₓ·s_θ(x)]
	* 相关：∇ₓ·s_θ(x) 高维情形 BP 计算复杂度高，一种解决办法((p3jn2n))sliced score matching
* 扩散模型算法最初提出时的 score matching 版本设计思路，implicit score matching 为何成立（即：loss 𝔼_{x∼p}[‖∇ₓlog p(x) - s_θ(x)‖²] 可用 𝔼_{x∼p}[‖s_θ(x)‖² + 2∇ₓ·s_θ(x)] 替代）{o3rn1d}
	* 先二项式展开
	* 𝔼_{x∼p}[‖∇ₓlog p(x)‖²] 为常数，可忽略
	* 交叉项可用分部积分处理
	* 注：与((p3kk82))y score、y|x score loss 等价性类似，仅交叉项处理有区别
* Hutchinson trace estimator 如何估计 tr(A){p3jn2l}
	* tr(A) = 𝔼vᵀAv，v 为 isotropic 随机向量（即 𝔼vvᵀ = Iₙ；原版使用 v ∼ N(0,Iₙ)）
	* [src](https://zhuanlan.zhihu.com/p/597490389)
	* 注：适用范围包括 A 难取 entry 但矩阵向量乘 Av 好算情形；例如算 tr(Aᵏ)
* sliced score matching 如何估计 ∇·s{p3jn2n}
	> 设定：s: ℝⁿ → ℝⁿ 高维 NN；相对完整记号 `∇ₓ·s_θ(x)`
	* 用 Hutchinson trace estimator
	* tr(∇s) = 𝔼vⁱ∂ᵢsⱼvʲ ，内部项用 FP、BP 均可计算
		* 相关：vⁱ∂ᵢsⱼvʲ 自动微分相关计算方式((p3kb3g))
* score 与 noise 关系（denoising score matching 所基于的关键等式）{p3jg30}
	* ∇log p(y|x) = -ε/σ = (x - y)/σ²
	* 其中 y = x + σε，ε ~ N(0,I)
	* 注：考察的是 y|x 的 score，而非原来的 x 的
* SDE 扩散生成问题 转化为 去噪网络拟合问题，涉及的 3 步转化{p3lb8d}
	* 反向 SDE drift 需用 y|σ score（即 Xₜ|t score）
		* ((n7vn3g))前向 SDE 取为 dXₜ = dWₜ, X₀ ~ p_data(x)，则反向 SDE dXₜ = -s(Xₜ) + dWₜ
	* 只需拟合 y|x,σ score（即 Xₜ|X₀,t score；见((p3kk82))y|x score vs. y score）
	* 只需去噪：其取值等于负的时间平均 noise（不是“单位时间 noise”，后者 √t 量级）
		* ((p3jg30))score = (x - y)/σ² = (X₀ - Xₜ)/t 时间平均 noise
	* 总之：最终反向 SDE 演化时，每步 drift s(y)δt 即按时间比例去除部分噪声
	* 注：第一步对 denoising score matching 为 Langevin MCMC → 需 x score → 近似为 y score
* 拟合 y score 等价于拟合 y|x 的 score，「原推导」大意{p3kk82}
	> 具体表述：loss 𝔼_{p(y)}[‖s(y) - ∇log p(y)‖²] 与 𝔼_{p(y,x)}[‖s(y) - ∇log p(y|x)‖²] 等价
	> 背景：用于 denoising score matching、NCSN（我理解为 SDE 扩散生成模型）
	* 二项式展开
	* 𝔼[‖s(y)‖²] 左右相同
	* 𝔼_{p(y)}[‖∇log p(y)‖²]、𝔼_{p(y,x)}[‖∇log p(y|x)‖²] 均与待优化变量 s(y) 无关
	* 专门验证交叉项 ∫p(y)s(y)·∇log p(y)dy 发现相等
	* 注：与 implicit score matching 推导类似，仅交叉项处理有区别
	* [src](https://zhuanlan.zhihu.com/p/597490389)
* 拟合 y score 等价于拟合 y|x 的 score，「我自己的」推导两步{p7gh1p}
	> 具体表述：loss 𝔼_{p(y)}[‖f(y) - ∇log p(y)‖²] 与 𝔼_{p(y,x)}[‖f(y) - ∇log p(y|x)‖²] 等价
	> 背景：用于 denoising score matching、NCSN（我理解为 SDE 扩散生成模型）
	* 条件期望关系：s(y) = 𝔼s(y|x)，期望关于 x ~ p(x|y)
		* 记号 s(y) := ∇log p(y)；结论类似于 ((p7ge44))流匹配 vₜ(y) = 𝔼vₜ(y|x)
	* 偏差方差分解：𝔼ₓ[‖f(y) - s(y|x)‖²] = ‖f(y) - 𝔼ₓs(y|x)‖² + 𝔼ₓ[‖𝔼ₓs(y|x) - s(y|x)‖²]
		* RHS 首项即 ‖f(y) - s(y)‖²，末项与 f(y) 无关
* denoising score matching 主要思路，拟合 x score 问题的两步转化{p3kk84}
	* 近似为拟合 y = x + σε 的 score（ε ~ N(0,I)），σ 小从而分布变化不大
		* 注：其采样只用 x score；相比之下基于 SDE 的扩散生成要用所有 x_σ 的 score，故不要求 σ 小
	* 等价于拟合 y|x score
* 扩散生成模型 loss 对不同 σ 加的权重为 λ(σ) = [?1]，动机 [?2]{p3kk86}
	> 设定：完整 loss `⊕ᵢλ(σᵢ)𝔼_{p(y,x|σᵢ)}[‖s(y;σᵢ) + ε/σᵢ‖²]`
	> 背景：NCSN 算法，与 DDPM 等价
	* λ(σ) = σ²
	* 如此加权后 loss `⊕ᵢ𝔼_{p(y,x|σᵢ)}[‖σᵢs(y;σᵢ) + ε‖²]` 每项均为 O(1) 量级
		* 另：训练中经验结论 s(y;σ) ∼ 1/σ，确实与 ε 一样为 O(1) 量级
	* 注：NN 拟合对象似应为 σs(y;σ)
* classifier guidance 为表示 x|c 的 score 利用公式 [?1]、其解读 [?2]{p3kk88}
	> 设定：「条件」生成模型，条件 c、样本 x；具体为 NCSN 生成算法
	* ∇log p(x|c) = ∇log p(c|x) + ∇log p(x) ；基于 Bayes 公式
	* 条件生成 score = 分类器梯度 + 无条件生成 score
* classifier guidance 用于 SDE 扩散生成模型时缺点{p3kk8a}
	> 设定：「条件」生成模型，条件 c、样本 x；具体为 NCSN 生成算法
	* 分类器 p(c|x) 要考虑带噪声的 x，无法复用已训好的（基于干净数据的）分类器，需自己重训
* SDE 扩散生成模型 classifier-free guidance 对 score 做什么修改，我的理解{p3lb2h}
	> 设定：「条件」生成模型，条件 c、样本 x；具体为 NCSN 生成算法
	* 拟合的 score 形如 s_θ(y;σ,c)，输入包括 c
* 流匹配生成模型思路，为构建速度场 vₜ(x) 将 N(0,I) 转化为目标分布 q(x)，只需构造什么{p61a17}
	* 条件速度场（或其生成的转移轨迹）vₜ(x|y)（∀y ~ q），将 N(0,I) 转化为单点分布 δ_y（或 N(y,σ²I), σ ⟪ 1）
	* 注：我理解中 SDE 生成模型也是做类似的转化，但连接 x,y 的轨迹随机而非确定
* 流匹配生成模型 原文讨论了哪两种转移轨迹的特例{p61a19}
	* diffusion, OT
* 「diffusion 型」流匹配生成模型 vs. SDE 扩散生成模型，转移轨迹中 x|y 分布的异同，我的理解{p61a1b}
	> 设定：需构建条件速度场 vₜ(x|y) 将 N(0,I) 转化为目标分布 `δ_y`
	* 给定 y 条件下，xₜ 分布相同，但 (xₛ,xₜ) 联合分布不同（对于流匹配，一个确定时另一个也确定）
* 流匹配生成，vₜ(x) = 𝔼vₜ(x|y)、pₜ(x) = 𝔼pₜ(x|y) 中期望分别在什么意义下取{p7ge44}
	> 设定：条件速度场 vₜ(x|y) 将基础分布（如 N(0,I)）转为单点 y
	> 要求：边缘速度场 vₜ(x) 将基础分布转为目标分布 y ~ q(x)
	* vₜ(x)：y ~ pₜ(y|x)（或更严谨的写法 p(x₁|xₜ)），表达式可由贝叶斯公式写出
		* 注：特殊情形为 ((p7gh1p))score sₜ(x) = 𝔼sₜ(x|y)
	* pₜ(x)：y ~ q(y)
	* 注：基于 [src](https://zhuanlan.zhihu.com/p/4116861550)
* 流匹配生成，由 vₜ(x|y) 给出 vₜ(x)，验证后者满足要求的方式 [?1]，需利用关系 [?2]{p7ge46}
	> 设定：条件速度场 vₜ(x|y) 将基础分布（如 N(0,I)）转为单点 y
	> 要求：边缘速度场 vₜ(x) 将基础分布转为目标分布 y ~ q(x)
	* 验证关于 pₜ(x) 的 Fokker-Planck 方程（无噪声版）
	* pₜ(x) = 𝔼pₜ(x|y)（边缘分布、条件分布关系）
* 流匹配生成，定义 pₜ(x) 的过程有哪三步（我的理解）{p7ge48}
	> 设定：t = 0 时等于基础分布（如 N(0,I)），t = 1 时等于目标分布 q(x)
	* vₜ(x|y)，人工设计
	* pₜ(x|y)，由 vₜ(x|y) 和基础分布自动确定
	* pₜ(x)，由 pₜ(x|y) 和目标分布 q(x) 自动确定
* 多步生成模型，构造 pₜ(x) 先转化为构造 pₜ(x|y) 的好处{p7ge4a}
	> 设定：SDE 生成、流匹配都是，目标分布 y ~ q(x)
	* pₜ(x) 很难有解析表达式（因需对接的终态 p₁(x) = q(x) 没有）
	* 但 pₜ(x|y) 可以有（此时终态 p₁(x|y) = δ_y 已退化）
* 流匹配：图像分辨率变化时，加噪需考虑 [?1]，可用处理方式 [?2]（Stable Diffusion 3 用到）{q15g28}
	* 加相同级别噪声时，高分辨率图像破坏程度较小
	* time schedule shift，间接增加高分辨率图像的噪声级别
	* 信源见主笔记((srs:q15h4r))
* 流匹配：图像（分辨率可变）被噪声破坏的程度如何度量{q15g2a}
	> 设定：我的记号 xₜ = ty + (1-t)ε；原文时间与我的记号反向
	> 背景：Stable Diffusion 3，time-schedule shift 选取希望保持该量不变
	* 根据 xₜ 可估计空间平均 mean(y)：`\hat{m} = mean(xₜ)/t`
	* `\hat{m}`（作为关于 ε 的随机变量）标准差 作为破坏程度的度量
	* 注：Stable Diffusion 3 原文只是用此估计范围，最终 shift 方案是人工评测实验选的
* Stable Diffusion 3 流匹配训练采样 t 的分布不用 U([0,1])，而是希望有什么性质{q15g2c}
	* 中间概率更大，因认为噪声小和大的时候都相对好学
* Stable Diffusion 3 文本 tokens 生成方式，包括所用模型 [?1]、特征提取位置 [?2]{q15g2e}
	* 前一半：两个 CLIP，取倒数第二层特征，沿 channel concat、补 0
	* 后一半：T5-XXL，取最后一层特征
	* （重读即可）结果统一过线性层，以对齐图像 patch embedding
* 已有瞬时速度场 vₜ(x)，待训网络拟合 flow map ϕ(x)。为避免数值积分，何恺明 MeanFlow 用了什么策略（我理解的 3 点）{p61b5x}
	> 背景：流匹配训练已获得 vₜ(x)，进一步希望生成过程只需一次推理，无需从 0 到 1 数值积分
	* 1. 拟合所有始末时间 ϕ(x;s,t)，而非只拟合需要的 ϕ(x;0,1)
	* 2. 网络表达平均速度 u(x;s,t) 而非位移 ϕ
		* 注：我理解的好处，网络预测输出幅值变化不大，且训练的方程简单
	* 3. 训练 u 用微分方程（类似 PINN loss）而非积分方程
* 何恺明 MeanFlow 拟合 u(x;s,t) = (1/(t-s))∫ₛᵗv(x;τ)dτ 的 loss 类似 PINN，做了哪两点修改{p61b5z}
	* 变形为 (t-s)u(x;s,t) = ∫ₛᵗv(x;τ)dτ 再求导
	* 最终 ODE residual loss 对 dₜu 项用 stop-gradient 避免求二阶导
		* 据说原文的解释，loss 为零即可对应真实解，而实验中该近似仍能收敛
* 流匹配 loss 涉及的 vₜ(x|y) 是平均速度还是瞬时速度{q4lh34}
	> 设定：xₜ = αₜy + βₜϵ，平均速度 (xₜ - y)/(1 - t), 瞬时速度 αₜ'y + βₜ'ϵ
	* 瞬时速度
* dXₜ = g(t)dWₜ 对应的 reverse ODE 与相应流匹配速度场是否一致{q4lh36}
	> 设定：对应流匹配构造为 Xₜ = X₀ + σₜϵ 使 p(xₜ) 与扩散生成一致
	> 回忆：reverse ODE dXₜ = -½g(t)²sₜ(Xₜ)dt, `sₜ(x) = 𝔼_{y|x}[sₜ(x|y)] = 𝔼[∇ₓlog pₜ(x|y)]`
	> 回忆：流匹配速度场 `vₜ(x) = 𝔼_{y|x}[vₜ(x|y)] = 𝔼[σₜ'ϵ]`
	> 背景：扩散生成vs流匹配
	* 一致
	* 推导：score sₜ(x|y) = ∇ₓlog pₜ(x|y) = ε/σₜ, σₜ² = ∫₀ᵗg(s)²ds，计算可验证 -½g(t)²/σₜ = σₜ'
* {x}# ((q4lh36))注：上方 SDE 若加回 drift f，特例上可验证与流匹配速度场一致
	* SDE dXₜ = -Xₜdt + dWₜ
	* 有 (Xₜ|X₀=y) ∼ N(μ=exp(-t)y, σ²=(1-exp(-2t))/2)
		* 过程：d(exp(t)Xₜ) = exp(t)(Xₜ + dXₜ) = exp(t)dWₜ
		* (exp(t)Xₜ|y) ∼ N(μ=y, σ²=(exp(2t)-1)/2)
	* 流匹配参化 (Xₜ|y) = exp(-t)y + √{(1-exp(-2t))/2}ε
	* 扩散模型 reverse ODE 计算
		* sₜ(x|y) = ε√2/√{1-exp(-2t)}
		* rev ODE: dXₜ = (-Xₜ - ½sₜ)dt
	* 流匹配速度场计算
		* vₜ(x|y) = -exp(-t)y + (ε/√2).exp(-2t)/√{1-exp(-2t)} （流匹配轨迹求导）
		* = -Xₜ + (ε/√2)/√{1-exp(-2t)} （代入流匹配轨迹形式）
	* 利用 sₜ(x) = 𝔼_{y|x}[sₜ(x|y)]，vₜ(x) = 𝔼_{y|x}[vₜ(x|y)] 即得二者相等
* dXₜ = g(t)dWₜ 对应的 reverse ODE 常速度外推结果 ≠ 𝔼[y|x]（通常），为使等号成立，可如何改外推方式 [?1]，原理 [?2]{q4lh38}
	> 回忆：reverse ODE dXₜ = -½g(t)²sₜ(Xₜ)dt, 常速度外推到 t=0 得 `X₀* = Xₜ + ½g(t)²sₜ(Xₜ)·t`
	> 记号：y = X₀，x = Xₜ, σₜ² = ∫₀ᵗg(s)²ds
	* 时间步长改用 t' = 2σₜ²/g(t)²，注意不直接依赖于 t
		* 等价的：速度乘系数 2σₜ²/g(t)²t
	* 由 (1) score sₜ(x|y) = -ε/σₜ, (2) x - y = σₜε, 有 y = x + σₜ²sₜ(x|y), 𝔼[y|x] = x + σₜ²sₜ(x)
* dXₜ = g(t)dWₜ 的 reverse ODE 常速外推结果 = 𝔼[y|x] ⇐ g(t) = ...，我的推导要点{q4lh3a}
	> 回忆：reverse ODE dXₜ = -½g(t)²sₜ(Xₜ)dt, 常速度外推到 t=0 得 `X₀* = Xₜ + ½g(t)²sₜ(Xₜ)·t`
	> 记号：y = X₀，x = Xₜ, σₜ² = ∫₀ᵗg(s)²ds
	* 与常速度流匹配 x = y + atϵ 对齐
	* （以下为具体解释，无需回忆）
	* 对于流匹配，常速度外推后 X₀* = y ⇔ 瞬时速度等于平均速度
		* ⇔ 流速 vₜ(x|y) 与 t 无关
		* ⇔ 流匹配形如 x = (1-bt)y + atϵ
		* 注：能与 SDE 有相同的 pₜ(x|y) 则额外要求 b = 0
	* pₜ(x|y) 相同的 SDE 对应的 reverse ODE 与该流匹配速度场一致((q4lh36))，故常速度外推同样成立
	* 该 SDE 满足 σₜ = at, 计算得 g(t) = a√(2t)
	* 另：在((q4lh38))中解方程 2σₜ²/g(t)²t = 1 亦可，结论相同
* rectified flow 引入动机，针对流匹配-OT 的什么缺点{q5199v}
	* 流匹配-OT 中尽管条件轨迹 vₜ(x|y) 是直线，但 vₜ(x) = 𝔼vₜ(x|y) 可能很曲折
	* 导致推理 ODE 所需时间步长小
	* [src](https://mp.weixin.qq.com/s/eMqIPCI_ytOB8zx_Kwo6vQ)
* rectified flow 基于 流匹配-OT 做了什么修改{q5199x}
	* 类似蒸馏，把第一次学到的路径拉直；自举 bootstrapping
	* 1. 训普通 流匹配-OT 模型
	* 2. 采样 ε ↦ y 数据
	* 3. reflow xₜ = (1 - t)ε + ty，据此训新模型
* 连续时间 OT、Schrödinger bridge 均定义为某个优化问题的解，其被优化变量、目标函数、约束分别为{q5199z}
	* 被优化变量：速度场 vₜ(x) vs. 随机过程 P
	* 目标函数（min）：平均动能 ∫₀¹𝔼_{xₜ}‖vₜ(xₜ)‖²dt vs. KL(P‖R), R 参考过程（如布朗运动）
	* 边界条件（二者一致）：源分布、目标分布均匹配，即 x₀ ~ p₀, x₁ ~ p₁
* 设 n 维随机变量 X ∼ p(x)，则用 Hessian ∇²log p(x)（假设非退化）来近似估计协方差矩阵的一种可能方式 Cov(X) ≈ [?]{naba1f}
	* Cov(X) ≈ (-∇²log p(xₘ))⁻¹，xₘ = argmax log p(x)
		* 注意负号（∇²log p(xₘ) 负定）
	* 理由：正态分布近似 X' ∼ 𝓝 (xₘ,Σ)，选取合适的 Σ 使近似分布 log p(x') 成为 log p(x) 在 xₘ 处的二阶泰勒展开
		* 此时 Cov(X) ≈ Cov(X') = Σ
	* 注：若原来的 p(x) 为多元正态分布，则该估计为精确值
* 贝叶斯统计：“共轭先验”的含义{ncvf3d}
	* 称似然函数 p(x|θ) 以先验分布 p(θ) 为共轭先验，若根据 p(θ) 给出的后验分布 p(θ|x) 与 p(θ) 属于同一类概率分布
	* 来源：Wikipedia 词条“conjugate prior”
* Δⁿ⁻¹ = {x ∈ [0,1]ⁿ|∑xᵢ = 1} 上的均匀分布 属于哪种分布的特例{ncvf6b}
	* Dirichlet 分布 Dir(α)，参数 α = [1,1,..,1]
	* 注：Dirichlet 分布是 Categorical 分布的共轭先验
* 高维（包括无穷维）正态分布 x ~ N(μ,Σ) 采样：设 Σ 对角化结果为 Σ = ∑ᵢλᵢvᵢvᵢᵀ，则采样方式可为 x = [?]，其中 ξᵢ ~ N(0,1){o4498n}
	* x = μ + ∑ᵢξᵢ√λᵢvᵢ
	* 注：GRF N(0,(I-Δ)⁻¹) 的采样可这么理解，按 KL 展开
* 对 GRF N(μ,Σ)，我理解的 Σ = (-Δ + τ²I)⁻ᵅ 与 Σ = k(x,y) 两种表达式的关系{p26e72}
	* Σ = (-Δ + τ²I)⁻ᵅ 为积分算子，其积分核（Green 函数）形如 k(x,y)
	* 注：二者均可考虑谱分解 Σ = ∑ᵢλᵢvᵢ(x)vᵢ(y) = ∑ᵢλᵢvᵢ⊗vᵢ（Mercer 定理），有限维情形对应 ∑ᵢλᵢvᵢvᵢᵀ
* 二元正态分布 [X,Y] ~ N(μ,Σ)，计算 𝔼max(X,Y), 𝔼min(X,Y) 的方式{o4oa1g}
	* 利用 max + min = X + Y, max - min = |X - Y|
	* 𝔼|X - Y| 可计算：X - Y 为一元正态分布，pdf 可求出
* 概率论，依概率收敛 Xₙ —ᴾ→ a的定义{o4pn4a}
	* `∀ε > 0, lim Pr(|Xₙ - a| < ε) = 1`
* 随机变量 依分布收敛 Xₙ —ᵈ→ X 定义 [?1]，与其他常见 3 收敛定义的区别 [?2]{q96a8l}
	* Fₙ(x) = Pr(Xₙ ≤ x) → F(x) 对 F(x) 的「连续点」成立
	* 不要求 Xₙ 与 X 定义在相同的概率空间 Ω 上
	* 注：允许 X 为向量取值
* 随机变量 依概率收敛 Xₙ —ᴾ→ X 定义，假定 X 取值在度量空间中{q96a8n}
	* `∀ε > 0, lim Pr(d(Xₙ,X) > ε) = 0`
* 随机变量收敛 4 定义的强弱关系{q96a8p}
	* a.s. or Lᵖ ⇒ 依概率 ⇒ 依分布
* 随机变量 X 特征函数 ϕ_X(t) = [?1]，矩母函数 M_X(t) = [?2]，各自优势 [?3]{q96g35}
	* ϕ_X(t) = 𝔼exp(itX)，M_X(t) = 𝔼exp(tX)
	* 前者总可定义，后者实数值故可放缩（如 Markov 不等式、Chernoff 界等）
	* [src](https://www.zhihu.com/question/601276961/answer/2062513614154741689)
* Xₙ → X 在 [?1] 意义下收敛 ⇒ 特征函数 ϕₙ(t) → ϕ(t) 在 [?2] 意义下收敛{q96g37}
	> 背景：概率论 Lévy 连续性定理 正向，即正极限定理
	* 依分布，内紧一致（即 C(ℝ) 紧开拓扑）
* 特征函数 ϕₙ(t) → ϕ(t) 在 [?1] 意义下收敛 and [?2] ⇒ ∃X 对应 ϕ(t)，Xₙ —ᵈ→ X{q96g39}
	> 背景：概率论 Lévy 连续性定理 逆向，即逆极限定理
	* 逐点，ϕ(t) 在 t=0 连续
* 特征函数逐点 ϕₙ(t) → ϕ(t) 但 ϕ(t) 不对应某随机变量的特征函数的例子{q96g3b}
	> 背景：概率论 Lévy 连续性定理 逆向，即逆极限定理
	* Xₙ 概率质量逃逸至无穷（导致 ϕ(t) 在 t=0 不连续）
* 随机向量 Xₙ —ᵈ→ X ⇔ cᵀXₙ —ᵈ→ cᵀX，∀c ∈ ℝᵏ，该定理名称{q96g3d}
	* Cramér–Wold 定理
* 概率论：掷公平硬币 101 次，甲得分为序列中 HH 个数，乙得分为 HT 个数，得分多的赢，则甲、乙谁获胜概率大{o52g4n}
	* 乙胜率大
	* 注：笔记系统中位置((o52g45))
* 离散概率分布 Pr(X=k) = k⁻ᵃ/ζ(a)（衰减速率为幂函数）的名称（a > 1）{p1gf41}
	* Zipf 分布
* p ~ U([0,1]), X ~ Geom(p) 来自随机参数几何分布，则我推导整体概率分布 Pr(X = k) 的思路{p2gl67}
	* file:///home/yzh/oc-ptis/attached/p2gl63-geom-distr-rand-param-SRS.xopp
		* 构造 X 生成方式：给定 p 后在竖直线段采样，据结果给出 X
		* 从而可通过方形区域采样直接给出 X
		* 事件 {X = k} 对应其中一块区域，面积容易计算
	* 注：结果为 Pr(X = k) = 1/k - 1/(k + 1) = 1/k(k + 1)
		* 渐近行为 Pr(X = k) = O(1/k²) 不再像 Geom(p) 一样指数衰减
* 交叉熵 与 KL 散度 的关系{p1vk26}
	* KL(q‖p) = 𝔼_q[log(q/p)] = 𝔼_q[-log(p)] - 𝔼_q[-log(q)] = (q,p 的交叉熵) - (q 本身的熵)
* 交叉熵 定义（设真实分布 q，近似分布 p）{q6kb3v}
	* 𝔼_q[-log(p)]
* 数理统计“充分统计量”定义，何时称 T = T(X₁,…,Xₙ) 为 θ 的充分统计量{p1vg5n}
	> 来源：茆诗松《概率论与数理统计教程》第三版 p224 def5.5.1
	* 给定 T 的条件分布 X₁,…,Xₙ|T 与 θ 无关
* T = T(X₁,…,Xₙ) 为「充分统计量」的充要条件 f(x₁,…,xₙ;θ) = [?]{p1vg5p}
	> 名称：数理统计因子分解定理
	> 设定：X₁,…,Xₙ 为 iid 样本，f 为（连续）概率密度或（离散）概率分布列
	> 要求：分解为 f(..) = g(..)h(..) 形式
	> 来源：茆诗松《概率论与数理统计教程》第三版 p225 thm5.5.1
	* f(x₁,…,xₙ;θ) = g(T;θ)h(x₁,…,xₙ)
* 无偏估计 θ^ = θ^(x₁,..,xₙ) 的方差下界 Var(θ^) ≥ [?]（根据 Cramer-Rao 不等式）{p22j4t}
	> 来源：茆诗松《概率论与数理统计教程》第三版 p243 thm6.3.4
	* Var(θ^) ≥ 1/nI(θ)
	* 其中 I(θ) 为 Fisher information
* Cramer-Rao 不等式 Var(θ^) ≥ 1/nI(θ) 使用条件，参数估计 θ^ = θ^(x₁,..,xₙ) 应满足什么条件{p22j4v}
	> 来源：茆诗松《概率论与数理统计教程》第三版 p243 thm6.3.4
	* θ^ 为 θ 的无偏估计
* 统计量 T(x₁,..,xₙ) 的方差下界 Var(T) ≥ [?]/nI(θ)（根据 Cramer-Rao 不等式）{p22j4x}
	> 来源：茆诗松《概率论与数理统计教程》第三版 p243 thm6.3.4
	* Var(T) ≥ (∂𝔼[T]/∂θ)²/nI(θ)
	* 注意平方
* “停时”含义{p6fm52}
	> 设定：随机过程，X₁,X₂,… iid，N 为停时
	* 决定停止的时间点只依赖于停止前的信息
	* [ref](https://zhuanlan.zhihu.com/p/561124047)
* Wald's equation 𝔼[S_N] = [?]{p6fm54}
	> 设定：随机过程，X₁,X₂,… iid，N 为停时，`𝔼[N] < ∞`，S_N = X₁ + … + X_N
	* 𝔼[S_N] = 𝔼[X₁]𝔼[N]
* Wald's equation 𝔼[S_N] = 𝔼[X₁]𝔼[N] 证明思路{p6fm56}
	> 设定：随机过程，X₁,X₂,… iid，N 为停时，`𝔼[N] < ∞`，S_N = X₁ + … + X_N
	* S_N = ∑XᵢIᵢ
	* 证明 Xᵢ，Iᵢ 独立
	* [src](https://www.zhihu.com/question/22959818/answer/73948348)
* 公式 𝔼[S_N] = 𝔼[X₁]𝔼[N] 名称{p7gf3c}
	> 设定：随机过程，X₁,X₂,… iid，N 为停时，`𝔼[N] < ∞`，S_N = X₁ + … + X_N
	* Wald's equation
* “鞅”含义，包括离散、连续时间版本{p6ib5x}
	> 来源：Wikipedia martingale
	* 随机过程未来值的期望 等于当前值
	* 离散：𝔼[Xₙ₊₁|X₁,…,Xₙ] = Xₙ
	* 连续：𝔼[Xₜ|{X_τ,τ≤s}] = Xₛ, s ≤ t
	* 注意要明确写为条件期望，且取值与条件无关
* 确保 𝔼[X_T] = 𝔼[X₀] 的定理名称{p6kf39}
	> 设定：Xₙ（或 Xₜ）为鞅，T 为停时
	* Doob's optional stopping time theorem，即 杜布可选停时定理
* Cylindrical Wiener process 定义{p6oe8l}
	> 背景：stochastic PDE 涉及；同时有时空变量
	> 来源：SPDEBench-2505.18511
	* W(t) = ∑ϕᵢβᵢ(t)
	* 其中 {ϕᵢ} 为 H 标准正交基，βᵢ(t) 为 iid 布朗运动
* Cylindrical Wiener process 为 [?]-valued stochastic process{p6oe8j}
	> 背景：stochastic PDE 涉及；同时有时空变量
	> 来源：SPDEBench-2505.18511
	* H-valued，其中 H 为「可分」Hilbert 空间
	* 注：可分似保证基底个数可数
* 加权期望等于新分布期望：𝔼_{x∼p(x)}[f(x,y)p(y|x)/p(y)] = 𝔼_{x∼[?]}[f(x,y)]{p7gg3p}
	* 𝔼_{x ∼ p(x|y)}[f(x,y)]
* Itô-Taylor 公式算 Euler-Maruyama 格式残差，推导思路{pckf6k}
	> 目标：Xₜ = X₀ + b(0,X₀)t + σ(0,X₀)Bₜ + R，希望给出 R 表达式
	> 设定：dXₜ = b(t,Xₜ)dt + σ(t,Xₜ)dBₜ
	* Xₜ = X₀ + ∫bds + σdBₛ
	* 右端项的 b(t,Xₜ), σ(t,Xₜ) 再用 Itô 公式估计
	* 注：所用估计具体形式 f(t,Xₜ) = f(0,X₀) + ∫(L¹f)(s,Xₛ)ds + (L⁰f)(s,Xₛ)dBₛ
* SDE：∫Wₜ·dWₜ 计算方式{pckf6m}
	* 对 d(‖Wₜ‖²/2) 用 Itô 公式
* 1D SDE 的 Milstein 数值格式推导思路{pckf6o}
	> 设定：dXₜ = b(t,Xₜ)dt + σ(t,Xₜ)dBₜ
	* 计算 Xₜ = X₀ + b(0,X₀)t + σ(0,X₀)Bₜ + R ，见((pckf6k))
	* R 表达式中只保留最高阶项 ∫dBₛ∫σσ'dBₜ，内部函数用其初值近似
* 1D SDE 的 Milstein 格式 ΔXₙ = bΔtₙ + σΔBₙ + [?]{pckf6q}
	> 设定：dXₜ = b(t,Xₜ)dt + σ(t,Xₜ)dBₜ
	* ΔXₙ = bΔtₙ + σΔBₙ + (1/2)σσₓ((ΔBₙ)² - Δtₙ)
* VAE 与 EM 中「z 含义」[?1]、分布 [?2] 的区别{q67m70}
	* EM：z 客观存在、无法观测的隐变量，p(z|θ) 常依赖于 θ
	* VAE：z 人造隐向量，p(z) 常取为固定正态分布
* VAE 与变分 EM 中「q(z) ansatz」区别{q67m72}
	* 变分 EM 用一般的 q(z₁,…,zₙ)
	* 平均场变分 EM((n6ba9t)) 特殊化为 ∏ᵢqᵢ(zᵢ)
	* VAE 再特殊化为 qᵩ(zᵢ|xᵢ)
* VAE 与变分 EM「优化方式」区别{q67m74}
	* 变分 EM q,θ 交替优化
	* VAE 联合优化
