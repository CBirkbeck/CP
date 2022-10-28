import tactic --hide


/-Lemma
Let $P,Q,R$ be logical statements with $P$ implies $Q$ and $Q$ implies $R$. If $P$ is true, then so 
is $R$. 
-/
lemma implications_two (P Q R : Prop) (h1 : P → Q) (h2 : Q → R) (p : P) : R :=
begin
  exact h2 (h1 (p)),


end