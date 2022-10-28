import tactic -- hide

/-Lemma
Let $P,Q$ be logical statement and assume $Q$ is true, then $P$ implies $Q$. 
-/
lemma lemma_1 (P Q : Prop) (hQ : Q) : P → Q :=
begin
  intro fish,
  exact hQ,




end

/-Hint : Why is this true?
This works because the implication `P → Q` is true unless `Q` is false and `P` is true. In this case
we are given that `Q` is always true, so the implication holds regardless of the truth value of `P`. 
-/
