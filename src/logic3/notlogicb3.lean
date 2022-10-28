import tactic --hide
lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q := by {cc} --hide


/-Lemma
If $P$ is a logical statement then $¬(¬P) \implies P$.
-/
lemma not_not_P_imp_P (P : Prop) :¬ (¬ P) → P :=
begin
  rw not_iff_imp_false,
  intro hp,
  by_cases hp2 : P,
  exact hp2,
  exfalso,
  apply hp,
  exact hp2,

  
end
