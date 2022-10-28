import tactic --hide

-- Level name : Boss fight 

/-Lemma
Time for another boss fight!
-/
lemma boss_lemma_1 (P Q R : Prop) :
  (((P → Q → Q) → ((P → Q) → Q)) → R) →
  ((((P → P) → Q) → (P → P → Q)) → R) →
  (((P → P → Q) → ((P → P) → Q)) → R) → R :=
begin
  intros h1 h2 h3,
  apply h2,
  intros h1 hP h2,
  apply h1,
  intro hP,
  exact h2,



end