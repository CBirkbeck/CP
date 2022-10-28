import tactic --hide
lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide
/-
In this level we will prove that `P ∧ ¬ P` is always false. This is an example of a *contradiction*.

-/

/-Lemma
If $P$ is a logical statement, then $P ∧ ¬P$ is false.
-/
lemma P_not_P_false (P : Prop) : P ∧ ¬ P → false :=
begin
  intro h,
  cases h with h1 h2,
  rw not_iff_imp_false at h2,
  apply h2,
  exact h1,



end