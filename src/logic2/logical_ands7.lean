import tactic --hide

-- Level name : Distributive laws 2

/-
This level proves the distributivity of `∨` over `∧`.
-/

/-Lemma
If $P,Q,R$ are logical statements then $P ∨ (Q ∧ R)$ is true iff $(P ∨ Q) ∧ (P ∨ R)$ is true.
-/
lemma distributivity_two (P Q R : Prop) : P ∨ (Q ∧ R) ↔ (P ∨ Q) ∧ (P ∨ R) :=
begin
  split,
  intro h,
  cases h,
  split,
  left,
  exact h,
  left,
  exact h,
  split,
  right,
  exact h.1,
  right,
  exact h.2,
  intro h,
  cases h,
  cases h_left with h1 h2,
  left,
  exact h1,
  cases h_right with h4 h5,
  left,
  exact h4,
  right,
  split,
  exact h2,
  exact h5,

  
end
