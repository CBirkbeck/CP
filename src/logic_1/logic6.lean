import tactic --hide

/-
The goal for this level is to show that implications are transitive. 
That is, if `P → Q` and `Q → R` are true, then so is `P → R`.
-/

/- Hint: Hint
It might be useful to start by using `intros hPQ hQR hP`.
-/


/-Lemma  
If $P,Q,R$ are logical statements and $P \implies Q$ and $Q \implies R$ then $P \implies R$.
-/
lemma implicationss_are_transitive (P Q R : Prop) : (P → Q) → (Q → R) → (P → R) :=
begin
  intros hPQ hQR hP,
  apply hQR,
  apply hPQ,
  exact hP,



end