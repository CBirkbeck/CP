import tactic -- hide


/-Lemma 
If $P,Q$ are logical statements, then $P$ implies $(Q \implies P)$
-/
lemma lemma_2 (P Q : Prop) : P → Q → P :=
begin
  intro hP,
  intro hQ,
  exact hP,



end

/-Hint : Caution

Note that implies `→` is not associative: in general `P → (Q → R)` and `(P → Q) → R`
might not be equivalent. This is like subtraction on numbers -- in general
`a - (b - c)` and `(a - b) - c` might not be equal.
So if we write `P → Q → R` then we'd better know what this means.
The convention in Lean is that it means `P → (Q → R)`. If you think
about it, this means that to deduce `R` you will need to prove both `P`
and `Q`. 
-/