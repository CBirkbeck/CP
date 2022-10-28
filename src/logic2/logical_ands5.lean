import tactic --hide

-- Level name : Associative laws pt 2

/-
This level proves that `∨` is associative.
-/

/-Lemma
If $P,Q,R$ are logical statements then $P ∨ (Q ∨ R)$ is true iff $(P ∨ Q) ∨ R$ is true.
-/
lemma associativity_two (P Q R : Prop) : P ∨ (Q ∨ R) ↔ (P ∨ Q) ∨ R :=
begin
  split,
  intro h,
  cases h with h1 h2,
  left,
  left,
  exact h1,
  cases h2 with h2 h3,
  left,
  right,
  exact h2,
  right,
  exact h3,
  intro h,
  cases h with h1 h2,
  cases h1 with h1 h3,
  left,
  exact h1,
  right,
  left,
  exact h3,
  right,
  right,
  exact h2,
end