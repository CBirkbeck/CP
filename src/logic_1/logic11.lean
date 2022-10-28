import tactic --hide

/-Lemma
This is getting silly now!
-/
lemma lemma_9 (P Q R : Prop) : ((Q → P) → P) → (Q → R) → (R → P) → P :=
begin
  intros h1 h2 h3,
  apply h1,
  intro hQ,
  apply h3,
  apply h2,
  exact hQ,



end