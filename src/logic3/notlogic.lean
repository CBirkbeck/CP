/- Axiom : not_iff_imp_false (P : Prop) :
¬ P ↔ P → false
-/

/-


By definition `¬Q` is equivalent to `Q → false`. Lets call this result

`not_iff_imp_false (P : Prop) : ¬ P ↔ (P → false)`

-/
lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false :=iff.rfl-- hide
/-

You can convince yourself this is true by writting out the truth table for `¬ P` and `P → false`.


In order to use it, lets look at a new tactic.

## The `rw` tactic

The <mark style ="background-color : #ebdef0 ">`rw`</mark> tactic (short for <mark style ="background-color : #ebdef0 ">`rewrite`</mark>) 
is a tactic that allows you to do a substitution. For example, if we have the
assumption `h : P ↔ Q`, then `rw h` will replace the (first) `P` in the goal with `Q`. If instead you would like to 
turn the first `Q` in your goal to `P` then use `rw ←h`. (To get the `←` arrow, type `\l`).

Combining `rw` and `not_iff_imp_false`, try to prove the following:

-/

/- Hint : Hint
 Start by using `rw not_iff_imp_false,` and see what changes.
-/


/- Lemma 
If $P$ and $Q$ are propositions, and $P\implies Q$, then
$\lnot Q\implies \lnot P$. 
-/
lemma contrapositive (P Q : Prop) : (P → Q) → (¬ Q → ¬ P) :=
begin
  rw not_iff_imp_false,
  rw not_iff_imp_false,
  intro f,
  intro h,
  intro p,
  apply h,
  apply f,
  exact p,


end

/-Hint : Tip
If you want to use the `rw` tactic on one of your assumptions then this can be done.

For example, if we have `h1 : P ↔ Q` and `h2` is the assumption we want to change, then
 `rw h1 at h2` will substitute the first `P` in `h2` to `Q`. 

-/


/- Tactic : rw 

The `rw` tactic is a tactic that allows you to substitute in things. For example, if we have the
assumption `h: P ↔ Q`, then `rw h` will replace the `P`'s in the goal with `Q`'s. If instead you would like to 
turn all of the `Q`'s in your goal to `P`'s then using `rw ←h` will do this. (To get the `←` arrow, type `\l`).

Moreover, if we have `h1 : P ↔ Q` and `h2` is the assumption we want to change, then
 `rw h1 at h2` will substitute the first `P` in `h2` to `Q`. 

-/