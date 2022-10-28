import tactic --hide

universe u --hide

-- Level name : apply tactic

/-

## The `apply` tactic

If your lemma has the following state: 

```
h : P → Q
⊢ Q
```

Here, we assume that `P` implies `Q` and our goal is to prove `Q`. Then the tactic  <mark style ="background-color : #ebdef0 ">`apply h,`</mark> 
will change our goal to `P` and leave our assumptions unchanged, i.e. your new state will be

```
h : P → Q
⊢ P
```

The `apply` tactic is useful for *arguing backwards*. It reduces the goal to a potentially easier 
goal, without changing any hypotheses.

Here's an example we have already done, but try and do it using the `apply` tactic:

-/


/- Lemma
Let $P,Q$ be logical statements. If $P$ implies $Q$ and $P$ is true, then $Q$ is true. 
-/

lemma implications_one_again (P Q : Prop) (h : P → Q) (p : P) : Q :=
begin
  apply h,
  exact p,



end

/- Tactic : apply

## The `apply` tactic

If your lemma looks like

```
h : P → Q
⊢ Q
```

then the tactic `apply h,` will change it to

```
h : P → Q
⊢ P
```

The `apply` tactic is useful for *arguing backwards*. It reduces the goal to a potentially easier 
goal, without changing any hypotheses.


-/