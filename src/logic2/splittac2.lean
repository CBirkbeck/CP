import tactic --hide


/-
`split` can also be used for if and only if statements. For example, if you have `⊢ P ↔ Q` and apply
`split`, then your goal will change from 

```
⊢ P ↔ Q
```
to two goals, `⊢ P → Q` and `⊢ Q → P`.
-/

/- Lemma
Let $P$ be a logical statement, then $P$ is true if and only if $P$ is true.
-/
lemma split_examle_two (P : Prop) : P ↔ P :=
begin
  split,
  intro p,
  exact p,
  intro p,
  exact p,
end

/- Tactic : split

If your lemma has the goal: 

```
⊢ P ∧ Q
```

then the  `split` tactic will turn it into *two* goals `⊢ P` and `⊢ Q`.

Moreover, if you have an iff `P ↔ Q` then splitting it will give you two goals, `P → Q` 
(i.e "`P` only if `Q`") and `P ← Q ` (i.e "`P` if `Q`") to prove.

-/