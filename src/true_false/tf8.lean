import tactic --hide

/-Lemma
If $P$ is a logical statement then $P$ implies $(P \implies \mathrm{false}) \implies \mathrm{false}$
-/
lemma P_to_P_to_false_to_false (P : Prop) :  P → ((P → false) → false) :=
begin
   intros hp hpf, 
   apply hpf,
   exact hp,

  
end