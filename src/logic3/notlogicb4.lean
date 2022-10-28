import tactic --hide
lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q := by {cc} --hide


/-Lemma
If $P, Q$ are logical statements then $(P \implies Q)$ is equivalent to $(¬P) ∨ Q$.
-/
lemma P_imp_Q_equiv_not_P_and_Q (P Q : Prop) : (P → Q) ↔ ¬ P ∨ Q :=
begin
  split,
  intro h,
  by_cases p : P,
  right,
  apply h,
  exact p,
  left,
  exact p,
  intros h1 h2,
  cases h1,
  exfalso,
  apply h1,
  exact h2,
  exact h1,

  
end
