import tactic --hide

-- Level name : And's

/-
Lets now look at making some more complicated logical statements. Recall that if we have two
statements `P,Q` then we can form `P ∧ Q` which is true if and only if both `P` and `Q` are true.

To help us with this, lets introduce some new tactics.

## Tactics for Level 2

## The `split` tactic

If your goal is an "and" goal:

```
⊢ P ∧ Q
```

then the `split` tactic will turn it
into *two* goals


```
⊢ P
```

and

```
⊢ Q
```

It is best practice to indicate when you are working with two goals, either by using squiggly 
brackets like this:

```
...
split,
{ working on P,
  end of proof of P },
{ working on Q,
  end of proof of Q },
```

or by using indentation like this:

```
split,
  working on P,
  end of proof of P,
working on Q,
...
```

Moreover, if you have an if and only if `↔` then splitting it will give you two goals,
`→` and `←` to prove.

## `left` and `right`

If your goal is

```
⊢ P ∨ Q
```

then `left` changes the goal to `⊢ P`. The logic is that `P` implies `P ∨ Q`
so we can `apply` this implication. Similarly `right` changes the goal to `⊢ Q`

## The `cases` tactic

`cases` is a very general-purpose tactic for "deconstructing" hypotheses.
If `h` is a hypothesis which somehow "bundles up" two pieces of information,
then `cases h with h1 h2` will make hypothesis `h` vanish and will replace it
with the two "components" which made the proof of `h` in the first place.
An example of this occurring in logic sheet 4 is `h : P ∧ Q` which is a
bundling of a proof of `P` and a proof of `Q`.

### Example

If you have a hypothesis

```
hPaQ : P ∧ Q
```

then

`cases hPaQ with hP hQ,`

will delete `hPaQ` and replace it with

```
hP : P
hQ : Q
```

You can also use it for "or's". Specifically, if you have `h : P ∨ Q` then `cases h` will
give you two goals, one where `P` is true and one where `Q` is true.


-/

example (P Q : Prop) (p : P) : P ∨ Q :=
begin
  left,
  exact p,
end

example (P Q : Prop) (p : P) (q : Q) : P ∧ Q :=
begin
  split,
  exact p,
  exact q,
end

example (P : Prop) : P ↔ P :=
begin
  split,
  intro p,
  exact p,
  intro p,
  exact p,
end

example (P Q : Prop) (hPQ: P ∧ Q) : P :=
begin 
  cases hPQ with hP hQ,
  exact hP,
end

example (P : Prop) (hp : P ∨ P) : P :=
begin
  cases hp,
  exact hp,
  exact hp,
end


/- Tactic : split

If your goal is an "and" goal:

```
⊢ P ∧ Q
```

then the `split` tactic will turn it
into *two* goals


```
⊢ P
```

and

```
⊢ Q
```
Moreover, if you have an iff `↔` then splitting it will give you two goals, `→` and `←` to prove.

-/

/- Tactic : left and right

If your goal is

```
⊢ P ∨ Q
```

then `left` changes the goal to `⊢ P`. The logic is that `P` implies `P ∨ Q`
so we can `apply` this implication. Similarly `right` changes the goal to `⊢ Q`

-/

/- Tactic : cases

If you have a hypothesis

```
hPaQ : P ∧ Q
```

then

`cases hPaQ with hP hQ,`

will delete `hPaQ` and replace it with

```
hP : P
hQ : Q
```

You can also use it for "or's". Specifically, if you have `h : P ∨ Q` then `cases h` will
give you two goals, one where `P` is true and one where `Q` is true.

-/