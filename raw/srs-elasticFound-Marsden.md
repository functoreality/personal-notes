x}# Marsden 弹性力学基础（Mathematical Foundations of Elasticity）
	* 2025-09-04 从 Marsden-intro2mechSym.md 独立
* # 设 ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 均为黎曼流形，X ∈ B，有 T_X[ϕ] ∈ 𝖵𝖾𝖼(T_X(B),Tₓ(S))，为何可定义 T_X[ϕ]ᵀ ∈ 𝖵𝖾𝖼(Tₓ(S),T_X(B))（Marsden 弹性力学基础 p49）{o7de30}
	* 
* {old}# 设 ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 黎曼流形，则 Green 形变张量 C ∈ 𝖵𝖡([?],[?])（Marsden 弹性力学基础 p49）
	* C ∈ 𝖵𝖡(TB,TB) = 𝖵𝖡(TB)
	* 即：在「参考位形」空间 的切空间 定义的线性变换
	* 2025-07-30 重构：原问法退化到纯机械记忆
* Green 形变张量 C ∈ 𝖵𝖡([?1])，Finger 形变张量 b ∈ 𝖵𝖡([?2]){o7de32}
	> 设定：ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 黎曼流形
	> 来源：Marsden 弹性力学基础 p49
	* C ∈ 𝖵𝖡(TB)，b ∈ 𝖵𝖡(TS)
	* 即：Green 张量使用「参考位形」空间，Finger 使用「物理」空间
* 设 ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 黎曼流形，则 T[ϕ] ∈ 𝖵𝖡(TB,TS) 与 Green 形变张量 C ∈ 𝖵𝖡(TB) 的关系（Marsden 弹性力学基础 p49）{o7de34}
	* C = FᵀF，F = T[ϕ]
	* 注意不是 b = FFᵀ ∈ 𝖵𝖡(TS)
* 设 ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 黎曼流形，F = T[ϕ]，则定义 Finger 形变张量 b = FFᵀ ∈ 𝖵𝖡(TS) 比定义 Green 形变张量 C = FᵀF ∈ 𝖵𝖡(TB) 对 ϕ 多出了什么额外的要求（Marsden 弹性力学基础 p50）{o7e93f}
	* ϕ⁻¹∃
* Green 形变张量 C = [?1] ∈ 𝖵𝖡(TB)，Finger 形变张量 b = [?2] ∈ 𝖵𝖡(TS){p7ul9w}
	> 设定：ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 黎曼流形
	> 来源：Marsden 弹性力学基础 p49
	* C = FᵀF，b = FFᵀ，F = T[ϕ]
	* 即：Green 张量使用「参考位形」空间，Finger 使用「物理」空间
* 设 ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 黎曼流形，则 material (Lagrangian) strain tensor E ∈ 𝖵𝖡(TB) 的定义（Marsden 弹性力学基础 p56）{o7e902}
	* 2E = C - I，其中 C ∈ 𝖵𝖡(TB) 为 Green 形变张量
	* 注意有 2，I 在后
* 设 ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，(B,G)、(S,g) 黎曼流形，则 spatial (Eulerian) strain tensor e ∈ 𝖵𝖡(TS) 的定义（Marsden 弹性力学基础 p57）{o7e904}
	* 2e = i - b⁻¹，其中 b ∈ 𝖵𝖡(TS) 为 Finger 形变张量
	* 注意 material E 定义中 I 在减号后，这里 i 在减号前
* 张量分量记号，张量坐标（标量）tᵃ 与向量 eᵃ 分别表示什么含义（Marsden 弹性力学基础 p65）{o7ck94}
	* eᵃ ∈ Vᵛ 为基底
	* 对 t ∈ V，记 tᵃ = eᵃ(t) ∈ ℝ 为其在该基底下的坐标分量
* （重读即可）对黎曼流形 (M,g)，有降角标算子 g^♭ ∈ 𝖵𝖡([?],[?])（Marsden 弹性力学基础 p68）{o7ck60}
	* g^♭ ∈ 𝖵𝖡(TM,TᵛM)
	* 注：其作用结果为 tᵃ ↦ tₐ，是降角标的算子
* （重读即可）对黎曼流形 (M,g)，记号 g^[?] ∈ 𝖵𝖡(TᵛM,TM)（Marsden 弹性力学基础 p68）{o7ck62}
	* g^♯ ∈ 𝖵𝖡(TᵛM,TM)
	* 注：其作用结果为 tₐ ↦ tᵃ，是升角标的算子
* 对黎曼流形 (M,g)，F ∈ C^∞(M)，其梯度定义为 ∇F = [?] ∈ [?]（Marsden 弹性力学基础 p69）{o7ck64}
	* ∇F = (dF)^♯ ∈ ΓTM
* g ∈ S²TᵛS 与 Green 形变张量 C ∈ 𝖵𝖡(TB) 的关系{o7de36}
	> 设定：ϕ ∈ 𝖣𝗂𝖿𝖿(B,S)，其中 (B,G)、(S,g) 为黎曼流形
	> 来源：Marsden 弹性力学基础 p70
	* C^♭ = ϕ^*g ∈ S²TᵛB
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM  → ΓTM，给定 Y ∈ ΓTM 时，满足 ∇Y = (W ↦ ∇_WY) ∈ [?]-𝖬𝗈𝖽(ΓTM)（Marsden 弹性力学基础 p72）{o7ea86}
	* C^∞(M)-𝖬𝗈𝖽(ΓTM) = 𝖵𝖡(TM) = Γ(Tᵛ⊗T)M
	* 即有映射 ΓTM → 𝖵𝖡(TM) = Γ(Tᵛ⊗T)M，Y ↦ ∇.Y
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM  → ΓTM，给定 W ∈ ΓTM 时，满足 ∇_W = (Y ↦ ∇_WY) ∈ [?]-𝖬𝗈𝖽(ΓTM)（Marsden 弹性力学基础 p72）{o7ea88}
	* ℝ
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM  → ΓTM，为何 ∇ ∉ Γ(Tᵛ⊗Tᵛ⊗T)M，我的理解（Marsden 弹性力学基础 p72）{o7ea8a}
	* 因为 ∇_W· = (Y ↦ ∇_WY) ∉ C(M)-𝖬𝗈𝖽(ΓTM)
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM  → ΓTM 满足 ∇_W(fY) = [?]（Marsden 弹性力学基础 p72）{o7ea8c}
	* ∇_W(fY) = f∇_WY + Wf·Y
* 光滑流形 M 上的联络 ∇: ΓTM → 𝖵𝖡(TM) 满足 ∇(fY) = [?]（Marsden 弹性力学基础 p72）{o7ea8d}
	* ∇(fY) = f∇Y + df⊗Y
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM → ΓTM 在坐标 {xⁱ} 下的表示需利用 Christoffel symbol，其定义为 γⁱⱼₖ = [?]（Marsden 弹性力学基础 p72）{o7ea8e}
	* γⁱⱼₖ = eⁱ(∇_{eⱼ}eₖ)，其中 eⁱ 为 eᵢ 对偶基底
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM → ΓTM 在坐标 {xⁱ} 下的表示（利用 Christoffel symbol）：(∇_WY)ⁱ = [?] + γⁱⱼₖWʲYᵏ（Marsden 弹性力学基础 p73）{o7ea8g}
	* (∇_WY)ⁱ = Wʲ∂ⱼYⁱ + γⁱⱼₖWʲYᵏ
	* 注：推导利用了 ∇_W(fY) = Wf·Y + f∇_WY，取 fY = Yⁱeᵢ
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM → ΓTM 在坐标 {xⁱ} 下的表示（利用 Christoffel symbol）：(∇_WY)ⁱ = Wʲ∂ⱼYⁱ + [?]（Marsden 弹性力学基础 p73）{o7ea8h}
	* (∇_WY)ⁱ = Wʲ∂ⱼYⁱ + γⁱⱼₖWʲYᵏ
* 设 M 为光滑流形，则 Lie 导数 (𝓛_·)·: ΓTM × ΓTM → ΓTM 为何不满足联络 ∇: ΓTM × ΓTM  → ΓTM 的定义，我的理解{o7ea8i}
	* 因为 𝓛_·Y = (W ↦ 𝓛_WY) ∉ C(M)-𝖬𝗈𝖽(ΓTM)，仅为 ℝ-𝖬𝗈𝖽(ΓTM)
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM → ΓTM 的 torsion 张量为 (1,2)-型，其定义 Tor = [?]（Marsden 弹性力学基础 p75）{o7f870}
	* Tor(W,Y) = ∇_WY - ∇_YW - [W,Y]
	* 相关：可比较 ((o9l954)) dω(X,Y) = Xω(Y) - Yω(X) - ω([X,Y])
	* 相关：可比较 ((o7fe6c)) R(X,Y,Z) = ([∇_X,∇_Y] - ∇_[X,Y])Z
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM → ΓTM 的 torsion 张量 Tor(W,Y) = ∇_WY - ∇_YW - [W,Y]，要验证它是张量，我认为主要需验证什么{o7f872}
	* Tor(fW,Y) = Tor(W,fY) = fTor(W,Y), ∀f ∈ C^∞(M)
* 光滑流形 M 上的联络 ∇: ΓTM × ΓTM → ΓTM 的 torsion 张量为 (1,2)-型，其在坐标 {xⁱ} 下的表示（利用 Christoffel symbol）：Torⁱⱼₖ = [?]（Marsden 弹性力学基础 p75）{o7f874}
	* Torⁱⱼₖ = γⁱⱼₖ - γⁱₖⱼ
* dω(X,Y) = [?1]，联络 ∇ 的 Tor(X,Y) = [?2]{p77a2n}
	> 设定：M 光滑流形，ω ∈ Ω¹(M) 需考察其外微分，联络 ∇: ΓTM × ΓTM → ΓTM
	> 提示：torsion 张量 Tor 为 (1,2)-型
	> 来源：基于 Marsden 弹性力学基础 p75,p107
	* dω(X,Y) = Xω(Y) - Yω(X) - ω([X,Y])
	* Tor(X,Y) = ∇_XY - ∇_YX - [X,Y]
* （联络 ∇ 的）Tor 张量为 (p,q)-型，(p,q) 取值的回忆依据{p77a2p}
	> 设定：M 光滑流形，联络 ∇: ΓTM × ΓTM → ΓTM
	> 来源：基于 Marsden 弹性力学基础 p75
	* 作用于 (W,Y) 所得 Tor(W,Y) 也是切向量场
	* （无需回忆）故为 (1,2)-型
* 黎曼流形 (M,g) 上的 Levi-Civita 联络定义，满足哪两个条件的联络存在唯一（Marsden 弹性力学基础 p75）{o7fb00}
	* torsion free，即 γⁱⱼₖ = γⁱₖⱼ
	* 平行移动保内积
* 黎曼流形 (M,g) 上的 Levi-Civita 联络在局部坐标 {xⁱ} 下的表示，γⁱⱼₖ 用 gᵢⱼ 表示的公式有几项为正、几项为负（Marsden 弹性力学基础 p75）{o7fb02}
	* 2，1
* 黎曼流形 (M,g) 上的 Levi-Civita 联络在局部坐标 {xⁱ} 下的表示：Christoffel symbol γⁱⱼₖ = [?]，利用 gᵢⱼ 写出（Marsden 弹性力学基础 p75）{o7fb04}
	* 2gᵢₗγⁱⱼₖ = ∂ⱼgₖₗ + ∂ₖgⱼₗ - ∂ₗgⱼₖ
	* （无需重读）备注：def4.19 后 (DₜY)ᴬ 公式似乎下标 BC 写反了，但不影响 thm4.24 推导正确性，因 γⁱⱼₖ = γⁱₖⱼ
* 黎曼流形上 ∇F 两种含义：梯度 ∇F = [?1]，协变导数 ∇F = [?2]；给出与 dF 关系即可{o9oh0h}
	> （注）黎曼流形 (M,g)，F ∈ C^∞(M)
	> （注）基于 Marsden 弹性力学基础 p69,p76
	* 梯度 ∇F = (dF)^♯ ∈ ΓTM ；见((o7ck64))
	* 协变导数 ∇F = dF ∈ ΓTᵛM ；基于定义不难得出
* 光滑流形 M 上联络 ∇ 作用于 (p,q)-型张量 t 后，得到 [?] 型张量 ∇t（Marsden 弹性力学基础 p76）{o7fe3g}
	* (p,q+1)
* {old}# 光滑流形 M 上联络 ∇ 作用于 (p,q)-型张量 t 后得张量 ∇t，其在局部坐标 {xⁱ} 下的计算公式（利用 Christoffel symbol）有 [?1] 项为正，[?2] 项为负（Marsden 弹性力学基础 p77）
	* 
* ∇t 计算公式有 [?1] 项为正，[?2] 项为负{o7fe3i}
	> （注）要求：在局部坐标 {xⁱ} 下计算，利用 γⁱⱼₖ
	> （注）设定：光滑流形 M 上联络 ∇ 作用于 (p,q)-型张量 t
	> （注）来源：Marsden 弹性力学基础 p77
	* p + 1（多出来的一个是 ∂ₖ）
	* q
* ∇t = [?]，在局部坐标 {xⁱ} 下计算，利用 γⁱⱼₖ{o9sa0t}
	> （注）设定：光滑流形 M 上联络 ∇ 作用于 (p,q)-型张量 t
	> （注）来源：Marsden 弹性力学基础 p77
	* file:///home/yzh/oc-ptis/attached/o9sa0o-cov-grad-formula-SRS.pdf
	* 注意符号，p + 1 正 q 负
* 光滑流形 M 上取定联络 ∇，对 (p,q)-型张量 t，其散度 div t 由协变导数 ∇t 做缩并得到，其中被缩并的协变指标是哪一个（Marsden 弹性力学基础 p78）{o7fe3k}
	* 最后一个
* {old}# 光滑流形 M 上取定联络 ∇，对 (p,q)-型张量 t，如何定义其散度 div t（Marsden 弹性力学基础 p78）
	* ∇t 中新引入的指标与「最后一个」协变指标缩并
* 黎曼流形 (M,g) 上曲率张量 R 为 [?]-型张量（Marsden 弹性力学基础 p80）{o7fe6a}
	* (1,3)-型
* 黎曼流形 (M,g) 上曲率张量 R 不依赖坐标的定义 R(X,Y,Z) = [?]（Marsden 弹性力学基础 p80）{o7fe6c}
	* R(X,Y,Z) = ([∇_X,∇_Y] - ∇_[X,Y])Z
	* 相关：可比较 ((o7f870)) Tor(W,Y) = ∇_WY - ∇_YW - [W,Y]
* 黎曼流形 (M,g) 上曲率张量 R 在局部坐标 {xⁱ} 下的计算公式（利用 Christoffel symbol）有几项为正、几项为负（Marsden 弹性力学基础 p80）{o7fe6e}
	* 2，2
* # 黎曼流形 (M,g) 上曲率张量 Rˡᵢⱼₖ 的计算公式（利用 Christoffel symbol），我的记忆方式，Rˡᵢⱼₖ 关键角标 [?] 的项为正，[?] 的项为负（Marsden 弹性力学基础 p80）{o7fe6g}
	* j，k
* 黎曼流形 (M,g) 上曲率张量 R 在局部坐标 {xⁱ} 下的计算公式（利用 Christoffel symbol，j 正 k 负各两项）Rˡᵢⱼₖ = [?]（Marsden 弹性力学基础 p80）{o7fe6i}
	* Rˡᵢⱼₖ = ∂ⱼγˡₖᵢ - ∂ₖγˡⱼᵢ + γˡⱼₑγᵉₖᵢ - γˡₖₑγᵉⱼᵢ
	* 注：j 两项正，k 两项负；“两项”1 出现在 ∂ 角标，2 与 l 出现在同一个 Christoffel symbol 中
	* 注（无需重读）：见到的另一种记忆方式 [Rⱼₖ]ˡᵢ = [∂ⱼγₖ]ˡᵢ - [∂ₖγⱼ]ˡᵢ + [γⱼ,γₖ]ˡᵢ
		* [src](https://mp.weixin.qq.com/s?__biz=MzAwNTA5NTYxOA==&mid=2651454411&idx=3&sn=2fb09157d6d0efede6703ce3b7b9a808)，“可采用如下方式重新组织黎曼曲率张量的上下标为类似于矩阵方程的形式”
* 黎曼流形 (M,g) 上的 Ricci 曲率张量如何由普通曲率张量 Rˡᵢⱼₖ 得到（Marsden 弹性力学基础 p80）{o7fe6k}
	* lj 分量缩并
* 黎曼流形 (M,g) 上的 scalar 曲率张量如何由 Ricci 曲率张量 Rᵢⱼ 得到（Marsden 弹性力学基础 p80）{o7fe6m}
	* R = gⁱʲRᵢⱼ
* Rˡᵢⱼₖ 中的关键角标：计算公式 [?1] 正 [?2] 负，导出 Rᵢⱼ 时为 [?3,4] 缩并{p74i1d}
	> 设定：黎曼流形 (M,g) 上曲率张量 R 在局部坐标 {xⁱ} 下的相关公式
	> 来源：基于 Marsden 弹性力学基础 p80
	* j, k
	* lj
* 黎曼流形 (M,g) 上的无穷小 isometry w ∈ ΓTM 定义（Marsden 弹性力学基础 p99）{o7gd6v}
	* Lie 导数 (𝓛_w)g = 0
	* 注：不是协变导数 (∇_w)g
* {old}# 黎曼流形 (M,g) 上的无穷小 isometry w ∈ ΓTM 按定义满足 Lie 导数 (𝓛_w)g = 0，相应的 ∇w ∈ 𝖵𝖡(TM) 具有什么性质（Marsden 弹性力学基础 p99）
	* （fiber-wise）反对称（注意「反」）
	* 注：没完全理解，rmk6.17 中 w 角标在下、为反变张量记号，但 w 作为向量场应该是协变张量
	* 2025-09-01 重构：原卡片正面重点不突出
* 黎曼流形：对无穷小 isometry w，∇w 有什么性质{o7gd6x}
	> 设定：黎曼流形 (M,g)，w ∈ ΓTM 按定义满足 Lie 导数 `(𝓛_w)g = 0`；∇w ∈ 𝖵𝖡(TM)
	> 来源：Marsden 弹性力学基础 p99
	* （fiber-wise）反对称（注意「反」）
	* 注：没完全理解，rmk6.17 中 w 角标在下、为反变张量记号，但 w 作为向量场应该是协变张量
* {old}# 光滑流形 M 上外微分不依赖于局部坐标系的定义：设 ω ∈ Ωᵏ(M)，dω(X₀,…,Xₖ) 的定义中包含多少项（Marsden 弹性力学基础 p107）
	* 
* dω(X₀,…,Xₖ) 计算公式包含多少项（该公式不依赖于局部坐标系）{o7gd9e}
	> （注）背景：光滑流形 M 上外微分，ω ∈ Ωᵏ(M)
	> （注）来源：Marsden 弹性力学基础 p107
	* C¹ₖ₊₁ + C²ₖ₊₁
	* 注：在 Lie 群 Maurer–Cartan 结构方程((o8aa44))的证明中用到
	* 注：GTM218 p370 也有
* dω(X,Y) = [?]，不依赖于局部坐标系的计算公式{o9l954}
	> （注）背景：光滑流形 M 上外微分，ω ∈ Ω¹(M)
	> （注）基于 Marsden 弹性力学基础 p107）
	* dω(X,Y) = Xω(Y) - Yω(X) - ω([X,Y])
	* 相关：可比较((o7f870)) Tor(W,Y) = ∇_WY - ∇_YW - [W,Y]
* dω(X₀,…,Xₖ) = [?]（注意符号），不依赖于局部坐标系的计算公式{o9s99b}
	> （注）背景：光滑流形 M 上外微分，ω ∈ Ωᵏ(M)
	> （注）来源：Marsden 弹性力学基础 p107
	* file:///home/yzh/oc-ptis/attached/o9s997-ext-deriv-coord-free-SRS.pdf
	* 注：若日后发现回忆困难，可考虑改为仅重读
* 光滑流形 M 上 Lie 导数作用于外微分形式：𝓛_[X,Y]ω = [?]ω，用 𝓛_X,𝓛_Y 表示（Marsden 弹性力学基础 p110）{o7ge1t}
	* 𝓛_[X,Y]ω = [𝓛_X,𝓛_Y]ω
	* 注：作用于向量场即为 Jacobi 等式（因 𝓛_XY = [X,Y]），而对向量场成立即对外微分形式成立（这里算子作用结果恒等可推出算子相等）
* 光滑流形 M 上 ι([X,Y])ω = [?]ω，用 𝓛、ι 表示（Marsden 弹性力学基础 p110）{o7ge1v}
	* ι([X,Y])ω = [𝓛_X,ι(Y)]ω
	* 注意 𝓛 在前 ι 在后
* potential operator 定义：设 X ∈ 𝖡𝖺𝗇 上有双线性型 ⟨-,-⟩（未必对称），则（非线性）算子 A: X → X 何时被称为 potential operator，需利用 ⟨-,-⟩（Marsden 弹性力学基础 p112）{o7hf1a}
	* ∃L ∈ C¹(X), ∀ x,v ∈ X, dL(x)·v = ⟨A(x),v⟩
* potential operator 定义：设 X ∈ 𝖡𝖺𝗇 上有双线性型 ⟨-,-⟩（未必对称），则（非线性）算子 A: X → X 为 potential operator 的等价条件，从外微分形式的观点给出（Marsden 弹性力学基础 p112）{o7hf1c}
	* ⟨A(x),-⟩ ∈ TᵛM 满足 d⟨A(x),-⟩ = 0
* X ∈ 𝖡𝖺𝗇 上的 potential operator A: X → X 与 Lagrange 力学的关系：Euler-Lagrange 方程对应与 A 有关的什么方程（Marsden 弹性力学基础 p112）{o7hf1e}
	* A(x) = 0
* {x}# potential operator 充要条件：设 X ∈ 𝖡𝖺𝗇 上有双线性型 ⟨-,-⟩（未必对称），（非线性）算子 A: X → X 满足 ∀ x,v,w ∈ X, ⟨DA(x)·v,w⟩ = ⟨DA(x)·w,v⟩，则论证 ∃L ∈ C¹(X), ∀ x,v ∈ X, dL(x)·v = ⟨A(x),v⟩ 过程中考察了哪个微分形式（Marsden 弹性力学基础 p112）
	* 
* ϕ ∈ 𝖣𝗂𝖿𝖿(B,S) 保定向，则 y ∈ ΓTS 的 Piola 变换 Y ∈ ΓTB 定义为（Marsden 弹性力学基础 p117）{o7he9d}
	* ι(Y)dV = ϕ^*(ι(y)dv)
	* 其中 dv, dV 为 volumn forms
		* 注：ϕ 保定向说明 B,S 均有定向，从而都具有 volumn form
* 连续介质力学动量平衡方程 ρDₜu = ρb + ∇·σ，推广至一般黎曼流形后，其中 (u·∇)u 项的含义（Marsden 弹性力学基础 p134）{o7ie3h}
	* 方向协变导数 ∇ᵤu
* 连续介质力学动量平衡方程 ρDₜu = ρb + ∇·σ，推广至一般黎曼流形后，其中 ∇· 的含义（Marsden 弹性力学基础 p134）{o7ie3j}
	* ∇·σ 为协变导数 ∇σ 的缩并((o7fe3k))
* 连续介质力学动量平衡方程 ρDₜu = ρb + ∇·σ，论证其中的 σ 对称需要考察什么（通过积分定义的）物理量（Marsden 弹性力学基础 p138）{o7ie3l}
	* 角动量
	* 注（仅重读）：p141 液晶等有向介质 σ 非对称，由角动量守恒可导出另一对称的张量 k
* 黎曼流形 (M,g) 上 Laplacian Δ: C²(M) → C(M) 的定义（Marsden 弹性力学基础 p145）{o7k88v}
	* Δf = div(grad f)
	* 其中 grad f = (df)^♯，见((o7ck64))
	* div X 由协变导数 ∇X 做缩并得到((o7fe3k))
* 弹性体（参考域 B）在「经典」时空 𝓥 中的运动，其 world tube 作为映射具形式 Φ: [?1] → [?2]（Marsden 弹性力学基础 p158）{o7l994}
	* Φ: B × ℝ → 𝓥
* 弹性体在「经典」时空 𝓥 中的运动 Φ: B × ℝ → 𝓥，其 four velocity 作为映射具形式 V: B × ℝ → [?1]，four acceleration A: B × ℝ → [?2]（Marsden 弹性力学基础 p158）{o7l996}
	* 均为 T𝓥
* 弹性体在「经典」时空 𝓥 中的运动 Φ: B × ℝ → 𝓥 对时间求导得 four velocity V: B × ℝ → T𝓥，再求导得 four acceleration A: B × ℝ → T𝓥，两处求导具体含义分别是什么（Marsden 弹性力学基础 p158）{o7l998}
	* ℝ → 𝓥 诱导切映射 Tℝ → T𝓥
		* 注（无需回忆）：注意 𝓥 包含时间分量
	* 𝓥 上协变导数 (∇_V)V，需利用 𝓥 上联络 ∇
		* 注（无需重读）：该公式在 p175 也出现
* 无穷维流形：设 M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿，则 Cᵏ(M,N) 作为无穷维流形的光滑程度如何，C⁰,Cᵏ⁻¹,Cᵏ,Cᵏ⁺¹,C^∞（Marsden 弹性力学基础 p170）{o7lk10}
	* C^∞
* 无穷维流形：设 M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿，则 Cᵏ(M,N) 作为无穷维流形 modelled on 什么样的拓扑向量空间（Hilbert，Banach，一般拓扑向量空间）（Marsden 弹性力学基础 p170）{o7lk12}
	* Banach
* 无穷维流形的切丛：设 M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿，则无穷维流形 Cᵏ(M,N) 切丛的结构 TCᵏ(M,N) = [?1]，相应投影映射 π: TCᵏ(M,N) → Cᵏ(M,N) 给出方式 [?2]（Marsden 弹性力学基础 p170）{o7lk14}
	* TCᵏ(M,N) = Cᵏ(M,TN)
	* π = (π_N∘-) = 𝖬𝖺𝗇(M,-)[π_N]: V ↦ ϕ = π_N∘V
	* 注（无需重读）：书上原文为 TᵩCᵏ(M,N) = {V ∈ Cᵏ(M,TN) | π_N∘V = ϕ}
* 无穷维流形：设 π: E → M, ρ: F → N 为 C^∞ 向量丛，r ≤ k，则记号 f ∈ Cₖʳ(E,F) 含义（Marsden 弹性力学基础 p170）{o7m870}
	* f ∈ Cʳ-𝖵𝖡(E,F) 为向量丛态射，其 base map ϕ ∈ Cᵏ-𝖬𝖺𝗇(M,N)
	* 注（无需回忆）：向量丛态射为交换图 ϕ∘π = ρ∘f: E → N
* 无穷维流形：设 π: E → M, ρ: F → N 为 C^∞ 向量丛，r ≤ k，则 Cₖʳ(E,F) 作为无穷维向量丛，其 base manifold 为（Marsden 弹性力学基础 p170）{o7m872}
	* Cᵏ(M,N)
	* 即：Cₖʳ(E,F) → Cᵏ(M,N) 为其 projection
* {old}# 无穷维流形：设 M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿，则 T[-]: Cᵏ(M,N) → Cₖʳ(TM,TN), ϕ ↦ T[ϕ] 为无穷维向量丛 π: Cₖʳ(TM,TN) → Cᵏ(M,N) 的 section（即 T[-] ∈ ΓCₖʳ(TM,TN)），其中 r 通常取什么数（Marsden 弹性力学基础 p171）
	* 
* T[-] ∈ ΓCₖʳ(TM,TN)，其中 r 通常取什么数{o7m874}
	> 具体含义：T[-]: Cᵏ(M,N) → Cₖʳ(TM,TN), ϕ ↦ T[ϕ] 为无穷维向量丛 π: Cₖʳ(TM,TN) → Cᵏ(M,N) 的 section
	> 设定：M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿
	> 背景：无穷维流形
	> 来源：Marsden 弹性力学基础 p171
	* r = k - 1
	* T[-]: Cᵏ(M,N) → Cₖᵏ⁻¹(TM,TN)
* T[-] ∈ ΓCₖʳ(TM,TN)，该 section 的光滑程度（C⁰,Cᵏ⁻¹,Cᵏ,Cᵏ⁺¹,C^∞）{o7m876}
	> 具体含义：T[-]: Cᵏ(M,N) → Cₖʳ(TM,TN), ϕ ↦ T[ϕ] 为无穷维向量丛 π: Cₖʳ(TM,TN) → Cᵏ(M,N) 的 section
	> 设定：M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿
	> 背景：无穷维流形
	> 来源：Marsden 弹性力学基础 p171
	* C^∞
	* 注（无需重读）：之后书上在讨论其切映射 T[T[-]]: Cᵏ(M,TN) → Cₖʳ(TM,TTN)，其表达式涉及 TTN 上的 canonical flipping
* {old}# 无穷维流形：设 M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿，则 Cₖʳ(TM,TN) 与 Cᵏ(M,TN)（均可作为 Cᵏ(M,N) 上的向量丛）都是特定范畴内的态射集合，二者所在范畴分别为（参考 Marsden 弹性力学基础 p171）
	* Cₖʳ(TM,TN) = Cₖʳ-𝖵𝖡(TM,TN)
	* Cᵏ(M,TN) = Cᵏ-𝖬𝖺𝗇(M,TN)
	* 2026-04-13 重构正面
* Cₖʳ(TM,TN) 是范畴 [?1] 的态射集，Cᵏ(M,TN) 则对应 [?2]{o7m878}
	> 设定：M ∈ `𝖣𝗂𝖿𝖿_b`（允许带边），N ∈ 𝖣𝗂𝖿𝖿
	> 来源：参考 Marsden 弹性力学基础 p171
	* Cₖʳ(TM,TN) = Cₖʳ-𝖵𝖡(TM,TN)
	* Cᵏ(M,TN) = Cᵏ-𝖬𝖺𝗇(M,TN)
* Cᵏ(M,N) 作基流形，有哪两种（由 TM,TN 衍生的）常见向量丛结构{q4dk3f}
	> 设定：M ∈ `𝖣𝗂𝖿𝖿_b`（允许带边），N ∈ 𝖣𝗂𝖿𝖿
	> 来源：参考 Marsden 弹性力学基础 p171
	* Cₖʳ(TM,TN) = Cₖʳ-𝖵𝖡(TM,TN)
	* Cᵏ(M,TN) = Cᵏ-𝖬𝖺𝗇(M,TN)
* 无穷维流形：设 M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿，我推测可定义 Cᵏ(M,TᵛN) → TᵛCᵏ(M,N)（不确定是否为同构）的一个前提条件是 M 上定义了「测度」，需要该条件的理由{o83g2i}
	* （背景）Cᵏ(M,TᵛN) 中元素与 Cᵏ(M,TN) 元素做 pairing 得到 Cᵏ(M,ℝ)
	* （本问题）再积分才能得 ℝ
	* 注：默认了 Cᵏ(M,TᵛN)，Cᵏ(M,TN) 中二元素需有相同的 base map ϕ ∈ Cᵏ(M,N)
	* 注（无需重读）：当时想到这点的背景((o84a20))
* 无穷维流形：设 M ∈ 𝖣𝗂𝖿𝖿_b（允许带边），N ∈ 𝖣𝗂𝖿𝖿，我推测可定义 Cᵏ(M,TᵛN) → TᵛCᵏ(M,N)（不确定是否为同构）的一个前提条件是 M「紧致」，需要该条件的理由{o83g2k}
	* （背景）Cᵏ(M,TᵛN) 中元素与 Cᵏ(M,TN) 元素做 pairing 得到 Cᵏ(M,ℝ)
	* （本问题）紧致条件能确保该映射增长速度有限，能定义积分
* 弹性体 material coord 下自由能 Ψ(C) 依赖于 Green 形变张量（应变）C，则应力张量 S = [?]，注意系数（Marsden 弹性力学基础 p197）{o7n862}
	* S = 2ρ_{ref}∂Ψ/∂C
	* 注（无需重读）：p211 将 C 称为 strain
* 弹性体 spatial coord 下自由能 ψ(g) 依赖于黎曼度量 g，则应力张量 σ = [?]，注意系数（Marsden 弹性力学基础 p197）{o7n864}
	* σ = 2ρ∂ψ/∂g
* 弹性体 material coord 下自由能 Ψ(C) 依赖于 Green 形变张量（应变）C，则弹性张量 𝖢 = [?]（Marsden 弹性力学基础 p209）{o7n866}
	* 𝖢 = ∂S/∂C = 2ρ_{ref}∂²Ψ/∂C∂C
* 设 V ∈ 𝖵𝖾𝖼 带非退化双线性型 g ∈ S²(Vᵛ)（如欧氏空间），则 C ∈ [?1] 时 ∂tr(C)/∂C = I，C ∈ [?2] 时 ∂tr(C)/∂C = g{o7nh90}
	* C ∈ 𝖵𝖾𝖼(V) = Vᵛ⊗V（此时 I ∈ V⊗Vᵛ = 𝖵𝖾𝖼(V)ᵛ）
	* C ∈ S²(V)（此时 g ∈ S²(Vᵛ) = S²(V)ᵛ）
		* 注：该情形 tr 定义即与 g 完全缩并（相当于先与 g 部分缩并后 ∈ Vᵛ⊗V，再取 tr）
	* 注（无需重读）：源于 Marsden 弹性力学基础 p221 ∂Ψ(C)/∂C 计算结果中 ∂tr(C)/∂C = G^♯
* ∂tr(C)/∂C = (a) I, (b) g, 二结果不同的原因{p8pl0c}
	> 设定：V ∈ 𝖵𝖾𝖼 带非退化双线性型 g ∈ S²(Vᵛ)，如欧氏空间
	* C 所在空间不同
	* （仅重读）(a) C ∈ 𝖵𝖾𝖼(V) = Vᵛ⊗V，(b) C ∈ S²(V)
	* 注（无需重读）：源于 Marsden 弹性力学基础 p221 ∂Ψ(C)/∂C 计算结果中 ∂tr(C)/∂C = G^♯
* 设 V 有限维欧氏空间，f ∈ C^∞(S²(V)) 在 SO(V) 共轭作用下不变（即 ∀P ∈ SO(V),f(PAPᵀ) = f(A)），我推测可证明 ∂f(A)/∂A ∈ C(S²(V))[A] 为多项式，其要点{o7nk9f}
	* f(A) = f(tr(A),tr(A²),…,tr(Aⁿ))
	* 注：以下为细节，无需回忆
	* f(A) = f({λ₁,..,λₙ}) = f(∑λᵢ,∑λᵢ²,…,∑λᵢⁿ) = f(tr(A),tr(A²),…,tr(Aⁿ))
	* 从而 ∂f(A)/∂A = f₁'·I + f₂'·2A + … + fₙ'·nAⁿ⁻¹
		* 注：用到 A 对称性，否则应写为 (∂f(A)/∂A)ᵀ = …
	* 注（无需重读）：源于 Marsden 弹性力学基础 p221 ∂Ψ(C)/∂C 计算结果
	* 注（无需重读）：严格证明可能还要考虑 f(tr(A),tr(A²),…,tr(Aⁿ)) 形式是否仍对各分量可微
* {x}# 记号位置：p177 η,N（非粗体）单位质量熵，θ,Θ 绝对温度；p178 自由能 Ψ = E - TS（包含动能）
	* S p136 second Piola-Kirchoff tensor
	* R p143 单位质量热源
	* D p144 提到在 sec1.3 定义
* 应力 S 与 λ(tr E)G + 2μE 关系{o9oa30}
	> （注）背景：弹性体 material form
	> （注）前提：介质各向同性、应力 S 线性依赖于 E
	> （注）来源：Marsden 弹性力学基础 p223
	* S^♭ = λ(tr E)G + 2μE
	* 注意降角标算子 ♭
* 应力 S^♭ = [?] + 2μE{o9oa32}
	> （注）背景：弹性体 material form
	> （注）前提：介质各向同性、应力 S 线性依赖于 E
	> （注）来源：Marsden 弹性力学基础 p223
	* S^♭ = λ(tr E)G + 2μE
* 应力 S^♭ = λ(tr E)G + [?]{o9oa34}
	> （注）背景：弹性体 material form
	> （注）前提：介质各向同性、应力 S 线性依赖于 E
	> （注）来源：Marsden 弹性力学基础 p223
	* S^♭ = λ(tr E)G + 2μE
* 弹性体 material form，若介质各向同性、应力 S 线性依赖于 E，则 S = [?]（Marsden 弹性力学基础 p223）{o7o842}
	* S^♭ = λ(tr E)G + 2μE
	* 注：当时流体力学引论中的记号 σ = λ(tr D)I + 2μD
* 弹性体 material form，应力公式 S^♭ = λ(tr E)G + 2μE 成立的两个前提（Marsden 弹性力学基础 p223）{o7o844}
	* S 线性依赖于 E
	* 介质各向同性
* {old}# 弹性体 material form，应力公式 S^♭ = λ(tr E)G + 2μE 成立时，弹性张量分量 𝖢ᴵᴶᴷᴸ = [?]（Marsden 弹性力学基础 p223）
	* 2025-09-24 重构正面
* 弹性张量分量 𝖢ᴵᴶᴷᴸ = [?]{o7o846}
	> 设定：弹性体 material form，应力公式 S^♭ = λ(tr E)G + 2μE 成立情形
	> 提示：根据应力公式回忆结果
	> 来源：Marsden 弹性力学基础 p223
	* 𝖢ᴵᴶᴷᴸ = λGᴵᴶGᴷᴸ + μ(GᴵᴷGᴶᴸ + GᴵᴸGᴶᴷ)
	* 注：我的形式推导 ∂Cᴵᴶ/∂C_K_L = ∂GᴵᴬC_{AB}Gᴮᴶ/∂C_K_L = GᴵᴷGᴸᴶ，再利用 KL 指标对称性可得结论
* 弹性体 material form，应力公式 S^♭ = λ(tr E)G + 2μE 成立时，材料自由能 Ψ = [?]（Marsden 弹性力学基础 p241）{o7o848}
	* Ψ = λ(tr E)²/2 + μE·E
		* 我认为 E·E = tr(E²) 成立
	* 注意 (tr E)² 与 tr(E²) 的区别，后者求导结果为 2E 而非 2(tr E)G
* 无穷维辛空间：设 X ∈ 𝖡𝖺𝗇，其上的辛形式 ω: X × X → ℝ 需满足一定的非退化性条件，其中弱非退化、强非退化的定义分别是（Marsden 弹性力学基础 p253）{o7qa60}
	* 考虑映射 ω^♭: X → Xᵛ
	* 弱：ω^♭ 单射（即 ker(ω^♭) = 0）
	* 强：ω^♭ 同构
	* 注（无需重读）：又见于 Marsden 力学与对称性导论 p66
* 无穷维辛空间：Y₁, X₁ ∈ 𝖡𝖺𝗇，嵌入映射 i: Y₁ → X₁ 连续、像稠密，通常可给出辛形式的空间是 X = Y₁⊕X₁ᵛ 还是 X = Y₁ᵛ⊕X₁（Marsden 弹性力学基础 p254）{o7qb2a}
	* X = Y₁⊕X₁ᵛ
	* 解释：Y₁、X₁ᵛ 中元素可做 pairing，但 X₁、Y₁ᵛ 不然
	* 记忆方式：小的空间总能定义辛形式，大空间会出问题
* 无穷维辛空间：Y₁, X₁ ∈ 𝖡𝖺𝗇，嵌入映射 i: Y₁ → X₁ 连续，则 X = Y₁⊕X₁ᵛ 可成为辛空间通常要求 i 像稠密，否则辛形式 ω: X × X → ℝ 的构造会出什么问题（Marsden 弹性力学基础 p254）{o7qb2c}
	* i(Y₁) 不稠密时，ω 不保证弱非退化性
	* 注：常取 Y₁ = D(A) 为某线性稠定算子定义域
* 辛空间：设 H₁ ∈ ℝ-𝖧𝗂𝗅𝖻 的复化空间为 H ∈ ℂ-𝖧𝗂𝗅𝖻（作为实空间同构于 H₁⊕H₁），则 H 上常用的辛形式 ω 为（Marsden 弹性力学基础 p254）{o7qb2e}
	* ω(ϕ,ψ) = -Im⟨ϕ,ψ⟩
	* 仅重读：Re⟨ϕ,ψ⟩ 为 H 上常用的实内积，见 Marsden-intro2mechSym p68
	* 注：似乎正负号无关紧要？
* 弹性、电磁、规范理论的场 可统一描述为 fiber bundle π: E → B；对弹性力学（材料流形 B、空间流形 S）取 E = [?]（Marsden 弹性力学基础 p275）{o83h30}
	* E = B × S
* {x}# 弹性、电磁、规范理论的场 可统一描述为 fiber bundle π: E → B，为讨论简便可假定 E 具有 splitting (connection)：∀p ∈ Eₓ = π⁻¹(X)，存在投影映射 ℙₚ: [?1] → [?2]；这可推出哪个直和分解 [?3]（Marsden 弹性力学基础 p276）
	* ℙₚ: TₚE → TₚEₓ
	* TₚE = TₚEₓ ⊕ TₓB
* 弹性、电磁、规范理论的场 可统一描述为 fiber bundle π: E → B，为讨论简便可假定 E 具有 splitting (connection)：存在投影映射 ℙ ∈ [?1]；这可推出向量丛的直和分解 [?2]（Marsden 弹性力学基础 p276）{o83h32}
	* ℙ ∈ 𝖵𝖡(TE,VE)
	* TE = VE ⊕ π⁻¹TB（视为 E 上的向量丛）
* 纤维丛：对 fiber bundle π: E → B（假设有 splitting），其 first jet bundle J¹(E) 在 X ∈ B 处 fibre 有哪些分量 [?1]、分别位于什么空间 [?2]（Marsden 弹性力学基础 p276）{o83h34}
	* fibre (φ(X),F)
	* φ(X) ∈ Eₓ, F ∈ 𝖵𝖾𝖼(TₓB, Tᵩ₍ₓ₎Eₓ)
* 纤维丛：对 fiber bundle π: E → B（假设有 splitting），其 first jet bundle J¹(E) 定义，用向量丛运算给出（Marsden 弹性力学基础 p276）{o83h36}
	* J¹(E) = π⁻¹TᵛB ⊗ VE
	* 张量积按 E 上向量丛进行，最后结果视为 B 上纤维丛
	* 注：记得 F ∈ 𝖵𝖾𝖼(TₓB, Tᵩ₍ₓ₎Eₓ) 即可推出该形式
* {x}# 纤维丛：对 fiber bundle π: E → B（假设有 splitting），φ ∈ ΓE 的 first jet（相当于一阶 Taylor 展开）j¹(φ) ∈ ΓJ¹(E) 的给出方式（我按向量丛运算给出的版本，基于 Marsden 弹性力学基础 p276）
	* φ ∈ 𝖬𝖺𝗇(B,E)
	* T[φ] ∈ 𝖵𝖡(TB,TE)
	* 复合运算得 𝖵𝖡(π⁻¹TB,VE) 元素
		* （无需回忆）用到 𝖵𝖡(π⁻¹TB,TB) 和 splitting ℙ ∈ 𝖵𝖡(TE,VE)
		* 注：回忆起这里有前后两个复合运算应该就差不多了
	* 该元素即 ∈ Γ(π⁻¹TᵛB ⊗ VE) = ΓJ¹(E)
* {old}# 纤维丛：对 fiber bundle π: E → B（假设有 splitting），为给出 first jet 映射 j¹: ΓE → ΓJ¹(E)（相当于一阶 Taylor 展开），我首先如何转换 ΓE 和 ΓJ¹(E)（基于 Marsden 弹性力学基础 p276）
	* 2025-07-26 重构正面
* 为给出 j¹: ΓE → ΓJ¹(E)，我先如何转换 ΓE 和 ΓJ¹(E)（提示：J¹(E) = π⁻¹TᵛB ⊗ VE）{o83h38}
	> 设定：fiber bundle π: E → B，假设有 splitting
	> 目标：j¹ 为 first jet 映射，相当于一阶 Taylor 展开
	> 来源：基于 Marsden 弹性力学基础 p276
	* ΓE = 𝖣𝗂𝖿𝖿(B,E)
	* ΓJ¹(E) = Γ(π⁻¹TᵛB ⊗ VE) = 𝖵𝖡(π⁻¹TB,VE)
		* 注：这其实基本就是 J¹(E) 的直接定义
* 纤维丛：对 fiber bundle π: E → B（假设有 splitting），φ ∈ ΓE = 𝖣𝗂𝖿𝖿(B,E)，为用 T[φ] ∈ 𝖵𝖡(TB,TE) 给出 j¹(φ) ∈ 𝖵𝖡(π⁻¹TB,VE)，需复合哪两个映射（基于 Marsden 弹性力学基础 p276）{o83h3a}
	* （定义 π⁻¹TB 时用到的）𝖵𝖡(π⁻¹TB,TB) 中的元素
	* splitting ℙ ∈ 𝖵𝖡(TE,VE)
* {x}# 无穷维流形：对 fiber bundle π: E → B，有 TΓE = Γ`\dot`E，其中 `\dot`E 在 X ∈ B 处的 fiber 具有哪些分量、分别位于什么空间（Marsden 弹性力学基础 p276）
	* (φ(X),v)
	* φ(X) ∈ Eₓ（无需回忆：注意 E 未必向量丛，从而 Eₓ 未必向量空间）
	* v ∈ Tᵩ₍ₓ₎Eₓ（无需回忆：注意 φ 变化时该空间也有变化）
* 无穷维流形：对 fiber bundle π: E → B，有 TΓE = Γ[?]（Marsden 弹性力学基础 p276）{o83n3a}
	* TΓE = ΓVE
	* 回忆((na1i8a))VE = ker T[π] ⊂ TE，本为 E 上的向量丛，这里视为 B 上的纤维丛
	* 注：VE 是我的记号，在书中的记号为 `\dot`E
* {x}# 弹性力学可描述为 fiber bundle π: E → B，可定义 Lagrangian density 𝓛 ∈ C^∞(Ξ)，相应纤维丛 Ξ 在 X ∈ B 处的 fiber 具有哪些分量（Marsden 弹性力学基础 p277）
	* (φ(X),v,F)
* 弹性力学可描述为 fiber bundle π: E → B，可定义 Lagrangian density 𝓛 ∈ C^∞(Ξ)，其中 Ξ = [?2]，其元素在局部坐标下表示的 4 个分量 [?1]（Marsden 弹性力学基础 p277）{o83n3c}
	* (X,φ,v,F)
	* Ξ = VE ⊕ J¹(E)
		* 直和按 E 上 vector bundle 理解，之后视为 B 上 fiber bundle
* {x}# 弹性力学可描述为 fiber bundle π: E → B，可定义 Lagrangian density 𝓛 ∈ C^∞(Ξ)，相应纤维丛 Ξ 上点形如 (X,φ(X),v,F)，其中 F ∈ [?1]，常见选取 F = [?2]（Marsden 弹性力学基础 p277）
	* F ∈ 𝖵𝖾𝖼(TₓB,Tᵩ₍ₓ₎Eₓ)
	* F = Dφ = Tₓ[φ]
* 弹性力学描述为 fiber bundle π: E → B，可定义 Lagrangian L ∈ C^∞(T𝓒)，其中 𝓒 = [?1]，不可压情形 𝓒ᵥₒₗ = [?2]（Marsden 弹性力学基础 p277,p279）{o83n3e}
	* 𝓒 = ΓE
	* 𝓒ᵥₒₗ = { φ ∈ ΓE | J(φ) = 1 }，加上不可压条件即可
	* 注（仅重读）：p280 T𝓒ᵥₒₗ = { V ∈ T𝓒 | div(V∘ϕ⁻¹) = 0 }
		* 在流体里是常见的无散度条件；我推测其推导与((o83f4c))SL(n) 对应的李代数 𝔰𝔩(n) 有关
* {old}# 弹性力学描述为 fiber bundle π: E → B，为用 Lagrangian density 𝓛 ∈ C^∞(VE ⊕ J¹(E)) 给出 Lagrangian L: TΓE → ℝ，我的理解中先构造了 TΓE → ΓJ¹(E) 和 TΓE → ΓVE，具体方式（基于 Marsden 弹性力学基础 p277）
	* TΓE → ΓJ¹(E) 来自二映射复合：投影 TΓE → ΓE, (φ,v) ↦ φ、first jet j¹: ΓE → ΓJ¹(E), φ ↦ (φ,Dφ)
	* 同构映射 TΓE → ΓVE，见((o83n3a))
	* 2026-07-28 重构题面+拆回忆点
* 弹性力学，构造 TΓE → ΓJ¹(E) 方式{o83n3g}
	> 设定：用 Lagrangian density 𝓛 ∈ C^∞(VE ⊕ J¹(E)) 给出 Lagrangian L: TΓE → ℝ，我的理解
	> 背景：弹性力学描述为 fiber bundle π: E → B
	> 来源：基于 Marsden 弹性力学基础 p277
	* TΓE → ΓJ¹(E) 来自二映射复合：投影 TΓE → ΓE, (φ,v) ↦ φ、first jet j¹: ΓE → ΓJ¹(E), φ ↦ (φ,Dφ)
* 弹性力学为给出 L: TΓE → ℝ，我的理解中先构造了哪两个映射{o83n3g1}
	> 素材：用 Lagrangian density 𝓛 ∈ C^∞(VE ⊕ J¹(E))
	> 设定：弹性力学描述为 fiber bundle π: E → B，待给出 Lagrangian L
	> 来源：基于 Marsden 弹性力学基础 p277
	* TΓE → ΓJ¹(E)
	* 同构映射 TΓE → ΓVE，见((o83n3a))
* 重读即可：弹性力学描述为 fiber bundle π: E → B，给定 Lagrangian density 𝓛 ∈ C^∞(Ξ)，Ξ = VE ⊕ J¹(E)，如何利用映射 TΓE → ΓJ¹(E), (φ,v) ↦ (φ,Dφ) 和 TΓE → ΓVE 给出 TΓE → C^∞(B), (φ,v) ↦ 𝓛(φ,v,Dφ)（基于 Marsden 弹性力学基础 p277）{o83n3i}
	* 
	* 直和得 TΓE → ΓΞ
	* 再复合上 𝖣𝗂𝖿𝖿(B,-)[]: ΓΞ = 𝖣𝗂𝖿𝖿(B,Ξ) → 𝖣𝗂𝖿𝖿(B,ℝ) = C^∞(B) 即可
		* 相当于：ΓΞ = 𝖣𝗂𝖿𝖿(B,Ξ)，C^∞(Ξ) = 𝖣𝗂𝖿𝖿(Ξ,ℝ) 映射可复合
* 弹性力学描述为 fiber bundle π: E → B，给定 Lagrangian density 𝓛，如何利用 TΓE → C^∞(B) 给出 Lagrangian L: TΓE → ℝ（Dirichlet 边界情形，基于 Marsden 弹性力学基础 p277）{o83n3k}
	* 对 B 上测度 V(X) 积分，C^∞(B) → ℝ
	* 注（仅重读）：p278 边界有外力情形还需减掉外力势能项，∫_{∂τ}𝓥_τ(ϕ) dA(X)
* 弹性力学描述为 fiber bundle π: E → B，Lagrangian L ∈ C^∞(TΓE) 满足方程 dₜDᵥL(ϕ,v) = DᵩL(ϕ,v)，其「前」一项 dₜDᵥL(ϕ,v) ∈ TᵛΓE ≈ ΓVᵛE 用 Lagrangian density 𝓛 ∈ C^∞(VE ⊕ J¹(E)) 表示为（基于 Marsden 弹性力学基础 p277）{o84a20}
	* dₜDᵥL(ϕ,v) = dₜ∂ᵥ𝓛(ϕ,v,Dϕ)，为平凡结论
	* 注（无需重读）：TᵛΓE ≈ ΓVᵛE 是我的猜测，见((o83g2i))
* 弹性力学描述为 fiber bundle π: E → B，Lagrangian L ∈ C^∞(TΓE) 满足方程 dₜDᵥL(ϕ,v) = DᵩL(ϕ,v)，其「后」一项 DᵩL(ϕ,v) ∈ TᵛΓE ≈ ΓVᵛE 用 Lagrangian density 𝓛 ∈ C^∞(VE ⊕ J¹(E)) 表示为 [?1]，其中 functional derivative δ𝓛/δϕ = [?2]（基于 Marsden 弹性力学基础 p277）{o84a22}
	* DᵩL(ϕ,v) = δ𝓛/δϕ
	* δ𝓛/δϕ = ∂ᵩ𝓛 - DIV∂𝓛/∂Dϕ
	* 注：后一项知道它由 ∂_{Dϕ}𝓛(ϕ,v,Dϕ)·Dh 分部积分推出即可回忆，h ∈ ΓVE 为测试函数
		* 另（无需回忆）：分部积分用到了光滑性条件
	* 注（无需重读）：弹性力学中 P = -∂𝓛/∂Dϕ 为 first Piola-Kirchoff stress tensor
