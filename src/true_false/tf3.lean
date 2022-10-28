import tactic --hide

/-Lemma
False implies true.
-/
lemma false_imp_true : false → true :=
begin
  intro t,
  triv,
end