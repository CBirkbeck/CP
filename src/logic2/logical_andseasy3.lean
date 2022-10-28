import tactic --hide

/-
This level will show that `∧` is *transitive*.
-/

/-Lemma
If $P,Q,R$ are logical statements, then $P ∧ Q$ and $Q ∧ R$ imples $P ∧ R$.
-/
lemma and_transitive (P Q R: Prop) : (P ∧ Q) → (Q ∧ R) → (P ∧ R)  :=
begin
  rintro ⟨hP, hQ⟩ ⟨-, hR⟩,
  exact ⟨hP, hR⟩,
  
end

