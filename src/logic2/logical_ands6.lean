import tactic --hide

-- Level name : Distributive laws 1

/-
This level proves the *distributivity* of `∧` over `∨`.
-/

/-Lemma
If $P,Q,R$ are logical statements then $P ∧ (Q ∨ R)$ is true iff $(P ∧ Q) ∨ (P ∧ R)$ is true.
-/
lemma distributivity_one (P Q R : Prop) : P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) :=
begin
  split,
  intro h,
  cases h with h1 h2,
  cases h2 with h2 h3,
  left,
  split,
  exact h1,
  exact h2,
  right,
  split,
  exact h1,
  exact h3,
  intro h,
  cases h with h1 h2,
  split,
  exact h1.1,
  left,
  exact h1.2,
  split,
  exact h2.1,
  right,
  exact h2.2,
end 