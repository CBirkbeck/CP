import tactic --hide
lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q := by {cc} --hide


/-Lemma
$¬ \mathrm{true}$ implies $\mathrm{false}$.
-/
lemma not_true_imp_false : ¬ true → false :=
begin
  rw not_iff_imp_false,
  intro h,
  apply h,
  triv,


  
end