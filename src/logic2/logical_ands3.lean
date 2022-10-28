import tactic --hide

-- Level name : absorpsion laws pt 2

/-
This level proves the second absorption law.
-/

/-Lemma
If $P,Q$ are logical statements then $P ∨ (P ∧ Q)$ is true if and only if $P$ is true.
-/
lemma absorption_two (P Q : Prop) : P ∨ (P ∧ Q) ↔ P :=
begin
  split,
  intro h,
  cases h,
  exact h,
  cases h,
  exact h_left,
  intro h,
  left,
  exact h,
end
