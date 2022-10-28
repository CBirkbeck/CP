import tactic --hide

/-Lemma
$(\mathrm{true} \implies \mathrm{false})^2$
-/
lemma lots_of_true_imp_false : true → false → true → false:=
begin
  intros h1 h2 h3,
  apply h2,


  
end