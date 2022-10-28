import tactic --hide
lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q := by {cc} --hide


/-Lemma
$¬ \mathrm{false}$ implies $\mathrm{true}$.
-/
lemma not_false_imp_true : ¬ false → true :=
begin
  intro h,
  triv,


  
end