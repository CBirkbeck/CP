
import tactic --hide

lemma not_iff_imp_false (P : Prop) : ¬ P ↔ P → false := iff.rfl -- hide
lemma contra (P Q : Prop) : (P ∧ ¬ P) → Q := by {cc} --hide
lemma P_not_P_false (P : Prop) : P ∧ ¬ P → false := by {cc} --hide

/-
We proved earlier that `(P → Q) → (¬ Q → ¬ P)`. The converse,
that `(¬ Q → ¬ P) → (P → Q)` is certainly true, but trying to prove
it using the tactics we've learnt so far is impossible. 
-/

/-Hint : Why is this impossible?
 
Suppose we tried to prove this with the tactics we have seen so far, then our proof might look 
something like:
```
intro h,
intro p,
rw not_iff_imp_false at h,
rw not_iff_imp_false at h,
```
You are then left with the following state:
```
P Q : Prop,
h : (Q → false) → P → false
p : P
⊢ Q
```
and now we are stuck. In fact, using tactics such as `intro` and `apply` you will never be able to 
prove this lemma as this is not provable in "constructive logic". The key in proving this is to use 
Lean's version of a truth table!

-/

/-
In order to continue we need a new tactic.

## The `by_cases` tactic

The tactic <mark style ="background-color : #ebdef0 ">`by_cases`</mark> allows us to create Lean's 
version of a truth table.

For example, if you have `P Q : Prop`, then <mark style ="background-color : #ebdef0 ">`by_cases hp : P; by_cases hq : Q,`</mark>
will create four goals, one for each of the four  possibilities for `P,Q`, i.e., 

```md
| `P`     | `Q`     |
| --------|---------|
| `true`  | `true`  | 
| `true`  | `false` |   
| `false` | `true`  |   
| `false` | `false` |   
```

**Note the semicolon**! It means "do the next tactic to all the goals, not just the first".

-/


/- Lemma :
If $P$ and $Q$ are logical statements, then
$(\lnot Q\implies \lnot P)\implies(P\implies Q).$
-/
lemma contrapositive_2 (P Q : Prop) : (¬ Q → ¬ P) → (P → Q) :=
begin
  by_cases p : P; by_cases q : Q,
  intros h hh,
  exact q,
  intros h hh,
  exfalso,
  rw not_iff_imp_false at h,
  rw not_iff_imp_false at h,
  rw not_iff_imp_false at q,
  apply h,
  exact q,
  apply p,
  intros h hh,
  exact q,
  intros h hh,
  exfalso,
  apply P_not_P_false P,
  split,
  exact hh,
  apply h,
  exact q,


end

/-Hint : +1 Intelligence
The `by_cases` tactic works by adding the assumption `P ∨ ¬ P` and then doing `cases` on this.
The fact that `P ∨ ¬ P` is true is called the *law of the excluded middle*, and it cannot be proven 
by just using tactics such as `intro` and `apply`.
-/

/-Tactic : by_cases
 
The ``by_cases`` tactic is a simple truth table tactic: ``by_cases P`` turns one goal into two goals, 
with ``P`` is assumed in the first, and ``¬P`` in the second.

Examples
--------

1) If ``P`` is a proposition, then ``by_cases P`` turns your goal into two goals, 
and in each of your new tactic states you have one extra hypothesis. 
In the first one you have a new hypothesis ``h : P`` and in the second you have a new hypothesis ``h : ¬P``.

2) If you already have a hypothesis ``h`` then this can get a bit confusing, 
so you can also do ``by_cases hP : P``; then your new hypotheses will be ``hP : P`` and ``hP : ¬P``.
-/