x}# Marsden, Introduction to Mechanics and Symmetry
	* SRS
* Hamilton 量 H、Hamiltonian flow X、symplectic form ω 三者的关系（Marsden 力学与对称性导论 p75）{na2b60}
	* ι(X)ω = dH
* 辛流形：Schrödinger 方程对应的状态空间 [?]，symplectic form ω = [?]（Marsden 力学与对称性导论 p68）{na2b62}
	* H：Hilbert space over ℂ
	* ω(ψ₁,ψ₂) = -2ℏ Im⟨ψ₁,ψ₂⟩
	* 注：书上的前一例将 ℂⁿ 视为 2n-维辛流形，这里算无穷维的推广
		* 作为辛流形已可视为完整相空间，可认为已包含动量分量
	* 相关：((n9en50))Schrödinger 方程主记录位置
* 辛空间 Z 中，线性向量场 A 有 Hamiltonian 的充要条件（基于 Marsden 力学与对称性导论 p77）{p93g7n}
	* A ∈ 𝔰𝔭(Z)
	* 具体判据：A is Ω-skew, 即 Ω(Au,v) = -Ω(u,Av)
	* 或等价的 Ω(Au,v) = Ω(Av,u)
* {old}# 辛空间 Z 中，线性向量场 A 若有 Hamiltonian，可取为 H = [?]（Marsden 力学与对称性导论 p77）
	* H(z) = (1/2)Ω(Az,z)，注意系数 1/2
	* 制卡次日重构：认知升级，从更高观点解读，并整合更多信息
* 辛空间 Z 中有 H. ∈ 𝗅𝗂𝖾(𝔰𝔭(Z), C^∞(Z)), H_A = [?]{p93g7p}
	> 来源：基于 Marsden 力学与对称性导论 p77，李代数同态性证明在 p86
	* H_A(z) = (1/2)Ω(Az,z)
	* 注意系数 1/2
* Ham(Z) = 𝔰𝔭(Z)，证明 ⊆ 时对 Ω(X_H(z),v) = dH(z)·v 做哪两步操作{p93g7r}
	> 设定：Z 辛空间，Ham(Z) 由 Hamiltonian 线性向量场组成
	> 来源：Marsden 力学与对称性导论 p77
	* 代入 X_H(z) = Az
	* 对 z 求沿 u 的方向导数
* {old}# Ham(Z) ∈ 𝗅𝗂𝖾 可用的 [-,-] 结构 [?1]（只要求对该运算封闭）；若可定义 self-adj(Z) ∈ 𝗅𝗂𝖾，二者关系 [?2]
	> 设定：Z 辛空间，Ham(Z) 由 Hamiltonian 线性向量场组成
	> 来源：基于 Marsden 力学与对称性导论 p77,p78
	* 同 𝖵𝖾𝖼(Z)，即 inc ∈ 𝗅𝗂𝖾(Ham(Z),𝖵𝖾𝖼(Z)) 为李代数嵌入
		* 注：由 ((p93g7n))Ω(Au,v) = -Ω(u,Av) 可推出
	* A ↦ iA 给出 Ham(Z), self-adj(Z) 的李代数同构（见 p78）
		* 前提：Z 为复内积空间，辛形式用标准版本
	* 新建次日重构：发现 Ham(Z) = 𝔰𝔭(Z) 关系，原记忆内容不再合适
* 𝔰𝔭(Z), self-adj(Z) ∈ 𝗅𝗂𝖾 两个李代数的关系{p93g7t}
	> 设定：Z 为复内积空间（用于定义集合 self-adj(Z)），用带 ℏ 的标准辛结构（用于定义集合 𝔰𝔭(Z)）
	> 设定：self-adj(Z) 上 [A,B] = i(AB - BA)
	> 来源：基于 Marsden 力学与对称性导论 p78
	* A ↦ iA, self-adj(Z) → 𝔰𝔭(Z) 为李代数同构（注意方向！）
	* 推论：值域不超出 self-adj(Z)，且是单射、满射
	* 注：与 ℏ 无关，因辛结构只决定 𝔰𝔭(Z) 的集合大小，其 [-,-] 运算仍继承自 𝖵𝖾𝖼(Z)
* 嵌入映射 inc: 𝖵𝖾𝖼(Z) → ΓTZ 在什么意义下是李代数同态 [?1]，我画的大交换图 [?2]{p94k2e}
	* inc ∈ 𝗅𝗂𝖾(𝖵𝖾𝖼(Z), -ΓTZ)，注意是 -ΓTZ
	* file:///home/yzh/oc-ptis/attached/p94j8v-CD-linHamVecField-SRS.xoj
* 辛流形：Poisson bracket {-,-}: C^∞(M) × C^∞(M) → C^∞(M) 的定义（Marsden 力学与对称性导论 p82）{na2b64}
	* {F,G} = ω(X_F, X_G)
* 辛流形：Poisson bracket {-,-} 与 Lie bracket [-,-] 各自的作用对象（Marsden 力学与对称性导论 p84）{na2b66}
	* C^∞(M) 与 ΓTM
	* 注：bracket 使二者成为 Lie algebra
* 辛流形：Poisson bracket {-,-} 与 Lie bracket [-,-] 关系如何由 X. 给出（Marsden 力学与对称性导论 p84）{na2b68}
	* X_{F,G} = -[X_F, X_G] ；注意负号
* 设 M 为辛流形，[?] ∈ 𝗅𝗂𝖾(C^∞(M), ΓTM) 给出了李代数间态射{na2b6a}
	* 「反向」Hamiltonian flow -X_· ，见((na2b68))
	* 注：这里可能有滥用记号 𝗅𝗂𝖾；按 GTM218 p196，𝗅𝗂𝖾 仅表示有限维李代数
* 辛流形之间的态射（symplectic transformation）按定义需满足的条件（Marsden 力学与对称性导论 p71）{na2b6c}
	* 保辛形式，即 f:(M,ω₁) → (N,ω₂) 满足 f*ω₂ = ω₁
	* 注：GTM218 p568 定义的 symplectomorphism 还要求 f 为 diffeomorphism（包含了可逆要求）
* 辛流形上 Hamilton 力学：dₜF = {H,F} 还是 {F,H}（Marsden 力学与对称性导论 p162）{na6j4a}
	* dₜF = {F,H}
	* 推导容易：dₜF = dF·X_H = ω(X_F,X_H) = {F,H}
* （无穷维）辛流形：Schrödinger 方程对应的 Hamilton 量（Marsden 力学与对称性导论 p109）{na6g80}
	* Hamilton 算子的期望 H = ⟨Hₒₚ⟩，满足 H(ψ) = ⟨Hₒₚψ, ψ⟩
	* 注：可用相应的辛形式((na2b62))自己推导，书上推导我没看
* （无穷维）辛流形：KdV 方程对应的 symplectic form ω = [?]（Marsden 力学与对称性导论 p109）{na6g82}
	* ω(u₁,u₂) = ½∫(U₁u₂ - U₂u₁)，其中 Uᵢ(x) = ∫ˣ_{-∞}uᵢ(y)dy 为原函数
	* 注意 1/2；U₁ 符号为 +
* （无穷维）辛流形：KdV 方程对应的辛流形((na6g82))上若有 Hamiltonian H(u)，则它产生的 Hamiltonian flow X_H(u) = [?]（Marsden 力学与对称性导论 p110）{na6g84}
	* X_H(u) = ∂ₓ(δᵤH)
* （无穷维）辛流形：无粘 Burgers 方程、KdV 方程对应的哈密顿量如何导出（Marsden 力学与对称性导论 p110）{na6g84b}
	* 利用((na6g84)) X_H(u) = ∂ₓ(δᵤH)
	* 设计相应的 H(u) 使 uₜ = X_H(u) = -(u²/2)ₓ （KdV 同理）成立即可
* 变分计算结果 δᵤ∫uₓ²dx = [?]（积分范围 ℝ，假定无穷远衰减足够快）{na6g84d}
	* δᵤ∫uₓ²dx = -2uₓₓ
	* 注意系数 -2
	* （无需回忆）过程即标准变分计算 ∫(uₓ + tvₓ)²dx 对 t 求导
* （无穷维）辛流形：线性弹性力学 ρuₜₜ = ∇·(C:ϵ(u)) 方程对应的 symplectic form ω = [?]（Marsden 力学与对称性导论 p113）{na6g86}
	* ω((v₁,f₁), (v₂,f₂)) = ∫(v₁f₂ - v₂f₁) ，这与 M = TᵛV 上的辛形式相同
* （无穷维）辛流形：线性弹性力学 ρuₜₜ = ∇·(C:ϵ(u)) 方程对应的相空间 M = [?]，其二分量含义分别为 [?]（Marsden 力学与对称性导论 p113）{na6g86a}
	* M = TᵛV
		* （仅重读）其中 V = H¹(ℝ³;ℝ³) 带无穷远衰减约束
	* 分量表示 (u,π)，π = ρuₜ 为（共轭？）动量
* （无穷维）辛流形：线性弹性力学 ρuₜₜ = ∇·(C:ϵ(u)) 方程对应的 Hamilton 量（Marsden 力学与对称性导论 p114）{na6g88}
	* H(u,π) = ½∫(π²/ρ + C:ϵ:ϵ)
	* 其中动量、速度关系 π = ρuₜ
* （无穷维）辛流形，the Schrödinger bracket：设 Hₒₚ，Kₒₚ 为复 Hilbert 空间 𝓗 上自共轭算子，则 {⟨Kₒₚ⟩,⟨Hₒₚ⟩} = ⟨[?]⟩（Marsden 力学与对称性导论 p116）{na6g8a}
	* {⟨Kₒₚ⟩,⟨Hₒₚ⟩} = ⟨[Kₒₚ, Hₒₚ]/iℏ ⟩
	* 注：原文忽略了 iℏ 应为 typo，我自己推的结果、GTM267 p71 都有 iℏ
* {old}# (Hₒₚ ↦ [?]) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗))，包括系数、主项
	> 注 1. 其中 self-adj(𝓗) 上 [A,B] = i(AB - BA)
	> 注 2. 背景：无穷维辛流形 the Schrödinger bracket
	> 注 3. 来源：基于 Marsden 力学与对称性导论 p116
	* (Hₒₚ ↦ -ℏ⟨Hₒₚ⟩) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗))
		* （无需回忆）其中((na6g80))Hamilton 算子期望 ⟨Hₒₚ⟩(ψ) = ⟨Hₒₚψ, ψ⟩
	* 注意 -ℏ
	* 2025-09-03 拆卡：同时回忆两点有难度
* (Hₒₚ ↦ α[?]) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗))，系数 α 无需回忆{o9fl5u}
	> 设定：self-adj(𝓗) 上 [A,B] = i(AB - BA)
	> 背景：无穷维辛流形 the Schrödinger bracket
	> 来源：基于 Marsden 力学与对称性导论 p116
	* (Hₒₚ ↦ -ℏ⟨Hₒₚ⟩) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗))
	* （无需回忆）其中((na6g80))Hamilton 算子期望 ⟨Hₒₚ⟩(ψ) = ⟨Hₒₚψ, ψ⟩
* (Hₒₚ ↦ [?]⟨Hₒₚ⟩) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗)){p93f1f}
	> 设定：self-adj(𝓗) 上 [A,B] = i(AB - BA)
	> 背景：无穷维辛流形 the Schrödinger bracket
	> 来源：基于 Marsden 力学与对称性导论 p116
	* (Hₒₚ ↦ -ℏ⟨Hₒₚ⟩) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗))
	* 注：验证系数 -ℏ 的过程见 buffer-srs.md 2025-09-03
* (Hₒₚ ↦ -ℏ⟨Hₒₚ⟩) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗))，我理解的系数 -ℏ 为何必要 [?1]，其取值依赖于 [?2] 的定义{p93f1h}
	> 设定：self-adj(𝓗) 上 [A,B] = i(AB - BA)
	> 背景：无穷维辛流形 the Schrödinger bracket
	> 来源：基于 Marsden 力学与对称性导论 p116
	* 李代数同态并非线性空间，f 是同态，αf 一般不是
	* 𝓗 辛结构定义 ω(ψ₁,ψ₂) = -2ℏ Im⟨ψ₁,ψ₂⟩（见((na2b62))）
		* 又进一步依赖于 Schrödinger 方程形式 iℏ∂ₜψ = Hₒₚψ
	* 注：验证系数 -ℏ 的过程见 buffer-srs.md 2025-09-03
* (Hₒₚ ↦ -ℏ⟨Hₒₚ⟩) ∈ 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗))，我拆分为哪两个李代数同态复合 [?1]，相关的大交换图 [?2]{p94k49}
	> 设定：self-adj(𝓗) 上 [A,B] = i(AB - BA)
	> 背景：无穷维辛流形 the Schrödinger bracket
	> 来源：基于 Marsden 力学与对称性导论 p116
	* self-adj(𝓗) → 𝔰𝔭(𝓗) → C^∞(𝓗), Hₒₚ ↦ iHₒₚ ↦ (1/2)ω(iHₒₚψ,ψ) = -ℏ⟨Hₒₚψ,ψ⟩
	* file:///home/yzh/oc-ptis/attached/p94j8v-CD-linHamVecField-SRS.xoj
* self-adj(𝓗), C^∞(𝓗) 分别是什么域上的向量空间{o9fl5w}
	> 注 1. 𝓗 为 ℂ 上 Hilbert 空间
	> 注 2. 背景：无穷维辛流形 the Schrödinger bracket 可涉及 𝗅𝗂𝖾(self-adj(𝓗),C^∞(𝓗)) 中元素
	> 注 3. 来源：基于 Marsden 力学与对称性导论 p116
	* self-adj(𝓗), C^∞(𝓗) ∈ ℝ-𝖵𝖾𝖼 
	* 前者元素在 ℂ 中，但仍仅仅为 ℝ 向量空间
* V ∈ ℂ-𝖵𝖾𝖼，我认为 V 上的 Hermite 矩阵空间组成 Lie 代数，其上 Lie bracket 可以如何由 𝖵𝖾𝖼(V) 上的 Lie bracket 给出{na6g8c}
	* （相差实常数下）[A,B]₁ = i[A,B] = i(AB - BA)，后者为 𝖵𝖾𝖼(V) 上的传统李括号
* 仅重读：M 为无穷维流形时，ΓTM ≠ (directional) derivative on C^∞(M){o84g7h}
	* Marsden 力学与对称性导论 p138
* 辛流形（允许无穷维）定义中对 ω ∈ Ω²(M) 的要求，两点（Marsden 力学与对称性导论 p147）{na9e48}
	* dω = 0
		* 注：下方解释这使 Poisson bracket 满足 Jacobi 等式，X_H 的 flow 为辛变换
	* 非退化，即：ker(ωᵇ: TM → TᵛM) = 0
		* 注：若 ωᵇ 逐 fiber 为满射，则称为强辛流形；有限维时自动满足
* 辛流形，不同构于任何一个 TᵛQ 或其商空间的辛流形例子（Marsden 力学与对称性导论 p148）{nb8f9r}
	* M = S²，ω = r²sinθ dθ ∧ dϕ 为体积形式
* almost complex manifold M 的定义（Marsden 力学与对称性导论 p153）{o84g87}
	* 有 almost complex structure J ∈ 𝖵𝖡(TM)，满足 Jₚ² = -Id(TₚM)，∀p ∈ M
* 仅重读：H ∈ 𝖧𝗂𝗅𝖻，则其射影空间 ℙH 上有 strong Riemannian metric、strong symplectic form{o84g8w}
	* Marsden 力学与对称性导论 p155
* 余切丛作为辛流形：满足 σ*τ = σ 对 ∀σ ∈ Ω¹(Q)（视为 σ: Q → TᵛQ）成立的 τ ∈ Ω¹(TᵛQ) 有哪些（Marsden 力学与对称性导论 p168）{na7n1a}
	* 有且只有 ((na2e90))tautological 1-form τ
* {old}# （有事实错误）cotangent lift 给出的辛映射：(1) { Tᵛ[ϕ] | ϕ ∈ 𝖣𝗂𝖿𝖿(Q)ˣ }（Q 上自同胚的 cotangent lift 集合）与 (2) 𝖲𝗒𝗆𝗉(TᵛQ)ˣ（TᵛQ 上辛同胚集合）的包含关系（Marsden 力学与对称性导论 p170）
	* { Tᵛ[ϕ] | ϕ ∈ 𝖣𝗂𝖿𝖿(Q)ˣ } = 𝖲𝗒𝗆𝗉(TᵛQ)ˣ
* # （有事实错误）与 𝖲𝗒𝗆𝗉(TᵛQ)ˣ 同构的 Lie 群：[?] ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)ˣ,𝖲𝗒𝗆𝗉(TᵛQ)ˣ) 给出了 Lie 群同构（基于 Marsden 力学与对称性导论 p170）{o8qm89}
	* T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)ˣ,𝖲𝗒𝗆𝗉(TᵛQ)ˣ)
		* 基于 Q 上自同胚的 cotangent lift ϕ ↦ Tᵛ[ϕ]
* cotangent lift 像集 Im(T⁻ᵛ) 的结构：ϕ ∈ Im(T⁻ᵛ) ⇔ ϕ^* preserve 哪个微分形式{o9nl2l}
	> （注）其中 ϕ ∈ 𝖲𝗒𝗆𝗉(TᵛQ)ˣ，`ϕ^* = Ωᵏ[ϕ]`
	> （注）背景：（自同胚的）cotangent lift T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)ˣ,𝖲𝗒𝗆𝗉(TᵛQ)ˣ)
	> （注）来源：Marsden 力学与对称性导论 p170
	* canonical one-form τ
		* 注：ϕ ∈ 𝖲𝗒𝗆𝗉(TᵛQ)ˣ 本身保证 ϕ^* preserve ω
	* 注：T⁻ᵛ 在底空间同向，也即 π: TᵛQ → Q 满足 π ∈ 𝖢𝖠𝖳(G,𝖣𝗂𝖿𝖿)(T⁻ᵛ,id), G = 𝖣𝗂𝖿𝖿(Q)ˣ
	* 相关：((o8rm0f))cotangent lift 的向量场版本
* 辛自同胚 ϕ 是否来自基流形自同胚的 cotangent lift，我所知道的等价条件{q1v01t}
	> 即：ϕ ∈ 𝖲𝗒𝗆𝗉(TᵛQ)ˣ，判断是否 ∃ψ ∈ 𝖣𝗂𝖿𝖿(Q)ˣ 满足 ϕ = T⁻ᵛ[ψ]
	> 背景：（自同胚的）cotangent lift T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)ˣ,𝖲𝗒𝗆𝗉(TᵛQ)ˣ)，考察其像集 Im(T⁻ᵛ) 的结构
	> 来源：基于 Marsden 力学与对称性导论 p170
	* ϕ^* 不仅 preserve ω，还 preserve canonical one-form τ
	* 注：前者由 ϕ ∈ 𝖲𝗒𝗆𝗉(TᵛQ)ˣ 本身保证
	* 注：`ϕ^* = Ω*[ϕ]: Ω*(TᵛQ) → Ω*(TᵛQ)`
* 辛流形：设 f ∈ 𝖲𝗒𝗆𝗉(M₁,M₂) 为微分同胚，则其 generating function S ∈ [?]（Marsden 力学与对称性导论 p175）{na7n30}
	* S ∈ C^∞(Γ(f)) ，可相差常数
	* 其中 Γ(f) ⊂ M₁ × M₂ 为 f: M₁ → M₂ 的 graph
* 辛流形：设 f ∈ 𝖲𝗒𝗆𝗉(M₁,M₂) 为微分同胚，则其 generating function S 定义（3 点；Marsden 力学与对称性导论 p175）{na7n32}
	* 局部地考察 `τ = i^*(π₁^*τ₁ - π₂^*τ₂) ∈ Ω¹(Γ(f))`
		* 其中 i: Γ(f) → M₁ × M₂ ，ωᵢ = -dτᵢ
		* 注：辛流形未必为 Mᵢ = TᵛQᵢ，故未必有全局的 tautological 1-form τᵢ；但由于 dω = 0，仍可局部地定义 τᵢ
	* 由于 f symplectic，可验证 dτ = 0
	* 故局部地有 τ = dS, S ∈ C^∞(Γ(f)) 可相差常数
* {old}# 辛变换：（设 Q₁ ≅ Q₂）给定 generating function S ∈ C^∞(Q₁ × Q₂)，它如何给出变换 fᵢ: Q₁ × Q₂ → TᵛQᵢ，该给出方式的原理（Marsden 力学与对称性导论 p175）
	* p₁ = ∂S/∂q₁，p₂ = -∂S/∂q₂
	* 原理（推导方式）：τ₁ - τ₂ = dS
	* 2025-10-10 重构：设问表述调整
* 利用 S(q₁,q₂) 所给出变换 fᵢ: Q₁ × Q₂ → TᵛQᵢ 的形式 [?2]，原理 [?1]{na7n34}
	> 设定：Q₁ ≅ Q₂，generating function S ∈ C^∞(Q₁ × Q₂)
	> 来源：Marsden 力学与对称性导论 p175
	* dS = τ₁ - τ₂
	* p₁ = ∂S/∂q₁，p₂ = -∂S/∂q₂
* {old}# 如何利用 generating function S ∈ C^∞(Q₁ × Q₂) 给出 Q₁ × Q₂ 上的辛结构 ω
	> （注）背景：辛变换，Q₁ ≅ Q₂
	> （注）来源：基于 Marsden 力学与对称性导论 p175
	* ω = fᵢ^*ωᵢ
	* 即：不是只在 Q₁ × Q₂ 空间内部操作，需要先转换到 TᵛQᵢ 再定义辛结构
	* 利用了((na7n34))fᵢ: Q₁ × Q₂ → TᵛQᵢ
	* 2025-10-10 重构：原设问方式歧义，连同回忆点一起修改
* 利用 S(q₁,q₂) 给出 Q₁ × Q₂ 上辛结构 ω 的直接依据{na7n36}
	> 设定：Q₁ ≅ Q₂，generating function S ∈ C^∞(Q₁ × Q₂)
	> 来源：基于 Marsden 力学与对称性导论 p175
	* 利用 TᵛQᵢ 上的辛结构 ωᵢ
* 辛变换：（设 Q₁ ≅ Q₂）给定 generating function S ∈ C^∞(Q₁ × Q₂)，为何 f₁^*ω₁ = f₂^*ω₂{na7n36a}
	* `0 = ddS = d(f₁^*τ₁ - f₂^*τ₂) = -(f₁^*ω₁ - f₂^*ω₂)`
	* 记住 ddS = 0 即可
* 辛变换：（设 Q₁ ≅ Q₂）给定 generating function S ∈ C^∞(Q₁ × Q₂)，它给出了 Q₁ × Q₂ 上的辛结构，我推导得其局部坐标下的表达式为 ω = [?]{na7n38}
	* ω = (∂₁₂S)dq₁ ∧ dq₂ = ∑ᵢⱼ(∂²S/∂q₁ⁱ∂q₂ʲ)dq₁ⁱ ∧ dq₂ʲ
* 辛变换：（设 Q₁ ≅ Q₂）给定 generating function S ∈ C^∞(Q₁ × Q₂)，它给出了 Q₁ × Q₂ 上的辛结构 ω，我推导 ω 局部坐标下表达式所用的方式{na7n3a}
	* 要点：f₁^*τ₁ = (∂₁S)dq₁
	* 之后的计算相对直接：ω = -d(f₁^*τ₁) = (∂₁₂S)dq₁ ∧ dq₂
* 辛变换 f ∈ 𝖲𝗒𝗆𝗉(TᵛQ₁,TᵛQ₂) 如何利用 generating function S ∈ C^∞(Q₁ × Q₂) 给出{na7n3c}
	> 设定：Q₁ ≅ Q₂ 给定
	> 来源：Marsden 力学与对称性导论 p175
	* 利用辛同胚((na7n34)) fᵢ: Q₁ × Q₂ → TᵛQᵢ，取 f = f₂ ∘ f₁⁻¹
* 辛流形：设 B ∈ Ω²(Q)，π: TᵛQ → Q，则 ω_B = ω - π^*B 能给出 TᵛQ 上辛形式的条件 [?1]，该条件的物理意义 [?2]（Marsden 力学与对称性导论 p177）{na9e60}
	* dB = 0（从而能保证 dω_B = 0）
	* 磁场 B 满足 ∇ · B = 0
* 辛流形：带电粒子在磁场中运动方程 mvₜ = ev × B 用外微分形式可表达为（Marsden 力学与对称性导论 p178）{na9e63}
	* pₜ = -eι(v)B，v ∈ TQ，B ∈ Ω²(Q)；注意负号
	* 注：e 对应书中的 (e/c)
* 辛流形：带电粒子在磁场中运动方程 mvₜ = ev × B 可用 (TᵛQ, ω_B, H)，(TᵛQ, ω, H_A) 两个 Hamilton 系统刻画，其中 ω_B = [?]（Marsden 力学与对称性导论 p178）{na9e66}
	* ω_B = ω - eπ^*B，磁场 B ∈ Ω²(Q)
* 辛流形：带电粒子在磁场中运动方程 mvₜ = ev × B 可用 (TᵛQ, ω_B, H)，(TᵛQ, ω, H_A) 两个 Hamilton 系统刻画，其中 H_A = [?]（Marsden 力学与对称性导论 p179）{na9e69}
	* H_A(q,p) = ‖p - eA(q)‖² / 2m，A ∈ Ω¹(Q)，A(q) ∈ TᵛQ
* 辛流形：带电粒子在磁场中运动方程 mvₜ = ev × B 可用 (TᵛQ, ω_B, H)，(TᵛQ, ω, H_A) 两个 Hamilton 系统刻画，其中 H_A 所涉及的 A 的物理含义（Marsden 力学与对称性导论 p179）{na9e6a}
	* 磁矢势，dA = B
* 辛流形：带电粒子在磁场中运动方程 mvₜ = ev × B 可用 (TᵛQ, ω_B, H)，(TᵛQ, ω, H_A) 两个 Hamilton 系统刻画，其中成立 p = mv 的是哪一个（Marsden 力学与对称性导论 p178）{na9e6c}
	* (TᵛQ, ω_B, H)
* 辛流形：带电粒子在磁场中运动方程 mvₜ = ev × B 可用 (TᵛQ, ω_B, H)，(TᵛQ, ω, H_A) 两个 Hamilton 系统刻画，二者之间变换关系（Marsden 力学与对称性导论 p178）{na9e6f}
	* fiber translation t_A: (q, p) ↦ (q, p + eA(q))
* 理论力学，设相空间为 M = TQ，Hamilton-Jacobi equation 中涉及的 S 的定义域（Marsden 力学与对称性导论 p211）{o86d90}
	* Q × Q × ℝ（的子集）；对应自变量 (q₀,q,t)
* 理论力学，设相空间为 M = TQ，Hamilton-Jacobi equation 中涉及的 S(q,q₀,t) 与 X_H 时间积分所得的 ϕₜ ∈ 𝖲𝗒𝗆𝗉(M) 的关系（Marsden 力学与对称性导论 p211,p231）{o86d92}
	* 给定 t，S(q,q₀,t) 为 ϕₜ⁻¹: (q,p) ↦ (q₀,p₀) 的生成函数
	* 注意是 ϕₜ⁻¹ 而非 ϕₜ
* 理论力学，设相空间为 M = TQ，Hamilton-Jacobi equation 中涉及的 S 只在局部有定义的原因：在空间上局部 [?1]，不包含 t = 0 [?2]，不包含过大的 t [?3]（Marsden 力学与对称性导论）{o86d94}
	* 生成函数通常只在局部有定义（p211）
	* t = 0 时 S 生成恒同变换，从而为 S 奇点（p214 rmk1）
	* t 较大时 S 通常发展出奇点（p214 rmk1）
* 理论力学中 Hamilton-Jacobi equation 形式（Marsden 力学与对称性导论 p212）{o86d96}
	* ∂ₜS + H(q,∂S/∂q,t) = 0
* 理论力学，Hamilton-Jacobi equation 中涉及的 S(q,q₀,t) 与路径作用量 I[q(s)] = ∫₀ᵗL(q,v,s)ds 的关系（Marsden 力学与对称性导论 p214）{o86d98}
	* S(q,q₀,t) = min { I[q(s)] | q(0) = q₀, q(t) = q }
	* 即：S 为作用量的最小值
* 对 G ∈ 𝖫𝗂𝖾，TₑG ∈ 𝗅𝗂𝖾 上的 Lie bracket 结构通常靠延拓为 left-invariant vector fields 给出。如果改用 right-invariant 延拓，相应的 Lie bracket [-,-]_R 为（Marsden 力学与对称性导论 p271）{o8dm9g}
	* [-,-]_R = -[-,-] 相差负号
* Lie 群指数映射 exp: 𝔤 → G locally onto e ∈ G（单位元）的一个邻域，充分条件是（Marsden 力学与对称性导论 p274）{o89d8o}
	* G 有限维
	* 推论：无穷维情形无法在 e ∈ G 的邻域定义 log 函数
* Lie 群上 adjoint operator Ad ∈ 𝖫𝗂𝖾(G, 𝗅𝗂𝖾(𝔤)ˣ) 的定义，我拆分成了哪两个算子的复合（Marsden 力学与对称性导论 p275）{o89d8q}
	* Ad = Lie[-] ∘ conj : G → 𝖫𝗂𝖾(G)ˣ → 𝗅𝗂𝖾(𝔤)ˣ
	* conj ∈ 𝖫𝗂𝖾(G, 𝖫𝗂𝖾(G)ˣ)
	* Lie[-] = Tₑ ∈ 𝖫𝗂𝖾(𝖫𝗂𝖾(G)ˣ, 𝗅𝗂𝖾(𝔤)ˣ)
		* 注：我的记号 𝔤 = Lie(G)，Lie 为函子
	* 注：我的各元素关系示意图 file:///home/yzh/oc-ptis/attached/o8tm2x-LieGrp-Ad-SRS.xoj
* # 对 Lie 群上 adjoint operator Ad ∈ 𝖫𝗂𝖾(G, 𝗅𝗂𝖾(𝔤)ˣ) 与 η ∈ 𝔤，有 Ad.η ∈ 𝖣𝗂𝖿𝖿(G,𝔤)，Tₑ[Ad.η] ∈ 𝖵𝖾𝖼(TₑG,T_η𝔤) = 𝖵𝖾𝖼(𝔤)，满足 Tₑ[Ad.η]: ξ ↦ [?]（Marsden 力学与对称性导论 p275）{o89l73a}
	* Tₑ[Ad.η]: ξ ↦ [ξ,η]
	* 注：按新结论((o89l73)) ad(ξ)(η) = [ξ,η] 记忆
* {old}# 矩阵等式 det(exp A) = exp(tr A) 来自一般的 Lie 群结论，exp ∈ [?] 为 natural transformation（Marsden 力学与对称性导论 p276-277）
	* exp ∈ 𝖢𝖠𝖳(𝖫𝗂𝖾,𝖣𝗂𝖿𝖿)(Lie,Id)
	* 注：用到 𝗅𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿, 𝖫𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿
	* （以下为修订记录）该卡片设计的问题：
	* 提取场景覆盖不足：
		* 只在知道它是某种 natural transformation 的前提下能试图写出其具体形式
		* 下次看到这个矩阵等式，不会自动想到它可从 Lie 群的高观点解读（交换图）
		* 次级观点拔高同样没有，下次看到其涉及的 Lie 群交换图，不会想到从范畴论角度解读
	* 内容回忆难度大，题面对回忆也没有帮助
		* 原回答过程拆分：先想起它是与 Lie 有某种交换关系，然后回忆(or推理)相应交换图，再根据自然变换的交换图推理（不是回忆）具体表达式
		* 修订后最后一步推理不再要求：只要能想起该交换图能用自然变换解读（之前卡片也不帮助回忆这点），自行推出具体表达式并不困难，无需要求记忆具体形式（反正复习到这张卡片了也是现推）
		* 修订后回答过程显式化，“先回忆交换图”在卡片正面明确要求
	* 2025-08-13 进一步将 natural transformation 表达式单独拆分回忆：该部分内容值得记，拆分后也不难记
* exp: 𝔤 → G 与 f: G → H 满足的交换图 [?1]，从范畴论观点看 [?2]（Marsden 力学与对称性导论 p276）{o89n8l}
	* f ∘ exp = exp ∘ Lie[f] （交换图中 exp 指向右，图左侧 Lie[f]、右侧 f 均指向上；具体图略）
	* exp ∈ 𝖢𝖠𝖳(𝖫𝗂𝖾,𝖣𝗂𝖿𝖿)(Lie,Id) 为 natural transformation
		* 具体表达式回忆失败也无妨，可根据交换图自行写出
		* 注：用到 𝗅𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿, 𝖫𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿
* det 与 tr 的关系，从 Lie 群、Lie 代数角度解读（基于 Marsden 力学与对称性导论 p276-277）{p2pg1d}
	* det ∈ 𝖫𝗂𝖾(𝖵𝖾𝖼(V)ˣ,ℝˣ)，tr ∈ 𝗅𝗂𝖾(𝖵𝖾𝖼(V),ℝ)
	* Lie[det] = tr
	* 注：具体计算((n97d88))det(I + tA) = 1 + tr(A)t + o(t)
* 矩阵等式 det(exp A) = exp(tr A) 是李群李代数某性质的特例：exp 满足什么交换图{p2pg1f}
	> 来源：基于 Marsden 力学与对称性导论 p276-277
	* f ∘ exp = exp ∘ Lie[f] （交换图中 exp 指向右，图左侧 Lie[f]、右侧 f 均指向上；具体图略）
	* 即：exp: 𝔤 → G 为 natural transformation
* exp ∈ 𝖢𝖠𝖳([?])(Lie,Id){p8dm0a}
	> 背景：exp: 𝔤 → G 与 f: G → H 满足 f ∘ exp = exp ∘ Lie[f]，可视为 natural transformation 的交换图
	> 来源：基于 Marsden 力学与对称性导论 p276-277
	* exp ∈ 𝖢𝖠𝖳(𝖫𝗂𝖾,𝖣𝗂𝖿𝖿)(Lie,Id)
	* 注：用到 𝗅𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿, 𝖫𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿
* exp ∈ 𝖢𝖠𝖳(𝖫𝗂𝖾,𝖣𝗂𝖿𝖿)([?]){p8dm0c}
	> 背景：exp: 𝔤 → G 与 f: G → H 满足 f ∘ exp = exp ∘ Lie[f]，可视为 natural transformation 的交换图
	> 来源：基于 Marsden 力学与对称性导论 p276-277
	* exp ∈ 𝖢𝖠𝖳(𝖫𝗂𝖾,𝖣𝗂𝖿𝖿)(Lie,Id)
	* 注：用到 𝗅𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿, 𝖫𝗂𝖾 ⊂ 𝖣𝗂𝖿𝖿
* Lie 群：设 G ∈ 𝖳𝖦𝗋𝗉 为拓扑群，加什么条件可以推出 G ∈ 𝖫𝗂𝖾，即相当于连续性条件 C⁰ ⇒ C^ω，且该光滑结构唯一（Marsden 力学与对称性导论 p278）{o8aa1r}
	* G 局部欧氏，即 e 的某邻域同胚于 ℝⁿ 中开球
	* 注：为 Hilbert 第 5 问题
* 拓扑流形 M 何时保证存在唯一的光滑结构，我所知道的一个充分条件为（基于 Marsden 力学与对称性导论 p278）{p56f7c}
	* M ∈ 𝖳𝖦𝗋𝗉 为拓扑群
	* 注：拓扑流形定义应能自动保证 M 局部欧氏，即 e 的某邻域同胚于 ℝⁿ 中开球
* Lie 群 G 上的 Maurer–Cartan 结构方程涉及的左、右平移外微分形式 λ,ρ ∈ [?]（Marsden 力学与对称性导论 p280）{o8aa40}
	* λ,ρ ∈ Ω¹(G;𝔤) = Γ(TᵛG ⊗ 𝔤) = 𝖵𝖡(TG, 𝔤)
	* 注：𝔤 ∈ 𝖵𝖡 可按 G × 𝔤 或 {p} × 𝔤 理解
	* 注：“左、右平移形式”只是我的叫法
* {old}# Lie 群 Maurer–Cartan 结构方程涉及的左平移形式 λ ∈ Ω¹(G;𝔤) = 𝖵𝖡(TG,TₑG) 定义：对 g ∈ G，λ|T_gG = [?]: T_gG → TₑG = 𝔤（Marsden 力学与对称性导论 p280）
	* λ|T_gG = T_g[L_{g⁻¹}]: T_gG → TₑG = 𝔤
	* 注：其中 L_{g⁻¹}: G → G, g ↦ e 
	* （旧）`u_g ∈ T_gG, λ(u_g) = T_g[L_{g⁻¹}](u_g)`
	* 2026-01-16 重构
* Lie 群 dλ + [λ,λ] = 0 中 λ 定义涉及空间等价 λ ∈ Ω¹(G;𝔤) = [?]{o8aa42}
	> 背景：Lie 群 Maurer–Cartan 结构方程，λ 为左平移形式
	> 来源：Marsden 力学与对称性导论 p280
	* λ ∈ Ω¹(G;𝔤) = 𝖵𝖡(TG,TₑG)
* Lie 群 dλ + [λ,λ] = 0 中为定义 λ ∈ 𝖵𝖡(TG,TₑG)，只需定义什么{o8aa42b}
	> 背景：Lie 群 Maurer–Cartan 结构方程，λ 为左平移形式
	> 来源：Marsden 力学与对称性导论 p280
	* 逐 fiber 定义：任给 g ∈ G，定义 λ|T_gG: T_gG → TₑG = 𝔤
	* 注：不是采用全局统一表达式定义的方式
* Lie 群 dλ + [λ,λ] = 0 中 λ|T_gG = [?]: T_gG → TₑG = 𝔤{o8aa42d}
	> 设定：λ ∈ Ω¹(G;𝔤) = 𝖵𝖡(TG,TₑG)，g ∈ G
	> 背景：Lie 群 Maurer–Cartan 结构方程，λ 为左平移形式
	> 来源：Marsden 力学与对称性导论 p280
	* λ|T_gG = T_g[L_{g⁻¹}]: T_gG → TₑG = 𝔤
	* 注：其中 L_{g⁻¹}: G → G, g ↦ e 
* Lie 群 Maurer–Cartan 结构方程：左、右平移形式 λ,ρ ∈ Ω¹(G;𝔤) 满足的方程分别为，注意符号（Marsden 力学与对称性导论 p281）{o8aa44}
	* dλ + [λ,λ] = 0
	* dρ - [ρ,ρ] = 0
	* 注：证明用到((o7gd9e))d:Ωᵏ → Ωᵏ⁺¹ 不依赖坐标系的表达式
* {x}# Lie 群 Maurer–Cartan 结构方程中，由左平移形式 λ ∈ Ω¹(G;𝔤) 定义出了 [λ,λ] ∈ Ω²(G;𝔤)，其中涉及的 [-,-]: Ω¹(G;𝔤) × Ω¹(G;𝔤) → Ω²(G;𝔤) 我所理解的定义方式为 [?1]，具体计算上 [λ₁,λ₂] = [?2]（Marsden 力学与对称性导论 p280）
	* Ω¹(G; 𝔤) = Γ(TᵛG ⊗ 𝔤)，在 fiber T_gᵛG ⊗ 𝔤 上对前一个分量取楔积 -∧-、后一个分量取 Lie bracket [-,-]
	* [λ₁, λ₂]: T_g × T_g → 𝔤, (u_g, v_g) ↦ [λ₁(u_g), λ₂(v_g)]
* Lie 群 Maurer–Cartan 结构方程涉及映射 Ω¹(G;𝔤) → Ω²(G;𝔤), λ ↦ [λ,λ]，我将它拆成了哪两个映射的复合（基于 Marsden 力学与对称性导论 p280）{o8af00}
	* ∧²[-]: Ω¹(G;𝔤) → Ω²(G;∧²𝔤)
		* 注（无需回忆）：用到 ∧² ∈ 𝖢𝖠𝖳(𝖵𝖡)（见((o8af12))），∧²[-]: 𝖵𝖡(TG, 𝔤) → 𝖵𝖡(∧²TG, ∧²𝔤)
			* 或等价于 ∧²[-]: Γ(TᵛG ⊗ 𝔤) → Γ(∧²TᵛG ⊗ ∧²𝔤)，见((o8af10))
	* [-,-]: ∧²𝔤 → 𝔤
	* 注（无需回忆）：不能定义 [λ,μ]，用 (λ,μ) 只是给出 𝖵𝖡(⊗²TG,⊗²𝔤) 中元素
* 对向量值微分形式，可定义 wedge product Ωᵏ(M,E₁) × Ωˡ(M,E₂) → Ωᵏ⁺ˡ(M,E₁⊗E₂)，Marsden 力学与对称性导论 p280 要求 E₁,E₂ 是什么类型的空间，有限维、Banach、Hilbert、……{o8af02}
	* Banach
	* 注（无需重读）：原文实际上用的是双线性型 B: E₁ × E₂ → E₃，未涉及 E₁ ⊗ E₂
* Lie 群 Maurer–Cartan 结构方程有时写为 dλ + ½[-,-]^(λ,λ) = 0，其中的系数 1/2 产生的原因（基于 Marsden 力学与对称性导论 p281-282）{o8af04}
	* 处理 (⊗²TᵛG) ⊗ (⊗²𝔤) → (∧²TᵛG) ⊗ (⊗²𝔤) 时的楔积定义采用了 Bourbaki convection（p130），使用的交错化算子是 2A: ⊗²V → ∧²V，而不是我习惯用的 A
	* （以下无需重读）注：
	* 1. 这里的记号都忽略了 Γ
	* 2. Lie bracket 直接视为 [-,-]: ⊗²𝔤 → 𝔤，未经过交错化过程，故不会引入新的系数
	* 3. p280 的 [λ,λ] 定义直接使用 ⊗²TG → ⊗²𝔤，交错性质靠事后证明（而非事先用交错化算子），故未引入该系数
	* 4. 我的理解((o8af00))中直接使用函子 ∧²[-]: TᵛG ⊗ 𝔤 → ∧²TᵛG ⊗ ∧²𝔤，未经历中间状态 ⊗²TᵛG，故不涉及楔积定义、不会引入该系数
* Lie 群：T ∈ 𝖢𝖠𝖳(𝖫𝗂𝖾) 的具体实现，设 G ∈ 𝖫𝗂𝖾 有乘法运算 μ: G × G → G 和逆运算 inv: G → G，则 TG ∈ 𝖫𝗂𝖾 上的乘法运算、逆运算如何给出（Marsden 力学与对称性导论 p282）{o8ah5w}
	* 乘法运算 T[μ], 逆运算 T[inv]
	* 注：没有直接利用 vector bundle 上的加法运算
* Heisenberg 群的定义：设 (Z,Ω) 为辛向量空间，H = Z × (ℝ/2π) 上的乘法定义为 (u,[ϕ])(v,[ψ]) = [?]，包括常数 ℏ（Marsden 力学与对称性导论 p283）{o8ah6h}
	* (u,[ϕ])(v,[ψ]) = (u + v, [ϕ + ψ + ℏ⁻¹Ω(u,v)])
		* 注意 ℏ 取了逆
	* 注：应可视为 Z × ℝ 的商群
* 设 a ∈ ℝ³ 对应 A ∈ 𝔰𝔬(3)（满足 Ab = a × b），则 A² = [?]，用 a 表示（Marsden 力学与对称性导论 p292）{o8aj5s}
	* A² = aaᵀ - aᵀaI ，注意减号
	* 注：用 F × (G × H) 的计算公式不难推导
* {old}# Rodrigues 公式用于计算 exp: 𝔰𝔬(3) → SO(3)：设「单位」向量 a ∈ ℝ³ 对应 A ∈ 𝔰𝔬(3)（满足 Ab = a × b），则 exp(rA) = [?]（Marsden 力学与对称性导论 p292）
	* 
* exp(rA) = [?]{o8aj5u}
	> （注）设定：设「单位」向量 a ∈ ℝ³ 对应 A ∈ 𝔰𝔬(3)（满足 Ab = a × b）
	> （注）背景：Rodrigues 公式用于计算 exp: 𝔰𝔬(3) → SO(3)
	> （注）来源：Marsden 力学与对称性导论 p292
	* exp(rA) = I + (sin r)A + (1 - cos r)A²
	* 注（无需重读）：p306 有用四元数的写法
* exp(rA) 的计算公式有多少项，按 A 幂次展开{oa499a}
	> （注）设定：设「单位」向量 a ∈ ℝ³ 对应 A ∈ 𝔰𝔬(3)（满足 Ab = a × b）
	> （注）背景：Rodrigues 公式用于计算 exp: 𝔰𝔬(3) → SO(3)
	> （注）来源：Marsden 力学与对称性导论 p292
	* 3 项，基底 I, A, A²
* exp: 𝔰𝔬(3) → SO(3) 的计算，算 exp(B) 前先怎么分解 B{oa499c}
	> （注）来源：Marsden 力学与对称性导论 p292
	> （注）复习时间需分开
	* B = rA，其中 A ∈ 𝔰𝔬(3) 对应「单位」向量 a ∈ ℝ³（满足 Ab = a × b）
* {old}# 辛群：设 J = [0,I;-I,0]，有 Sp(2n,ℝ) = { A | [?1] }, 𝔰𝔭(2n,ℝ) = { A | [?2] }（Marsden 力学与对称性导论 p293-294）
	* Sp(2n,ℝ) = { A | AᵀJA = J }
		* 注：用辛空间语言 Ω(Av,Aw) = Ω(v,w) 不难记忆
	* 𝔰𝔭(2n,ℝ) = { A | AᵀJ + JA = 0 }
		* 注：辛群的约束条件对 A 求导即得
	* 2025-08-11 拆卡：二点应分开回忆
* 辛群 Sp(2n,ℝ) = { A | [?2] }，对应的无坐标版本 [?1]（一般辛空间）{p8bg5v}
	> 设定：J = [0,I;-I,0]
	> 来源：Marsden 力学与对称性导论 p293-294
	* Sp(2n,ℝ) = { A | AᵀJA = J }
	* 辛空间 Ω(Av,Aw) = Ω(v,w)
* 辛代数 𝔰𝔭(2n,ℝ) = { A | [?2] }，与辛群 Sp(2n,ℝ) 表达式关系 [?1]{o8aj8k}
	> 设定：J = [0,I;-I,0]
	> 参考：Sp(2n,ℝ) = { A | AᵀJA = J }
	> 来源：Marsden 力学与对称性导论 p293-294
	* 𝔰𝔭(2n,ℝ) = { A | AᵀJ + JA = 0 }
	* 辛群的约束条件对 A 求导即得
* 辛群 Sp(2n,ℝ)：设辛空间 (Z,Ω) 上有辛变换 A，用条件 AᵛΩ = Ω 只能说明 det(A) = ±1，要进一步证明 det(A) = 1（从而 Sp(2n,ℝ) ⊂ SL(2n,ℝ)）的主要思路（Marsden 力学与对称性导论 p295）{o8aj8m}
	* 考察 Aᵛ 在体积形式 ∧ⁿΩ ∈ ∧²ⁿZᵛ 上的作用
* 辛矩阵 A ∈ Sp(2n,ℝ) 若有特征值 λ ∈ ℂ，则能保证还有哪些特征值 [?1]；A ∈ 𝔰𝔭(2n,ℝ) 的情形 [?2]（Marsden 力学与对称性导论 p295,297）{o8aj8o}
	* λ, conj(λ), 1/λ, 1/conj(λ)
	* ±λ, ±conj(λ)
	* 注：书上有画特征值分布的示意图，可直接按这个示意图回忆
* 李群 SL(n,ℂ) = ker det（其中 `det ∈ 𝖦𝗋𝗉(ℂ-𝖵𝖾𝖼(V)ˣ,ℂ\{0})`）对应的李代数 𝔰𝔩(n,ℂ) = [?]{o8cl8w}
	* 𝔰𝔩(n,ℂ) = ker tr，其中 tr ∈ 𝖠𝖻(ℂ-𝖵𝖾𝖼(V),ℂ)
	* 注：((p2pg1d))Lie[det] = tr；暂未确定是否 Lie ker = ker Lie
		* 猜想：𝖫𝗂𝖾 中正合列 `{1} → SL(n,ℂ) → ℂ-𝖵𝖾𝖼(V)ˣ → ℂ\{0} → {1}` 作用 Lie 函子后得 𝗅𝗂𝖾 中正合列 0 → 𝔰𝔩(n,ℂ) → ℂ-𝖵𝖾𝖼(V) → ℂ → 0
	* 注：ℝ 情形见((o83f4c))
* 典型 Lie 群（复值）：𝔰𝔲(n) = { A | [?] }（Marsden 力学与对称性导论 p301）{o8ak3h}
	* 𝔰𝔲(n) = { A | A + A⁺ = 0, tr(A) = 0 }
	* 相当于 𝔰𝔬(n)，𝔰𝔩(n) 约束条件推广到 ℂ 再组合
* 典型 Lie 群（复值）：U(n) 同构于哪两个 2n 维「实」Lie 群的交（Marsden 力学与对称性导论 p301）{o8ak3j}
	* U(n) = Sp(2n,ℝ) ∩ SO(2n)
	* 注：后者在书上是 O(2n)；由于 Sp ⊂ SL，二者应等价
* 考虑向量空间同构 𝔰𝔬(3) ≅ ℝ³，adjoint operator Ad ∈ 𝖫𝗂𝖾(SO(3), 𝗅𝗂𝖾(𝔰𝔬(3))ˣ) 对应 [?] ∈ 𝖫𝗂𝖾(SO(3), 𝖵𝖾𝖼(ℝ³))（Marsden 力学与对称性导论 p311）{o8c96y}
	* i ∈ 𝖫𝗂𝖾(SO(3), 𝖵𝖾𝖼(ℝ³)) 即普通嵌入映射
* {x}# Lie 群上 coadjoint action Adᵛ ∈ 𝖫𝗂𝖾(G, 𝖵𝖾𝖼(𝔤ᵛ)ˣ) 的定义，我拆分成了哪三个算子的复合（Marsden 力学与对称性导论 p311）
	* inv ∈ 𝖫𝗂𝖾(G,Gᵒᵖ)
	* Adᵒᵖ ∈ 𝖫𝗂𝖾(Gᵒᵖ, (𝗅𝗂𝖾(𝔤)ˣ)ᵒᵖ)
	* ᵛ[-] ∈ 𝖫𝗂𝖾((𝗅𝗂𝖾(𝔤)ˣ)ᵒᵖ, 𝖵𝖾𝖼(𝔤ᵛ)ˣ)
* Lie 群上 coadjoint action Ad⁻ᵛ ∈ 𝖫𝗂𝖾(G, 𝖵𝖾𝖼∩𝖯𝗈𝗂𝗌(𝔤ᵛ₊)ˣ) 由 Ad 和哪个算子的复合给出（Marsden 力学与对称性导论 p311）{o8c98h}
	* (-)⁻ᵛ ∈ 𝖫𝗂𝖾(𝗅𝗂𝖾(𝔤)ˣ, 𝖵𝖾𝖼∩𝖯𝗈𝗂𝗌(𝔤ᵛ₊)ˣ)
	* 注：𝖯𝗈𝗂𝗌 见((o8nk9p))
	* 注：我的各元素关系示意图 file:///home/yzh/oc-ptis/attached/o8tm2x-LieGrp-Ad-SRS.xoj
* Lie 群上 ad = Lie[Ad] ∈ 𝗅𝗂𝖾(𝔤,𝖵𝖾𝖼(𝔤)) 满足 ad(ξ)(η) = [?]（Marsden 力学与对称性导论 p314）{o89l73}
	* ad(ξ)(η) = [ξ,η]
	* 注：计算见((o89l73a)) Tₑ[Ad.η] ∈ 𝖵𝖾𝖼(TₑG,T_η𝔤) = 𝖵𝖾𝖼(𝔤)
* Lie 群上 Lie[Ad⁻ᵛ] = [?] ∈ 𝗅𝗂𝖾(𝔤,𝖵𝖾𝖼(𝔤ᵛ₊)){o8tm2i}
	* Lie[Ad⁻ᵛ] = -adᵛ ∈ 𝗅𝗂𝖾(𝔤,𝖵𝖾𝖼(𝔤ᵛ₊))
	* 注：我的各元素关系示意图 file:///home/yzh/oc-ptis/attached/o8tm2x-LieGrp-Ad-SRS.xoj
* {old}# 设有群作用 Φ ∈ 𝖦𝗋𝗉(G, 𝓒(A)ˣ), Ψ ∈ 𝖦𝗋𝗉(G, 𝓒(B)ˣ), A、B 为范畴 𝓒 中对象，则 f ∈ 𝓒(A,B) equivariant 的定义，我理解为 natural transformation f ∈ [?]（基于 Marsden 力学与对称性导论 p316）
	* f ∈ 𝖢𝖠𝖳(G,𝓒)(Φ,Ψ)
	* 相关：相应交换图与((o8vg7h))R-𝖬𝗈𝖽(M,N) 定义 类似
	* 2025-07-23 重构；问题：
		* 正面冗余，不满足场景匹配
		* 背面回忆难度偏高，不排除需引入一些提示、回忆参考点
* 群 G 作用于 A,B，则 f: A → B equivariant 的定义我理解为 natural transformation f ∈ 𝖢𝖠𝖳([?])(Φ,Ψ){o8c99t}
	> 设定：A,B ∈ 𝓒，群作用 Φ ∈ 𝖦𝗋𝗉(G, 𝓒(A)ˣ), Ψ ∈ 𝖦𝗋𝗉(G, 𝓒(B)ˣ)；f ∈ 𝓒(A,B)
	> 来源：基于 Marsden 力学与对称性导论 p316
	* f ∈ 𝖢𝖠𝖳(G,𝓒)(Φ,Ψ)
	* 相关：相应交换图与((o8vg7h))R-𝖬𝗈𝖽(M,N) 定义 类似
* 群 G 作用于 A,B，则 f: A → B equivariant 的定义我理解为 natural transformation f ∈ 𝖢𝖠𝖳(G,𝓒)([?]){p7na0o}
	> 设定：A,B ∈ 𝓒，群作用 Φ ∈ 𝖦𝗋𝗉(G, 𝓒(A)ˣ), Ψ ∈ 𝖦𝗋𝗉(G, 𝓒(B)ˣ)；f ∈ 𝓒(A,B)
	> 来源：基于 Marsden 力学与对称性导论 p316
	* f ∈ 𝖢𝖠𝖳(G,𝓒)(Φ,Ψ)，即填入两个群作用 Φ,Ψ
	* 相关：相应交换图与((o8vg7h))R-𝖬𝗈𝖽(M,N) 定义 类似
* {old}# 无穷维 Lie 群：G ∈ 𝖫𝗂𝖾 有限维，H ∈ ℂ-𝖧𝗂𝗅𝖻 无穷维，则群作用 ρ ∈ 𝖦𝗋𝗉(G,U(H)ˣ) 即 G → H → H 导出 Lie[ρ]: 𝔤 → D_G → D_G。其中 D_G ⊂ H 仅为稠密真子集，我想到的 G,H,ρ 例子是什么（基于 Marsden 力学与对称性导论 p323）
	* H = L²(ℝ), G = ℝ, ρ 为平移算子
	* 此时 Lie[ρ]: a ↦ adₓ，D_G = L²∩C¹(ℝ) 有光滑性要求
	* 2025-09-01 重构：题面太长
* 李代数作用 定义域小于 李群作用，我想到的 G,H,ρ 例子是什么{o98h0h}
	> 要求：李代数作用 Lie[ρ]: 𝔤 → D_G → D_G，其定义域 D_G ⊂ H 仅为稠密真子集
	> 设定：G ∈ 𝖫𝗂𝖾 有限维，H ∈ ℂ-𝖧𝗂𝗅𝖻 无穷维，李群作用 ρ ∈ 𝖦𝗋𝗉(G,U(H)ˣ) 即 G → H → H
	> 背景：无穷维 Lie 群
	> 来源：基于 Marsden 力学与对称性导论 p323
	* H = L²(ℝ), G = ℝ, ρ 为平移算子
	* 此时 Lie[ρ]: a ↦ adₓ，D_G = L²∩C¹(ℝ) 有光滑性要求
* 无穷维 Lie 群：M ∈ 𝖣𝗂𝖿𝖿, 有 Lie 代数同构 Lie(𝖣𝗂𝖿𝖿(M)ˣ) ≅ [?] ∈ 𝗅𝗂𝖾（Marsden 力学与对称性导论 p324）{o8ha80}
	* Lie(𝖣𝗂𝖿𝖿(M)ˣ) ≅ -ΓTM
	* 注意二者的 [-,-] 相差负号
* # 无穷维 Lie 群：M ∈ 𝖣𝗂𝖿𝖿, 双射 Lie(𝖣𝗂𝖿𝖿(M)ˣ) ≈ ΓTM ∈ 𝗅𝗂𝖾 对应的 Lie bracket [-,-] 之间是什么关系（Marsden 力学与对称性导论 p324）{o8ha82}
	* 相差负号
* Lie(𝖣𝗂𝖿𝖿(M)ˣ) ≅ -ΓTM ∈ 𝗅𝗂𝖾 对应的 Lie bracket [X,Y] 关系推导过程 中用到的关键等式是什么{o8ha84}
	> 背景：切丛作为无穷小自同胚，不仅在集合意义下成立，在 Lie 代数意义下也成立
	> 背景+：无穷维 Lie 群，在这里是 𝖣𝗂𝖿𝖿(M)ˣ ；其中 M ∈ 𝖣𝗂𝖿𝖿
	> 来源：Marsden 力学与对称性导论 p324
	* 证明 Ad(ϕₜ)(Y) = (ϕₜ)_*(Y)
	* 其中 ϕₜ = exp(tX) ∈ 𝖣𝗂𝖿𝖿(M)ˣ 为 X 生成的 flow
* 无穷维 Lie 群：M ∈ 𝖣𝗂𝖿𝖿, Lie(𝖣𝗂𝖿𝖿(M)ˣ) ≅ -ΓTM 证明，对 Ad(ϕₜ)(Y) 取 dₜ|ₜ₌₀ 的结果 [?1]，结果位于 Lie(𝖣𝗂𝖿𝖿(M)ˣ) 还是 ΓTM [?2]（Marsden 力学与对称性导论 p324）{o8ha86}
	> 注：其中 X,Y ∈ ΓTM，ϕₜ = exp(tX) ∈ 𝖣𝗂𝖿𝖿(M)ˣ 为 X 生成的 flow
	* dₜ|ₜ₌₀ Ad(ϕₜ)(Y) = [X,Y] ∈ Lie(𝖣𝗂𝖿𝖿(M)ˣ)
	* 注：用到 Lie 群结论((o89l73)) Tₑ[Ad.Y] ∈ 𝖵𝖾𝖼(TₑG,T_Y𝔤) = 𝖵𝖾𝖼(𝔤), Tₑ[Ad.Y]: X ↦ [X,Y]
* 无穷维 Lie 群：M ∈ 𝖣𝗂𝖿𝖿, Lie(𝖣𝗂𝖿𝖿(M)ˣ) ≅ -ΓTM 证明，对 (ϕₜ)_*(Y) 取 dₜ|ₜ₌₀ 的结果为 -[X,Y] ∈ ΓTM，其证明过程的要点（Marsden 力学与对称性导论 p324）{o8ha88}
	> 注：其中 X,Y ∈ ΓTM，ϕₜ = exp(tX) ∈ 𝖣𝗂𝖿𝖿(M)ˣ 为 X 生成的 flow
	* 利用 Lie 导数 𝓛ₓY 定义，有 dₜ|ₜ₌₀ (ϕₜ)_*(Y) = 𝓛₋ₓY
* 流形切丛等价于无穷小自同胚，我用什么表达式来表示（基于 Marsden 力学与对称性导论 p324）{p14g97}
	* Lie(𝖣𝗂𝖿𝖿(M)ˣ) ≅ -ΓTM ∈ 𝗅𝗂𝖾
	* 注意 1. 有负号，2. 在 Lie 代数意义下同构，不仅是作为集合
	* 注：如有必要，考虑再添加反向卡片（根据表达式给出文字解释）
* Lie-Poisson bracket：设 𝔤 ∈ 𝗅𝗂𝖾，则 𝔤ᵛ ∈ 𝖯𝗈𝗂𝗌 结构给出方式 {F,H}₊(μ) = [?]，其中 F,H ∈ C^∞(𝔤ᵛ)，μ ∈ 𝔤ᵛ（Marsden 力学与对称性导论 p327）{o8hb7v}
	* {F,H}(μ) = ⟨μ, [∂F/∂μ, ∂H/∂μ]⟩
	* 其中 ∂F/∂μ, ∂G/∂μ ∈ T_μᵛ𝔤ᵛ ≅ T_μ𝔤 ≅ 𝔤
* {old}# Lie-Poisson bracket：设 𝔤 ∈ 𝗅𝗂𝖾，我理解的 𝔤ᵛ ∈ 𝖯𝗈𝗂𝗌 结构 {-,-}₊ 给出方式，双线性型 C^∞(𝔤ᵛ) × C^∞(𝔤ᵛ) → C^∞(𝔤ᵛ, 𝔤ᵛ ⊗ 𝔤 ⊗ 𝔤) 如何给出（基于 Marsden 力学与对称性导论 p327）
	* (F,H) ↦ id ⊗ dF ⊗ dH
	* 其中 dF,dH ∈ Ω¹(𝔤ᵛ) = C^∞(𝔤ᵛ,𝔤ᵛᵛ) = C^∞(𝔤ᵛ,𝔤)
	* 2026-02-24 改正面表述
* 𝔤ᵛ ∈ 𝖯𝗈𝗂𝗌 上 {-,-}₊ 定义，C^∞(𝔤ᵛ) × C^∞(𝔤ᵛ) → C^∞(𝔤ᵛ, 𝔤ᵛ ⊗ 𝔤 ⊗ 𝔤) 如何给出（我的理解）{o8he7k}
	> 设定：𝔤 ∈ 𝗅𝗂𝖾，待给出的映射为双线性型
	> 背景：Lie-Poisson bracket
	> 来源：基于 Marsden 力学与对称性导论 p327
	* (F,H) ↦ id ⊗ dF ⊗ dH
	* 其中 dF,dH ∈ Ω¹(𝔤ᵛ) = C^∞(𝔤ᵛ,𝔤ᵛᵛ) = C^∞(𝔤ᵛ,𝔤)
* {old}# Lie-Poisson bracket：设 𝔤 ∈ 𝗅𝗂𝖾，我理解的 𝔤ᵛ ∈ 𝖯𝗈𝗂𝗌 结构 {-,-}₊ 给出方式，线性映射 𝔤ᵛ ⊗ 𝔤 ⊗ 𝔤 → ℝ 由哪两个映射的复合给出（基于 Marsden 力学与对称性导论 p327）
	* 2025-09-01 改写题面，原题面太乱
* 𝔤ᵛ ∈ 𝖯𝗈𝗂𝗌 结构 {-,-}₊ 给出方式，线性映射 𝔤ᵛ ⊗ 𝔤 ⊗ 𝔤 → ℝ 由哪两个映射的复合给出{o8he7m}
	> 背景：Lie-Poisson bracket，𝔤 ∈ 𝗅𝗂𝖾
	> 来源：基于 Marsden 力学与对称性导论 p327
	* id ⊗ [-,-]: 𝔤ᵛ ⊗ 𝔤 ⊗ 𝔤 → 𝔤ᵛ ⊗ 𝔤
	* tr: 𝔤ᵛ ⊗ 𝔤 → ℝ
	* 注：复合可得 C^∞(𝔤ᵛ, 𝔤ᵛ ⊗ 𝔤 ⊗ 𝔤) → C^∞(𝔤ᵛ)
* Poisson bracket 定义：{-,-} 满足 (1) C^∞(M) ∈ 𝗅𝗂𝖾，(2) [?]（Marsden 力学与对称性导论 p328）{o8hf31}
	* 满足求导法则：{FG,H} = {F,H}G + F{G,H}
	* 注：利用了 C^∞(M) 上的乘法结构，而一般 Lie 代数不具有该乘法结构
	* 注：可验证 𝖲𝗒𝗆𝗉 ⊂ 𝖯𝗈𝗂𝗌
* C^∞(M) 上的 Poisson bracket {-,-} 按定义需满足什么条件（Marsden 力学与对称性导论 p328）{p14g6d}
	* (1) C^∞(M) ∈ 𝗅𝗂𝖾，(2) 求导法则：{FG,H} = {F,H}G + F{G,H}
	* 注：((o8hf31))只要求回忆后一个
* 无穷维流形的 Poisson-Vlasov bracket：设 M ∈ 𝖯𝗈𝗂𝗌，则 C^∞(M)ᵛ ∈ 𝖯𝗈𝗂𝗌 上的 Poisson bracket 结构通过哪两步给出（Marsden 力学与对称性导论 p329）{o8hf5b}
	* M ∈ 𝖯𝗈𝗂𝗌 ⇒ C^∞(M) ∈ 𝗅𝗂𝖾 （Poisson manifold 定义）
	* C^∞(M) ∈ 𝗅𝗂𝖾 ⇒ C^∞(M)ᵛ ∈ 𝖯𝗈𝗂𝗌 （Lie-Poisson bracket）
* {x}# p330 KdV bracket 没太理解，eqn(10.1.10) 中维数 n > 1 时怎么定义的变上限积分？
	* 
* 辛流形与 Poisson 流形上均成立 X_H(G) = {G,H}，分别用于定义 X.、{-,-} 中的哪一个（Marsden 力学与对称性导论 p333）{o8ke0q}
	* 辛流形：用 X. 定义 {-,-}
		* 注：X. 本身由 ω(-,-) 定义，从而 {G,H} = X_H(G) = ω(X_H,X_G) 为 {-,-} 的等价定义
	* Poisson 流形：用 {-,-} 定义 X.
* Poisson 流形 P 上的 Casimir function C ∈ C^∞(P) 定义（Marsden 力学与对称性导论 p335）{o8l908}
	* X_C = 0，即 {C,F} = 0 对 ∀F ∈ C^∞(P) 成立
	* 即：Casimir function 的集合 = ker X.，X. ∈ 𝗅𝗂𝖾(C^∞(P),-ΓTP)
* Poisson 流形上的 Casimir function 的例子，对 P = 𝔰𝔬(3)ᵛ（赋予 Lie-Poisson bracket），C(Π) = [?] 为 Casimir function（Marsden 力学与对称性导论 p335）{o8l90a}
	* C(Π) = Φ(‖Π‖²/2)，其中 Φ 为任意光滑函数
* Poisson 流形 P 上的 Poisson structure B ∈ [?1] 满足 {F,G} = B([?2])（Marsden 力学与对称性导论 p340）{o8lk5z}
	* B ∈ Γ∧²TP
	* {F,G} = B(dF, dG)
* # 辛流形 P 上的 Poisson structure B 非退化，满足 B^♯ = (Ω^♭)⁻¹ ∈ 𝖵𝖡([?1],[?2])（Marsden 力学与对称性导论 p341）{o8lk60}
	* B^♯ = (Ω^♭)⁻¹ ∈ 𝖵𝖡(TᵛP,TP)
* 辛流形 M 上的 Poisson structure B 非退化，满足 B^♯ = (Ω^♭)⁻¹ ∈ 𝖵𝖡(TᵛM,TM)，其中{o8lk62}
	> 1. B^♯α ∈ TM 通过 α ∈ TᵛM 与 B ∈ Γ∧²TM 的哪个分量缩并给出
	> 2. Ω^♭X ∈ TᵛM 通过 X ∈ TM 与 Ω ∈ Γ∧²TᵛM 的哪个分量缩并给出
	> （Marsden 力学与对称性导论 p341）
	* 后一个分量
	* 前一个分量
* # （2025-06-25）Poisson 流形上的 Schouten bracket [-,-] 定义于 Ω_*(P) = Γ⊕ₖ∧ᵏTP，满足 deg[A,B] = [?]（Marsden 力学与对称性导论 p354）{o8ll1q}
	* deg[A,B] = deg A + deg B - 1
* Poisson 流形上的 Schouten bracket [-,-]，满足 [F,G] = [?1], [X,F] = [?2], [X,Y] = [?3]（Marsden 力学与对称性导论 p354）{o8ll1s}
	> 其中 F,G ∈ C^∞(P), X,Y ∈ ΓTP；[-,-] 定义于 Ω_*(P) = Γ⊕ₖ∧ᵏTP
	* [F,G] = 0
	* [X,F] = X(F)
	* [X,Y] 即 Jacobi-Lie bracket（从而 Schouten bracket 为 Jacobi-Lie bracket 的推广）
* # （2025-06-25）Poisson 流形上的 Schouten bracket [-,-] 定义于 Ω_*(P) = Γ⊕ₖ∧ᵏTP，满足 [B,A] = [?]·[A,B]（Marsden 力学与对称性导论 p354）{o8ll1u}
	* [B,A] = (-1)^[deg(A)deg(B)]·[A,B]
* Schouten bracket [-,-] 满足 deg[A,B] = [?1]，[B,A] = [?2]·[A,B]{p6pf80}
	> 背景：定义于 Ω_*(P) = Γ⊕ₖ∧ᵏTP，P 为 Poisson 流形
	> 来源：Marsden 力学与对称性导论 p354
	* deg[A,B] = deg A + deg B - 1
	* [B,A] = (-1)^[deg(A)deg(B)]·[A,B]
* 什么样的流形 [?1] 上 [-,-] 定义域可推广至 Ω_*(P) = Γ⊕ₖ∧ᵏTP，称为 [?2] bracket{p6pf82}
	> 来源：Marsden 力学与对称性导论 p354
	* Poisson 流形
	* Schouten bracket
* Schouten bracket 将 [-,-] 的定义域推广到了什么{p6pf84}
	> 背景：Poisson 流形 P 上
	> 来源：Marsden 力学与对称性导论 p354
	* Ω_*(P) = Γ⊕ₖ∧ᵏTP
* Poisson 流形上的 Schouten bracket [-,-] 定义于 Ω_*(P) = Γ⊕ₖ∧ᵏTP，其 Lie 导数满足 𝓛_X[A,B] = [?]（Marsden 力学与对称性导论 p355）{o8ll1w}
	* 𝓛_X[A,B] = [(𝓛_X)A,B] + [A,(𝓛_X)B]
* Poisson 流形上的 Schouten bracket [-,-] 定义于 Ω_*(P) = Γ⊕ₖ∧ᵏTP，对 X ∈ ΓTP 满足 [X,A] = [?]（Marsden 力学与对称性导论 p355）{o8ll1y}
	* [X,A] = (𝓛_X)A
	* 注：回忆光滑流形 Lie 导数本来就满足 (𝓛_X)F = X(F)
* 𝔤ᵛ₊ ∈ 𝖯𝗈𝗂𝗌 上 X_H = [?]{o8m89n}
	> （注）回忆 𝔤ᵛ₊ 上 {-,-}₊ 定义为 {F,H}(μ) = ⟨μ,[dF,dH]⟩，见((o8hb7v))
	> （注）要求：书上记号、我的记号回忆起一个即可
	> （注）来源：Marsden 力学与对称性导论 p360
	* 书上记号 X_H(μ) = -ad*_{δH/δμ}μ
	* 我的记号 X_H = -adᵛ(dH): 𝔤ᵛ → 𝔤ᵛ
	* 注：负号的出现自然，因((o8tm2i)) Lie[Ad⁻ᵛ] = -adᵛ
	* 注：推导由((o8he7k))𝔤ᵛ ∈ 𝖯𝗈𝗂𝗌 结构 {-,-}₊ 定义 不难得出
* Poisson 流形：设 G ∈ 𝖫𝗂𝖾「无穷维」，则 𝔤ᵛ 未必为 TVec 意义上的对偶，更常见的情况下它是什么（Marsden 力学与对称性导论 p361）{o8tm37}
	* 𝔤ᵛ 可能只是 𝔤 的非退化对偶（non-degenerate duality）
* Poisson 流形：设 𝔤,𝔥 ∈ 𝗅𝗂𝖾，α ∈ 𝖵𝖾𝖼(𝔤,𝔥)，则 α ∈ 𝗅𝗂𝖾(𝔤,𝔥) ⇔ αᵛ ∈ 𝖯𝗈𝗂𝗌(𝔥ᵛ₊,𝔤ᵛ₊) 的充分条件为（Marsden 力学与对称性导论 p366）{o8nk9p}
	* ∃G,H ∈ 𝖫𝗂𝖾 使 𝔤 = Lie(G), 𝔥 = Lie(H)
* {old}# momentum mapping：设 f ∈ 𝖫𝗂𝖾(G,H)，有 Lie[f]ᵛ ∈ 𝖯𝗈𝗂𝗌(𝔥ᵛ₊,𝔤ᵛ₊) 是哪一个群作用（G 作用于 𝔥ᵛ₊）的 momentum mapping（Marsden 力学与对称性导论 p375）
	* ρ = Ad⁻ᵛ∘f ∈ 𝖫𝗂𝖾(G,𝖯𝗈𝗂𝗌(𝔥ᵛ₊)ˣ)
	* 注：前面的例 (e) 似乎讨论的是 f = Id 的特殊情形，此时 momentum mapping Lie[f]ᵛ = Id
	* 2026-03-04 改正面表述
* Lie[f]ᵛ 在什么意义下可以看成 momentum mapping{o8oj29}
	> 设定：f ∈ 𝖫𝗂𝖾(G,H)，有 Lie[f]ᵛ ∈ 𝖯𝗈𝗂𝗌(𝔥ᵛ₊,𝔤ᵛ₊)
	> 来源：Marsden 力学与对称性导论 p375
	* ρ = Ad⁻ᵛ∘f ∈ 𝖫𝗂𝖾(G,𝖯𝗈𝗂𝗌(𝔥ᵛ₊)ˣ) 为群 G 在 𝔥ᵛ₊ 上的作用
	* 其 momentum mapping 即为 Lie[f]ᵛ ∈ 𝖯𝗈𝗂𝗌(𝔥ᵛ₊,𝔤ᵛ₊)
	* 注：前面的例 (e) 似乎讨论的是 f = Id 的特殊情形，此时 momentum mapping Lie[f]ᵛ = Id
* 仅重读：momentum mapping P: M → 𝔤ᵛ 无穷小等变的等价定义 H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(M)) ⇔ T[P]∘Lie[ρ] = -adᵛ(-)∘P{o8oj7v}
	* Marsden 力学与对称性导论 p379, eqn(11.5.6)
	* 注：我用的是 GTM60 的记号 H., P，而非本书的 J
* （重读即可）momentum mapping P: M → 𝔤ᵛ equivariant 的定义，我理解为 natural transformation P ∈ [?]，其中对应的群作用为 ρ ∈ 𝖫𝗂𝖾(G,𝖯𝗈𝗂𝗌(M)ˣ)（基于 Marsden 力学与对称性导论 p379）{o8on2y}
	* P ∈ 𝖢𝖠𝖳(G,𝖣𝗂𝖿𝖿)(ρ,Ad⁻ᵛ)
	* 注：若 P ∈ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₊) 成立，可进一步把 𝖣𝗂𝖿𝖿 改成 𝖯𝗈𝗂𝗌
* 向量场的 cotangent lift ∈ 𝗅𝗂𝖾(ΓTQ,ΓTTᵛQ) 由哪两个映射的复合给出（Marsden 力学与对称性导论 p384）{o8p94n}
	* 𝓟 ∈ 𝗅𝗂𝖾(ΓTQ, -C^∞(TᵛQ)) ，映射通过 fiber paring 给出
		* 注：这里 -C^∞(TᵛQ) 指其上的 lie bracket {-,-} 结构反号
		* 注：该负号无需回忆，可由之前其他记忆点推出
	* X. ∈ 𝗅𝗂𝖾(-C^∞(TᵛQ),ΓTTᵛQ)
	* 交换图见 file:///home/yzh/oc-ptis/attached/o8sk7g-MomentumMap-CotLift-SRS.xoj
* cotangent lift 的向量场版本 X.∘𝓟 ∈ 𝗅𝗂𝖾(ΓTQ,ΓTTᵛQ) 与自同胚版本 T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)˟,𝖲𝗒𝗆𝗉(TᵛQ)˟) 之间的关系（Marsden 力学与对称性导论 p385-386）{o8p94p}
	* X.∘𝓟 = Lie[T⁻ᵛ]
	* 交换图见 file:///home/yzh/oc-ptis/attached/o8sk7g-MomentumMap-CotLift-SRS.xoj
* cotangent lift 的自同胚版本 T⁻ᵛ ∈ 𝖫𝗂𝖾([?1],[?2])，向量场版本 X.∘𝓟 ∈ 𝗅𝗂𝖾([?3],[?4])（基于 Marsden 力学与对称性导论 p385-386）{o8rm0f}
	* T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)˟,𝖲𝗒𝗆𝗉(TᵛQ)˟)
	* X.∘𝓟 ∈ 𝗅𝗂𝖾(ΓTQ,ΓTTᵛQ)
	* 交换图见 file:///home/yzh/oc-ptis/attached/o8sk7g-MomentumMap-CotLift-SRS.xoj
* H. = [?] ∈ 𝗅𝗂𝖾(-ΓTQ,C^∞(TᵛQ)){o8p94r}
	> （注）设定：cotangent lift T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)˟,𝖲𝗒𝗆𝗉(TᵛQ)˟) 视为群 𝖣𝗂𝖿𝖿(Q)˟ 在 TᵛQ 上的作用，H. 为 momentum mapping 对应的 Hamiltonian
	> （注）来源：Marsden 力学与对称性导论 p386-387
	* H. = 𝓟 ∈ 𝗅𝗂𝖾(-ΓTQ, C^∞(TᵛQ)) ，映射通过 fiber paring 给出
	* 注：这里用到了 Lie(𝖣𝗂𝖿𝖿(Q)˟) = -ΓTQ
	* 交换图见 file:///home/yzh/oc-ptis/attached/o8sk7g-MomentumMap-CotLift-SRS.xoj
* {old}# 对称性经过 cotangent lift 后的 momentum mapping：设 Q 上有对称性 σ ∈ 𝗅𝗂𝖾(𝔤,-ΓTQ)，cotangent lift 后得 TᵛQ 上对称性 ∈ 𝗅𝗂𝖾(𝔤,-ΓTTᵛQ)，其 momentum mapping 所对应 H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(TᵛQ)) 的给出思路（基于 Marsden 力学与对称性导论 p386）
	* 
* σ ∈ 𝗅𝗂𝖾(𝔤,-ΓTQ) cotangent lift 后得 ... ∈ 𝗅𝗂𝖾(𝔤,-ΓTTᵛQ)，后者的 momentum mapping 如何给出{o8rl8n}
	> （注）前者为 Q 上对称性，后者为 TᵛQ 上对称性 
	> （注）给出 H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(TᵛQ)) 即可
	> （注）背景：对称性经过 cotangent lift 后的 momentum mapping
	> （注）来源：基于 Marsden 力学与对称性导论 p386
	* 该对称性视为 σ 与 Lie[T⁻ᵛ] ∈ 𝗅𝗂𝖾(-ΓTQ,-ΓTTᵛQ) 的复合
	* 后者也视为某种对称性((o8p94r))，利用其 Hamiltonian 𝓟 ∈ 𝗅𝗂𝖾(-ΓTQ, C^∞(TᵛQ))
		* 该 Hamiltonian 形式无需回忆
	* 交换图见 file:///home/yzh/oc-ptis/attached/o8sk7g-MomentumMap-CotLift-SRS.xoj
* # 向量场的 cotangent lift ∈ 𝗅𝗂𝖾(ΓTQ,ΓTTᵛQ) 计算思路（基于 Marsden 力学与对称性导论 p386）{o8rm2k}
	* 该映射视为 Lie[T⁻ᵛ]，来自自同胚 cotangent lift T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)˟,𝖲𝗒𝗆𝗉(TᵛQ)˟)
* # 考虑自同胚的 cotangent lift T⁻ᵛ ∈ 𝖫𝗂𝖾(𝖣𝗂𝖿𝖿(Q)˟,𝖲𝗒𝗆𝗉(TᵛQ)˟)，相应 Lie[T⁻ᵛ] 计算思路（基于 Marsden 力学与对称性导论 p386）{o8rm2m}
	* 利用 ((o8p94r))T⁻ᵛ 的 Hamiltonian H. = 𝓟 ∈ 𝗅𝗂𝖾(-ΓTQ, C^∞(TᵛQ))
	* （依据 momentum mapping 定义方式）再复合 X. ∈ 𝗅𝗂𝖾(C^∞(TᵛQ),-ΓTTᵛQ) 即得 Lie[T⁻ᵛ]
	* 注：直接记忆结果的版本((o8p94n))
* 群作用 ρ: f ↦ ((q,p) ↦ (q, p + df(q))) 对应 H. = [?] ∈ 𝗅𝗂𝖾(C^∞(Q)₀,C^∞(TᵛQ)){o8pe5a}
	> 注 1. 其中 ρ ∈ 𝖫𝗂𝖾(C^∞(Q),𝖲𝗒𝗆𝗉(TᵛQ)˟) 为 momentum fiber translation
	> 注 2. 背景：momentum fiber translation 对应的 momentum mapping
	> 注 3. 来源：Marsden 力学与对称性导论 p387-388
	* H. = -π* = -C^∞[π]: h ↦ -h∘π
		* 其中 π: TᵛQ → Q 为投影映射
	* 注意负号
	* 注：C^∞(Q)₀ = Lie(C^∞(Q)) ∈ 𝗅𝗂𝖾 上的 Lie bracket [-,-] = 0
	* 注：若日后发现回忆困难，可改为仅重读
* {old}# momentum fiber translation 对应的 momentum mapping：群作用 ρ ∈ 𝖫𝗂𝖾(C^∞(Q),𝖲𝗒𝗆𝗉(TᵛQ)˟)，f ↦ ((q,p) ↦ [?]) 对应 H. = -π* = -C^∞[π]: h ↦ -h∘π ∈ 𝗅𝗂𝖾(C^∞(Q)₀,C^∞(TᵛQ))（Marsden 力学与对称性导论 p387-388）
	* 
* 群作用 ρ: f ↦ ((q,p) ↦ (q, p + [?])) 对应 H. = -π* ∈ 𝗅𝗂𝖾(C^∞(Q)₀,C^∞(TᵛQ)){o95a3a}
	> 注 1. 其中 ρ ∈ 𝖫𝗂𝖾(C^∞(Q),𝖲𝗒𝗆𝗉(TᵛQ)˟) 为 momentum fiber translation
	> 注 2. 背景：momentum fiber translation 对应的 momentum mapping
	> 注 3. 来源：Marsden 力学与对称性导论 p387-388
	* f ↦ ((q,p) ↦ (q, p + df(q)))
* 𝖫𝗂𝖾(C^∞(Q),𝖲𝗒𝗆𝗉(TᵛQ)˟) 包含哪两个常见元素，包括各自的名称（基于 Marsden 力学与对称性导论 p170,p386）{o9nl5y}
	* （自同胚的）cotangent lift T⁻ᵛ
	* momentum fiber translation f ↦ ((q,p) ↦ (q, p + df(q)))
* momentum mapping 满足 H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(M)) ⇔ P ∈ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₊)，其中右侧命题按定义为 ∀f,h ∈ C^∞(𝔤ᵛ₊) 有 P*{f,h}₊ = {P*f,P*h}_M，我如何简化该命题（3 步）{o8on04}
	* 1. 可在 q ∈ M 处局部线性化，从而不妨设 f,h 为仿射函数
	* 2. 可忽略常数，从而不妨设 f,h 为线性函数
	* 3. 从而不妨 f = ξ ∈ 𝔤, h = η ∈ 𝔤
	* 注（无需回忆）：可验证 P*f = H_ξ，从而条件等价于 H_[ξ,η] = {H_ξ,H_η}_M，得证
	* 注：后来发现 Marsden 力学与对称性导论 p403 证了 ⇒
* momentum mapping，设 H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(M)) 成立，则 P ∈ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₊) 和 P ∈ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₋) 哪个成立（Marsden 力学与对称性导论 p403）{o8on06}
	* P ∈ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₊)，即取 + Lie-Poisson bracket
* 是否可能 H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(M)) 而 H'. ∉ 𝗅𝗂𝖾(𝔤,C^∞(M))，其关键原因为{o9re0s}
	> （注）H.,H'. ∈ 𝖵𝖾𝖼(𝔤,C^∞(M)) 均为 Lie 代数作用 σ ∈ 𝗅𝗂𝖾(𝔤,-ΓTQ) 的 Hamiltonian
	> （注）等价于相应的 momentum mapping 满足 P ∈ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₊), P' ∉ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₊)
	> （注）来源：基于 Marsden 力学与对称性导论 p403
	* 不可能
	* 要点：H. - H'. ∈ 𝖵𝖾𝖼(𝔤,ker X.)
	* （无需回忆）Casimir function (ker X.) 不影响 C^∞(M) 上的 {-,-} 结构
	* 注：相应地 P - P' ∈ (ker X.) ⊗ 𝔤ᵛ₊
* {old}# momentum mapping，C^∞[P] ∈ 𝗅𝗂𝖾(C^∞(𝔤ᵛ₊),C^∞(M)) 与 H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(M)) 的关系，我用了哪个交换图表示 [?1]，二者复合所差的映射 [?2] ∈ 𝗅𝗂𝖾(𝔤,C^∞(𝔤ᵛ₊))（Marsden 力学与对称性导论 p405）
	* 
* C^∞[P] ∘ [?1] = H.，我用了什么交换图表示 [?2]{o8sl1f}
	> （注）背景：momentum mapping P ∈ 𝖯𝗈𝗂𝗌(M,𝔤ᵛ₊)
	> （注）C^∞[P] ∈ 𝗅𝗂𝖾(C^∞(𝔤ᵛ₊),C^∞(M)), H. ∈ 𝗅𝗂𝖾(𝔤,C^∞(M)), [?1] ∈ 𝗅𝗂𝖾(𝔤,C^∞(𝔤ᵛ₊))
	> （注）来源：Marsden 力学与对称性导论 p405
	* i ∈ 𝗅𝗂𝖾(𝔤,C^∞(𝔤ᵛ₊)) 由 𝔤 → 𝔤ᵛᵛ 给出
	* file:///home/yzh/oc-ptis/attached/o8sl17-momentumMap-pullBack-SRS.xoj
* 设 M,N「有限维」光滑流形，则 `C^∞[-]: 𝖣𝗂𝖿𝖿(M,N) → [?](C^∞(N),C^∞(M))` 为双射（Marsden 力学与对称性导论 p405）{o8sl2o}
	* C^∞[-]: 𝖣𝗂𝖿𝖿(M,N) → 𝖱𝗇𝗀(C^∞(N),C^∞(M))
	* 注：原文提到无穷维加额外条件后有类似结论
	* 相关，该结论的抽象表述：函子 C^∞ ∈ 𝖢𝖠𝖳(𝖣𝗂𝖿𝖿ᵒᵖ,𝖱𝗇𝗀) 完全忠实，其中 𝖣𝗂𝖿𝖿 局限于有限维流形
* Lie 群 G 上 ∂ₜS(g) + H([?]dS(g)) = 0{o98f6a}
	> 名称：Lie-Poisson-Hamilton-Jacobi equation
	> 设定：S: ℝ × G → ℝ，H: 𝔤ᵛ → ℝ
	> 来源：Marsden 力学与对称性导论 p431
	> 注：若回忆困难，考虑改仅重读
	* ∂ₜS(g) + H(-Tᵛ[R_g]dS(g)) = 0
	* 注意负号；注意是 R
	* 注，元素所在域的变换过程：dS(g) ∈ Tᵛ_g G, R_g: e ↦ g, Tᵛ[R_g]: Tᵛ_g G → TᵛₑG = 𝔤ᵛ
* Hamilton-Jacobi equation 推广到 Lie 群 G 上的版本称为{p16b3m}
	> 方程形式：∂ₜS(g) + H(-Tᵛ[R_g]dS(g)) = 0
	> 来源：Marsden 力学与对称性导论 p431
	* Lie-Poisson-Hamilton-Jacobi equation
* Lie 群 G 上 ∂ₜS(g) + H(..) = 0，其中 H: [?] → ℝ（由 TᵛG 退化而来）{p16b3o}
	> 名称：Lie-Poisson-Hamilton-Jacobi equation
	> 设定：S: ℝ × G → ℝ
	> 来源：Marsden 力学与对称性导论 p431
	* H: 𝔤ᵛ → ℝ
	* 我的理解：TᵛG 由平移不变性退化为 TₑᵛG = 𝔤ᵛ
