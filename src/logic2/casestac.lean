import tactic --hide

/-
## The `cases` tactic

`cases` is a very general-purpose tactic for "deconstructing" hypotheses.
If `h` is an assumption which somehow "bundles up" two pieces of information,
then  <mark style ="background-color : #ebdef0 ">`cases h with h1 h2`</mark>  will make the 
assumption `h` vanish and will replace it with the two "components" which made the proof of `h` in the first place.
An example of this occurring is if you have the assumption `h : P ∧ Q` which contains a 
proof of `P` and a proof of `Q`.



For example, if you have an assumption

```
h : P ∧ Q
```

then

`cases h with hP hQ,`

will delete `h` and replace it with

```
hP : P
hQ : Q
```
Try it out below.

-/


/- Lemma
If $P,Q$ are logical statements and $P ∧ Q$ is true then so is $P$.
-/

lemma cases_and_example (P Q : Prop) (h : P ∧ Q) : P :=
begin 
  cases h with hP hQ,
  exact hP,
end

/- Tactic : cases

If you have a hypothesis

```
h : P ∧ Q
```

then

`cases h with hP hQ,`

will delete `h` and replace it with

```
hP : P
hQ : Q
```

You can also use it for "or's". Specifically, if you have `h : P ∨ Q` then `cases h` will
give you two goals, one where `P` is true and one where `Q` is true.

-/