import tactic --hide


/-Lemma
An even more nested implications
-/
lemma lemma_8 (P Q R : Prop) : ((P → Q) → R) → ((Q → R) → P) → ((R → P) → Q) → P :=
begin
  intros h1 h2 h3,
  apply h2,
  intro hQ,
  apply h1,
  intro hP,
  exact hQ,



end