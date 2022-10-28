import tactic --hide

/-Lemma
If $P$ is a logical statement then $P \implies ¬P$ implies $\mathrm{false}$.
-/

lemma P_imp_not_P_false (P : Prop) : P → ¬ P → false :=
begin
  intros h1 h2,
  apply h2,
  exact h1,


end