/-
集合の練習をします．

Leanでは集合に対して特別な「型」が用意されてるわけではなく，「型」の集合を集合として扱います．

* univは適当な型αがもつ全ての要素の集合を表します．

-/

import Mathlib.Data.Set.Lattice
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Algebra.Group.Defs

section
variable {α : Type*}
variable (s t u : Set α)
open Set  -- これでSet.fooを省略してfooってかけます．


example (h : s ⊆ t) : s ∩ u ⊆ t ∩ u := by
  rw [subset_def]
  rw [inter_def]
  rw [inter_def]
  rw [subset_def] at h
  simp only [mem_setOf]
  rintro x ⟨xs, xu⟩  -- introがP → Qを示すときに最初にPを仮定する，みたいな感じ？
  exact ⟨h _ xs, xu⟩


-- simp tacticはいい感じに式をきれいにしてくれます．特にsimp onlyって書くと，変形に使われるLemmaを限定します．
variable (G : Type) [Group G] (a b c : G)
example : a * a⁻¹ * 1 * b = b * c * c⁻¹ := by
  simp only [mul_one]
  simp


example (h : s ⊆ t) : s ∩ u ⊆ t ∩ u := by
  intro x xsu
  exact ⟨h xsu.1, xsu.2⟩
