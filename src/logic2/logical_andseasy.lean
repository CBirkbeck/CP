import tactic --hide

/-
This level proves that `∧` is a commutative operator. 
-/

/-Lemma
Let $P,Q$ be logical statements, then $P ∧ Q$ is true iff $Q ∧ P$ is true.
-/
lemma and_commutative (P Q : Prop) : P ∧ Q ↔ Q ∧ P :=
begin
  split,
  intro h,
  cases h,
  split,
  exact h_right,
  exact h_left,
  intro h,
  split,
  exact h.2,
  exact h.1,

  
end