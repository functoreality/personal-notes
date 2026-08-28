x}# Lean 定理证明环境
	* book: [mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/index.html)
	* book: theorem proving in Lean
		* [dependent type theory](https://leanprover.github.io/theorem_proving_in_lean4/dependent_type_theory.html)
* Lean 中若 `P : Prop`, `E : P`，则 `E` 的含义{n7bb0r}
	* 命题 P 的证明
* （重读即可）Lean 中行注释、块注释语法{n7ba7w}
	* -- 行注释
	* /- 块注释 -/
* Lean 中定义常量 `m = 0` 方式{n7bb1j}
	* `def m : Nat := 0`
	* 同理地有 `def α : Type := Nat`
		* `def F : Type → Type := List`
		* `def G : Type → Type → Type := Prod`
* Lean 中 `Nat × Nat` 用 ASCII 的等价写法{n7ba8x}
	* `Prod Nat Nat`
* Lean 中 `Nat → Nat → Nat` 结合顺序（等价的加括号方式）{n7ba8y}
	* `Nat → (Nat → Nat)`
* Lean 中 `#check Nat.add 3` 结果{n7ba9c}
	* `Nat → Nat`
* Lean 中设 `p : Nat × Nat`，取出第一个元素（数组角标）方式{n7ba9s}
	* `p.1`，eg. `(5, 9).1`
* Lean 中求 f(x) 的表达式写法{n7bb06}
	* `f x`，如 `Nat.succ 2`
* Lean 中 `#check Nat → Bool` 结果{n7bb17}
	* `Type`；与 `#check Nat` 同理
* Lean 中定义 lambda 抽象函数的两种方式（ASCII，UTF-8）{n7cf2c}
	* `fun x : Nat => x + 5`
	* `λ x : Nat => x + 5`
* Lean 执行该语句的结果，及其语法合理性：`#eval (λ x : Nat => x + 5) 10`{n7cf2j}
	* 15
	* 语法：这是函数作用于对象 f x
* Lean 中定义 lambda 抽象函数，接收两个输入变量 x、y，方式{n7cf33}
	* `fun (x : Nat) (y : Bool) => if not y then x + 1 else x + 2`
	* 注：等价方式((n7cf3d)) `fun x : Nat => fun y : Bool => if not y then x + 1 else x + 2`
* Lean 中语句运行结果：`#check fun (x : Nat) (y : Bool) => if not y then x + 1 else x + 2`{n7cf3d}
	* `Nat → Bool → Nat`
	* 解释：等价语句 `#check fun x : Nat => fun y : Bool => if not y then x + 1 else x + 2`
* Lean 中为映射 `fun x : Nat => x + 5` 取名为 `myfun` 的方式（两种）{n7cf5o}
	* `def myfun (x : Nat) : Nat := x + 5`
	* `def myfun : Nat → Nat := fun x => x + 5`（Lean 可自动推断 x 类型）
	* := 符号后可换行
* Lean 中求值 f(g(x)) 对应的表达式{n7cf6x}
	* `f (g x)`
	* 注意有括号；否则 `f g x` 表示 f(g, x)
* Lean 中的局部定义语法：表达式运行结果 `#eval let y := 2 + 2; y * y`{n7cf80}
	* 16
* Lean 中定义变量及其作用域（section）方式{n7dn5f}
	* section useful
		variable (α β γ : Type)
		variable (g : β → γ) (f : α → β) (h : α → α)
		variable (x : α)

		def compose := g (f x)
		def doTwice := h (h x)
		def doThrice := h (h (h x))
	> end useful
* Lean 中定义 namespace 后，为使正常运行，空白处应填的语句为{n7dn5o}
	> namespace Foo
		def a : Nat := 5
	> end Foo
	> #check Foo.a
	> [?]
	> #check a
	* open Foo
* （仅重读）Lean 中 namespace 可重新打开、添加内容，包括在另一文件中{n7dn69}
	> namespace Foo
		def a : Nat := 5
		def f (x : Nat) : Nat := x + 7
	> end Foo

	> #check Foo.a

	> namespace Foo
		def ffa : Nat := f (f a)
	> end Foo
	* （无内容）
* Lean 中以下语句的运行结果{n7eb4d}
	> def cons (α : Type) (a : α) (as : List α) : List α :=
		List.cons a as  -- 这行与回答无关
	> #check cons Nat
	> #check cons
	* Nat → List Nat → List Nat
	* (α : Type) → α → List α → List α
	* 注：允许定义这种变量是 dependent type theory 的特征，映射的输出类型依赖于输入
* Lean 中 `_` 含义{n7il9n}
	* 要求 Lean 自动补全这里的内容
* Lean 中语句 `def ident {α : Type u} (x : α) := x`，花括号含义{n7im09}
	* 使用时该项根据上下文自动补全，无需显式传入
## 命题与证明
* Lean 中 `#check Proof` 结果{n7eg9x}
	* `Prop → Type`
	* 解释：若 p : Prop 则其证明为 t : Proof p，简写 t : p
* Lean 中证明定理 `p → q` 的方式{n7im12}
	* 利用已有对象（公理、假设），构造一个具有类型 `p → q` 的元素
* Lean 中语句 `theorem t1 : p → q := ...`，theorem 命令语法上等价于命令 [?]（忽略一些实现细节的差异）{n7im1e}
	* def
* Lean 中定理证明结尾写 `show p from xxx` 语法上等价于{n7im22}
	* 只写 xxx（它应该具有类型 p）
* Lean 中引入公理 p 的语句{n7im2m}
	* `axiom hp : p`（我觉得与引入假设方式很像）
* Lean 中引入假设 p 的语句{n7im4p}
	* `variable (hp : p)` ，即：定义一个具有类型 p 的对象 hp，相当于设 p 已有证明
	* 相关：((n7im2m))引入公理用 axiom，我觉得语法上二者无区别
* Lean 中引入假设 p → q 的语句{n7im5h}
	* `variable (hpq : p → q)`
* Lean 中补全证明：`example (h : p ∧ q) : q ∧ p := [?]`{n7im7d}
	* ⟨h.right, h.left⟩
* Lean 中设 h : p ∧ q，则 h.left 的完整写法为{n7im7h}
	* And.left h
* Lean 中设 hp : p, hq : q，则 ⟨hp, hq⟩ 是 [?] 的缩写{n7im7l}
	* And.intro hp hq 
	* 注：该记号有时也表示 Iff.intro（Lean 能自动判断类型）
* Lean 中设 hp : p, hq : q，则 #check ⟨hp, hq⟩ 结果为{n7im7m}
	* p ∧ q
* Lean 中 ¬ 含义：¬p 指代的是{n7jg7q}
	* p → False
	* 注：False 属于类型 Prop
* # Lean 中 ¬ 用法：设 hp : p, hnp : ¬p，则 `#check hnp hp` 结果{n7in02}
	* False
* Lean 证明中，我的理解：have 语句在语法上相当于 [?] 语句{n7in4d}
	* let
	* 注：其实本来是函数，而函数与 let 语句有一定区别（介绍 let 语句时有提到）
* 仅重读：Lean 中 suffices 用法{n7jg0g}
	> example (h : p ∧ q) : q ∧ p :=
		have hp : p := h.left
		suffices hq : q from And.intro hq hp
		show q from And.right h
	* 仅重读
* Lean 中使用（经典逻辑）公理 p ∨ ¬p 的方式{n7jg0l}
	* Classical.em p ，它具有类型 p ∨ ¬p
	* 注：可事先 open Classical
	* 注：em 指排中律 excluded middle
## 量词与等式
* Lean 中 ∀ 含义：`∀ x : α, p x` 语法上指代{n7jk27}
	* (x : α) → p x
* Lean 中补全证明：`example : 2 + 3 = 5 := [?]`{n7lk3f}
	* Eq.refl 5 ；可简写为 Eq.refl _
	* 进一步简写：rfl
* （重读即可）Lean 中补全证明，二元素相等则可替换：{n7lk40}
	> variable (α : Type) (a b : α) (p : α → Prop)
	> example (h1 : a = b) (h2 : p a) : p b := [?]
	* Eq.subst h1 h2
	* Unicode 写法：h1 ▸ h2
	* 注：文档内讨论到 higher-order unification 时说后者更强
* （重读即可）Lean 中补全证明，二元素相等则可替换：{n7lk4t}
	> variable (α : Type) (a b : α) (f g : α → Nat) (h₁ : a = b) (h₂ : f = g)
	> example : f a = f b := [?]
	> example : f a = g a := [?]
	> example : f a = g b := [?]
	* congrArg f h₁
	* congrFun h₂ a
	* congr h₂ h₁
* （仅重读）Lean 中 calc 用法{n7lk6s}
	> variable (a b c d e : Nat) (h1 : a = b) (h2 : b = c + 1) (h3 : c = d) (h4 : e = 1 + d)
	> theorem T : a = e :=
		calc
			a = d + 1  := by rw [h1, h2, h3]
			_ = 1 + d  := by rw [Nat.add_comm]
			_ = e      := Eq.symm h4
	* 仅重读
* （仅重读）Lean 中 calc 用法{n7lk6s}
	> ```lean
	> example (a b c d : Nat) (h1 : a = b) (h2 : b ≤ c) (h3 : c + 1 < d) : a < d :=
	> calc
	> a = b     := h1
	> _ < b + 1 := Nat.lt_succ_self b
	> _ ≤ c + 1 := Nat.succ_le_succ h2
	> _ < d     := h3
	> ```
	* 仅重读
* Lean 中以下语句，← 含义{n7lk8u}
	> calc
	> ...
	> _ = ... := by rw [←Nat.add_assoc]
	* 反向使用加法交换律。即：正向使用是 exp1 = exp2，现在希望证 exp2 = exp1
* Lean 中 ∃ 用法，补全证明（用 let 语句）：{n7mf4u}
	> variable (α : Type) (p q : α → Prop)
	> example (h : ∃ x, p x ∧ q x) : ∃ x, q x ∧ p x :=
	* 	let ⟨w, hpw, hqw⟩ := h
		⟨w, hqw, hpw⟩
* Lean 中 ∃ 用法，补全证明（用 fun 语句）：{n7mf4v}
	> variable (α : Type) (p q : α → Prop)
	> example (h : ∃ x, p x ∧ q x) : ∃ x, q x ∧ p x :=
	* 	`fun ⟨w, hpw, hqw⟩ => ⟨w, hqw, hpw⟩`
* Lean 中 ∃ 用法，补全证明（用 Exists.elim 语句）：{n7mf4w}
	> variable (α : Type) (p q : α → Prop)
	> example (h : ∃ x, p x ∧ q x) : ∃ x, q x ∧ p x :=
	* `Exists.elim h (fun w (hw : p w ∧ q w) =>` 
		⟨w, hw.right, hw.left⟩
	> )
* （仅重读）Lean 中 this、‹p› 用法，用于指代前面证过的结论{n7mk3c}
	> variable (f : Nat → Nat) (h : ∀ x : Nat, f x ≤ f (x + 1))
	> example : f 0 ≥ f 1 → f 1 ≥ f 2 → f 0 = f 2 :=
		fun _ : f 0 ≥ f 1 =>
		fun _ : f 1 ≥ f 2 =>
		have : f 0 ≥ f 2 := Nat.le_trans ‹f 1 ≥ f 2› ‹f 0 ≥ f 1›
		have : f 0 ≤ f 2 := Nat.le_trans (h 0) (h 1)
		show f 0 = f 2 from Nat.le_antisymm this ‹f 0 ≥ f 2›
	* 仅重读
* （仅重读）Lean 中 tactic 用法，涉及 by, intro, exact{n7mk5y}
	> example : ∀ a b c : Nat, a = b → a = c → c = b := by
		intro a b c h₁ h₂
		exact Eq.trans (Eq.symm h₂) h₁
	* 目前感觉无需掌握，只要求能看懂他人写这种格式即可
## tactics
## 与 Lean 互动
* Lean 中语句运行结果：`#check (· + 1)`{n7mm76}
	* fun a => a + 1 ，类型 Nat → Nat
* Lean 中语句运行结果（相关定义略）：`#check (f · 1 ·)`{n7mm77}
	* fun a b => f a 1 b
* Lean 中语句运行结果：`#eval [(1, 2), (3, 4), (5, 6)].map (·.1)`{n7mm78}
	* [1, 3, 5]
* Lean 中 def lst := [(1,2),(3,4),(5,6)]，则从中获得 [1, 3, 5] 的方式为{n7qg35}
	* #eval lst.map (fun x => x.1)
	* 简写 #eval lst.map (·.1)
* （仅重读）Lean 中函数默认参数、按名称传递参数{n7mm8d}
	> def f (x : Nat) (y : Nat := 1) (w : Nat := 2) (z : Nat) := x + y + w - z
	> example (x z : Nat) : f (z := z) x = x + 1 + 2 - z := rfl
	* 仅重读
