import tactic --hide 

/-Lemma
If $P,Q$ are logical statements with respective proofs $p,q$, then $Q$ is true.
-/
lemma example_two (P Q : Prop) (p : P) (q : Q) : Q :=
begin
  exact q,


end
