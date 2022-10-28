import tactic --hide

/-Lemma
A nested chain ofimplications.
-/
lemma lemma_7 (P Q: Prop) : (P → Q) → ((P → Q) → P) → Q :=
begin
  intros hPQ hPQP,
  apply hPQ,
  apply hPQP,
  exact hPQ,



end