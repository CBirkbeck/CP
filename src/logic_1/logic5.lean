import tactic -- hide

/-
If we know `P`, and we also know `P → Q`, we can deduce `Q`. 
This is called "Modus Ponens" by logicians.
-/

/- Lemma  
If $P$ is true and $P \implies Q$ is true, then $Q$ is true.
-/
lemma Modus_Ponens (P Q : Prop) : P → (P → Q) → Q :=
begin
  intros hP hPQ,
  apply hPQ,
  exact hP,



end