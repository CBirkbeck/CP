import tactic --hide

/-
If you're sad that the game is over, here is some bonus content to keep you going.
-/


/-Lemma 
A long chain of implications.
-/
lemma lemma_6 (P Q R S T : Prop) : (P → R) → (S → Q) → (R → T) → (Q → R) → S → T :=
begin
  intros hPR hSQ hRT hQR hS,
  apply hRT,
  apply hQR,
  apply hSQ,
  exact hS,



end