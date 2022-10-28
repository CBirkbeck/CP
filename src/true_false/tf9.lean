import tactic --hide

/-Lemma
If $P, Q$ are logical statements then $P \implies \mathrm{false}$ implies $P \implies Q$. 
-/
lemma P_to_false_to_P_to_Q (P Q : Prop) : (P → false) → P → Q :=
begin
  intros hpf hp,
  exfalso,
  apply hpf,
  exact hp,

  
  
end