import tactic --hide

lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q := by {cc} --hide
lemma P_not_P_false (P : Prop) : P ∧ ¬ P → false := by {cc} --hide

-- Level name : De Morgan's laws, First Boss

/-
It is time to tackle our final bosses, the *De Morgans laws*. Use your tactics wisely!

-/

/-Hint : First Aid

You can do this only using `split`, `intro`, `apply`, `left`, `right`.

-/

/- Hint : Second Aid

If you have a goal `¬P` then `intro h` will turn your goal into `false` and give you
an extra assumption `h : P`.

-/

/- Hint : Third Aid

If you have a goal `false` and an assumption `h : ¬P`, then `apply h` will turn your goal 
into `P`.

-/

/-Lemma
If $P,Q$ are logical statements  $¬(P ∨ Q)$ is equivalent to $¬ P ∧ ¬Q$.
-/

lemma DeMorgan_one (P Q : Prop) : ¬ (P ∨ Q) ↔ ¬ P ∧ ¬ Q :=
begin
  split,
  { intro h,
    split,
    { intro hP,
      apply h,
      left, 
      exact hP },
    { intro hQ,
      apply h,
      right,
      exact hQ } },
  { intro h,
    intro h2,
    cases h,
    cases h2,
    apply h_left,
    exact h2,
    apply h_right,
    exact h2,}
    
end
