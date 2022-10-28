import tactic --hide


/-
You can also use `cases` when working with the `∨` ("or") connective. For example, if you have
the assumption

```
h : P ∨ Q
``` 

then `cases h with hp hq` will convert your state into the following two states:

```
P : Prop
hp : P
⊢ P
```
and

```
P : Prop
hq : Q
⊢ Q
```
one where `P` is true and one where `Q` is true.

Try this in the lemma below.
-/

/- Lemma
If $P$ is a logical statement and $P$ or $P$ is true, then $P$ is true.
-/

lemma cases_or_example (P : Prop) (hp : P ∨ P) : P :=
begin
  cases hp with hp hp,
  exact hp,
  exact hp,
end