import tactic --hide

/-Lemma
$(\mathrm{true} \implies \mathrm{false}) \implies \mathrm{false}$.
-/
lemma true_false_false : (true → false) → false :=
begin
  intro f,
  apply f,
  triv,


  
end