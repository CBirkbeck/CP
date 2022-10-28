import tactic --hide

-- Level name : absorption laws pt 1

/-
This level proves the first *absorption* law.
-/

/-Lemma
If $P,Q$ are logical statements then $P ∧ (P ∨ Q)$ is true if and only if $P$ is true.
-/
lemma absorption_one (P Q : Prop) : P ∧ (P ∨ Q) ↔ P :=
begin
  split,
  intro h,
  cases h with hP hPQ,
  exact hP,
  intro h,
  split,
  exact h,
  left,
  exact h,  


  
end
