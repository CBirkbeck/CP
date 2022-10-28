import tactic --hide

/-
## The `split` tactic

If your lemma has the goal: 

```
⊢ P ∧ Q
```

then the  <mark style ="background-color : #ebdef0 ">`split`</mark>  tactic will turn it
into *two* goals `⊢ P` and `⊢ Q`.

-/

/-Hint : Tip
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
-/

/- Lemma
Let $P,Q$ be logical statements and assume that they are both true, then $P ∧ Q$ is 
true.
-/
lemma split_example_one (P Q : Prop) (p : P) (q : Q) : P ∧ Q :=
begin
  split,
  exact p,
  exact q,
end