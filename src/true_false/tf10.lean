import tactic --hide

/-Lemma
For any logical statement $P$, $(\mathrm{true} \implies \mathrm{false})$ implies $P$. 
-/
lemma true_to_false_imp_P (P : Prop) : (true → false) → P :=
begin
 intro h,
 exfalso,
 apply h,
 triv,

  
  
end