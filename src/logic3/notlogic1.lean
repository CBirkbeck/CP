
import tactic --hide

lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide

/-
##  Proof by contradiction. 

In this level we will see why proofs by contradiction are valid. The key is to note that for any
logical statements `P,Q`, we have that ` P ∧ (¬ P) → Q` is true.

-/

/-Hint : Why is this true?
We have just seen that `P ∧ (¬ P)`is always false and `false → Q` is always true.
-/

/- Hint : Hint
Start by introducing your assumption and then using `exfalso`.
-/

/- Lemma 
If $P$ and $Q$ are logical statements, then
$(P\land(\lnot P))\implies Q.$
-/
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q :=
begin
  intro h,
  exfalso,
  cases h with p np,
  rw not_iff_imp_false at np,
  apply np,
  exact p,


end

/-Hint : Tip
If you want to use to use this result later on then you can type <mark style ="background-color : #ebdef0 ">`apply (contra P Q)`</mark> where `P,Q` are
the assumptions you want to use. You can also use the tactic <mark style ="background-color : #ebdef0 ">`by_contra`</mark>  
to achieve similar results. 

-/

