import tactic --hide

-- Level name : Tactics


/-

## Tactics for Level 1

## The `intro` tactic.

If your goal is

```
⊢ P → Q
```

then the tactic

`intro hP,`

will turn your tactic state into

```
hP : P
⊢ Q
```

Variant: `intros` can be used to introduce
more than one assumption at once. Don't forget
to name your hypotheses, e.g. `intros hP hQ` if your goal is `P → Q → <something else>`.

## The `exact` tactic (we have already seen this)

If your tactic state is

```
hP : P
⊢ P
```

then the tactic

`exact hP,`

will close your goal.

Note: `exact P` does not work. Don't confuse
the *statement* `P` with its *proof* `hP`.

Variant: The `assumption` tactic closes a goal if its proof is any one of the assumptions
in the tactic state. 

## The `apply` tactic

If your tactic state is

```
hPQ : P → Q
⊢ Q
```

then the tactic

`apply hPQ,`

will change it to

```
hPQ : P → Q
⊢ P
```

The `apply` tactic is useful for *arguing backwards*. It reduces the goal to a potentially easier 
goal, without changing any hypotheses.

-/


