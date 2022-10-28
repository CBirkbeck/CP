import tactic --hide

universe u --hide

-- Level name : intro

/-

## The `intro` tactic.

If your goal is 

```
⊢ P → Q
```

meaning we need to prove the `P` implies `Q` then the tactic <mark style ="background-color : #ebdef0 ">`intro hp,`</mark> 
will take `P` as true with proof `hp` and add `hp : P` to the assumptions. In addition, 
it turn your goal into `⊢ Q`. 

In other words the state of the lemma becomes:  

```
hp : P
⊢ Q
```

Lets look at an example that needs the `intro` tactic: 


-/ 


/-Hint : Hint
Start with `intro p`.
-/

/-Hint : Tip
 `intros` can be used to introduce
more than one assumption at once. Don't forget
to name your hypotheses, e.g. `intros hp hq` if your goal is `P → Q → R`.
-/

/- Lemma : no-side-bar
If $P$ is a logical statement then $P\implies P$.
-/
lemma implies_self (P : Prop) : P → P :=
begin
  intro p,
  exact p,


end

/- Tactic : intro

## The `intro` tactic.

If your goal is to prove the implication

```
⊢ P → Q
```

then the tactic

`intro hP,`

will add `hp : P` as an assumption (i.e. `hp` is the proof of `P`) and turn your goal into `⊢ Q`. 
In other words we get: 

```
hP : P
⊢ Q
```

Tip : `intros` can be used to introduce
more than one assumption at once. Don't forget
to name your hypotheses, e.g. `intros hP hQ` if your goal is `P → Q → R`.

-/