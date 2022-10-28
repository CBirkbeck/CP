import tactic --hide

/-Lemma
If $P,Q,R$ are logical statements then $P ∧ Q$ implies that 
$(P \implies R) \implies (Q \implies R) \implies R$ 
-/
lemma and_implication (P Q R : Prop) :  P ∨ Q → (P → R) → (Q → R) → R :=
begin
  intros hPoQ hPR hQR,
  cases hPoQ with hP hQ,
  { apply hPR,
    exact hP },
  { exact hQR hQ }
  
end