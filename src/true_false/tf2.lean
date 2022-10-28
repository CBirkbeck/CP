import tactic --hide

/-Lemma
True implies true.
-/
lemma true_imp_true : true → true :=
begin
  intro t,
  triv,
end