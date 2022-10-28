import tactic --hide
lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide


/-Hint : Hint
Try using `rw not_iff_imp_false,`.
-/

/-Lemma
If $P$ is a logical statement then $P \implies ¬ ¬P$.
-/
lemma P_not_not_P (P : Prop) : P → ¬ (¬ P) :=
begin
  intro P,
  rw not_iff_imp_false,
  intro hp,
  apply hp,
  exact P,


  
end
