import Mathlib.Data.Real.Basic
-- An example.
example (a b c : ℝ) : a * b * c = b * (a * c) := by
  rw [mul_comm a b]
  rw [mul_assoc b a c]


variable (a b c : ℝ)

#check le_trans

example (x y z : ℝ) (h₀ : x ≤ y) (h₁ : y ≤ z) : x ≤ z := by
  apply le_trans
  · apply h₀
  · apply h₁


example (x: ℝ) : x ≤ x + 0 := by
  rw [add_zero]


example (x y: ℝ) (h₁ : 0 ≤ y) : x ≤ x + y := by
  have hxx0 : x ≤ x + 0 := by
    rw [add_zero]
  apply le_trans
  · apply hxx0
  · simp
    apply h₁


#check pow_two a

example (a b: ℝ) (hab : a ≤ b) : (b + a) * (b - a) ≥ (b - a) ^ 2 := by
  rw [pow_two]
  sorry
